package es.fdi.ucm.ucmh.controller;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.lang.Long;

import javax.persistence.EntityManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.UserRepository;
import es.fdi.ucm.ucmh.transfer.JSONTransferMessage;
import es.fdi.ucm.ucmh.transfer.UserTransferData;

@Controller
public class AdminController {
	private static Logger log = LogManager.getLogger(AdminController.class);
	private static final int SHOW_MAX_USERS = 10;
	
	private final long FIRST_PAT_ID = 30l;
	private final String PATIENT_TYPE = "USER";
	
	private final long FIRST_PSY_ID = 10l;
	private final String PSYCHOLOGIST_TYPE = "PSY";
	
	private long lastPatUser;
	private long lastPsyUser;
	
	private LinkedList<User> lastListPsy;
	private LinkedList<User> lastListPat;
	@Autowired
	private EntityManager entityManager;
	
	@Autowired
	private UserRepository userRepository;
	
	/**
	 * It will retrieve the initial state of the admin page.
	 * The adming can create, delete and see the information about all of the users
	 * registered in the application
	 * 
	 * @param adminId The id of the admin, require to load the corresponding HTML page
	 * @param model A model given by Spring MVC. It is use to store information needed
	 * by the template engine to render the corresponding view, in this case, our HTML
	 * page
	 * 
	 * @return It returns a string that indicates to the Spring's ViewResolvers what
	 * view (in this case HTML page) we want to render and send to our client
	 * */
	@GetMapping(value = "/admin/{adminId}")
	public String getAdminPage(@PathVariable Long adminId, Model model) {
		User admin = entityManager.find(User.class, adminId);

		if(admin == null) {
			return "404";
		}
		
		lastPatUser = FIRST_PAT_ID;
		lastPsyUser = FIRST_PSY_ID;
		
		log.debug("Before repositore query");
		
		lastListPat = userRepository.getUserListMoreThan(PATIENT_TYPE, lastPatUser, SHOW_MAX_USERS);
		lastListPsy = userRepository.getUserListMoreThan(PSYCHOLOGIST_TYPE, lastPsyUser, SHOW_MAX_USERS);
		
		lastPatUser += SHOW_MAX_USERS;
		lastPsyUser += SHOW_MAX_USERS;
		
		model.addAttribute("patients_list", lastListPat);
		model.addAttribute("psychologist_list", lastListPsy);
		model.addAttribute("admin", admin);
		
		return "admin";
	}
	
	
	/**
	 * This method will show the next or previous SHOW_MAX_USERS users needed by the admin
	 * 
	 * @param adminId The id of the admin request those users
	 * @param type The type of the user requested
	 * @param queryType Indicates if the admin requested the next 10 users or the previous 10
	 * 
	 * @return A list of intermediate users object where you can only see the names, e-mails, phone 
	 * numbers and the name of their psychologists
	 * 
	 * @see SHOW_MAX_USERS
	 * */
	@RequestMapping(value = "/admin/{adminId}/users-list-{type}-{queryType}",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<UserTransferData> getListUser(@PathVariable Long adminId, @PathVariable String type,
												@PathVariable String queryType) {
		LinkedList<User> queryRequest = new LinkedList<User>();
		List<UserTransferData> sendData = new ArrayList<UserTransferData>();
		boolean moreOrlessFlag = true; //more = true, less = false
		type = type.toUpperCase();
		
		log.debug("AJAX request with user type: " + type + ". Made by admin: " + adminId);
		System.out.println("AJAX request with user type: " + type + ". Made by admin: " + adminId);
		try {
			if(type.equals("USER") && queryType.equals("more")) {
				queryRequest = userRepository.getUserListMoreThan(type, lastPatUser, SHOW_MAX_USERS);
				
				if(!queryRequest.isEmpty()) {
					lastPatUser =  queryRequest.size() < SHOW_MAX_USERS ? lastPatUser : queryRequest.getLast().getId() + 1;
					lastListPat = queryRequest;
				}
				else {
					queryRequest = lastListPat;
				}
			}
			else if (type.equals("USER") && queryType.equals("less")) {
				lastPatUser = lastListPat.getFirst().getId();
				queryRequest = userRepository.getUserListLessThan(type, lastPatUser, SHOW_MAX_USERS);
				
				if(queryRequest.isEmpty()) {
					lastPatUser = lastListPat.getLast().getId() + 1;
					queryRequest = lastListPat;
				}
				else {
					lastListPat = queryRequest;
				}
			}
			else if(type.equals("PSY") && queryType.equals("more")) {
				queryRequest = userRepository.getUserListMoreThan(type, lastPsyUser, SHOW_MAX_USERS);
				if(!queryRequest.isEmpty()) {
					lastPsyUser = queryRequest.size() < SHOW_MAX_USERS ? lastPsyUser : queryRequest.getLast().getId() + 1;
					lastListPsy = queryRequest;
				}
				else {
					queryRequest = lastListPsy;
				}
			}
			else if (type.equals("PSY") && queryType.equals("less")) {
				lastPsyUser = lastListPsy.getFirst().getId();
				queryRequest = userRepository.getUserListLessThan(type, lastPsyUser, SHOW_MAX_USERS);
				
				if(queryRequest.isEmpty()) {
					lastPsyUser = lastListPsy.getLast().getId() + 1;
					queryRequest = lastListPsy;
				}
				else {
					lastListPsy = queryRequest;
				}
			}
		} catch(NoSuchElementException ex) {
			System.out.println(System.lineSeparator() + "Execption caugth!!");
			if(type.equals("USER")) {
				queryRequest = lastListPat;
			}
			else if(type.equals("PSY")) {
				queryRequest = lastListPsy;
			}
			else {
				return sendData;
			}
		}	
		
		log.debug("Values of lastPatUser and lastPsyUser: (" + lastPatUser + ", " + lastPsyUser + ")");
		System.out.println("Values of lastPatUser and lastPsyUser: (" + lastPatUser + ", " + lastPsyUser + ")");

		/* We are doing all of these weird process just to make sure hibernate does less
		 * queries to the database. This is because the object User has
		 * db's attributes that are foreign key of other tables and to obtain
		 * those values it needs to do more than one query.
		 * 
		 * Another reason to do this is because the JSON string format has more information
		 * than in reality it's needs*/
		
		for(User u : queryRequest) {
			if(u.getPsychologist() == null) {
				sendData.add(new UserTransferData(u.getId(), u.getFirstName(), u.getLastName(),
						u.getMail(), u.getPhoneNumber(), ""));
			}
			else {
				sendData.add(new UserTransferData(u.getId(), u.getFirstName(), u.getLastName(),
						u.getMail(), u.getPhoneNumber(),
						u.getPsychologist().getFirstName() + ", " +u.getPsychologist().getLastName()));
			}
		}
		
		return sendData;
	}	
	
	@RequestMapping(value = "/admin/{adminId}/user?name={userName}",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody User getSingleUser(@PathVariable Long adminId, @PathVariable String userName) {
		
		
		return null;
	}
	
	
	/**
	 * It will delete one user from the Data Base. You can't delete Administrators
	 * 
	 * @param admingId Id of the admin performing the delete action on the database
	 * @param userId Id of the user to be deleted
	 * 
	 * @return It will return a JSON format string telling the client if the action took place
	 * or it couldn't 
	 * The JSON string will be as the following example:
	 * {
	 * 	"result":"OK" if everything went well or "Error" if don't 
	 * }
	 * */
	@PostMapping(value = "/admin/{adminId}/user-delete-{userId}",
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody JSONTransferMessage deleteSingleUser(@PathVariable Long adminId, @PathVariable Long userId) {
		System.out.println(System.lineSeparator() +  "delete user: " + userId + " request made by admin: " + adminId);
		
		User u = entityManager.find(User.class, userId);
		
		if(u == null || u.getType().equals("ADMIN")) {
			return new JSONTransferMessage("Error");
		}
		
		u = entityManager.find(User.class, userId);
		
		/*
		 * JPA doesn't have any support to create, via annotations, somethin like this
		 * CREATE TABLE USER {
		 * 		...
		 * 	psychologistId bigint references USER ON DELETE SET NULL
		 * 		...
		 * }
		 * 
		 * This SQL code tells the Data Base Management System to set the attribute
		 * "psychologistId" to null when the row it is referenced is deleted
		 * */
		if(u.getType().equals(PSYCHOLOGIST_TYPE)) {
			System.out.println(System.lineSeparator() + "Obtaining all patients of user: " + u.getId());
			LinkedList<User> patientsOf = userRepository.findPatientsOf(u);
			
			for(User patient : patientsOf) {
				patient.setPsychologist(null);
			}
		}
		
		userRepository.deleteById(userId);
		return new JSONTransferMessage("OK");
	}
}
