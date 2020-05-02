package es.fdi.ucm.ucmh.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.LinkedList;
import java.util.NoSuchElementException;
import java.lang.Long;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.UserRepository;
import es.fdi.ucm.ucmh.transfer.JSONTransferMessage;
import es.fdi.ucm.ucmh.transfer.UserTransferData;
import es.fdi.ucm.ucmh.utilities.CheckUserUtils;
import es.fdi.ucm.ucmh.model.UserType;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	private static Logger LOG = LogManager.getLogger(AdminController.class);
	private static BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

	/**
	 * This is the total number of users an admin can query at a time
	 * */
	private static final int SHOW_MAX_USERS = 10;
	
	private final long FIRST_PAT_ID = 100l;
	private final long FIRST_PSY_ID = 10l;
	
	/*-----------------------------------------------------
	 * PROB-R:
	 * There would be more petitions for more admins so
	 * this variable will have race conditions when it is updated
	 * Research the use of Scopes in Spring
	 */
	private long lastPatUser;
	private long lastPsyUser;
	
	private LinkedList<User> lastListPsy;
	private LinkedList<User> lastListPat;
	//------------------------------------------------------
	
	
	@Autowired
	private EntityManager entityManager;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired // this makes httpSession always available in each method
	//PROB-1:possible problem when two different ADMINs enter at the same time
	private HttpSession session;
	
	/**
	 * It will insert a new user generating a new id for it into the database.<br>
	 * This operation will be atomic because it may risk a race condition while
	 * generating the new id.
	 * 
	 * @param theNewUser The user to insert. If it already has an id, that id will
	 * be discarded.
	 * 
	 * @return
	 * <b>true</b> if the operation was successful.<br>
	 * <b>false</b> otherwise
	 * */
	private synchronized boolean insertNewUser(User theNewUser) {
		if(!theNewUser.getType().equals(CheckUserUtils.USER_TYPE)
				&& !theNewUser.getType().equals(CheckUserUtils.PSYCHOLOGIST_TYPE)) {
			return false;
		}
		
		System.out.println(System.lineSeparator() + theNewUser.toString());
		
		userRepository.saveAndFlush(theNewUser);
		
		return true;
	}	

	private User userFromSession() {
		return (User)session.getAttribute("u");
	}

	private User refreshUser(User u) {
		return entityManager.find(User.class, u.getId());
	}

	/**
	 * It will retrieve the initial state of the admin page.
	 * The admin can create, delete and see the information about all of the users
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
	@GetMapping(value = "/{adminId}")
	public String getAdminPage(@PathVariable Long adminId, Model model) {
		User admin = CheckUserUtils.checkAndRetrieveAdmin(adminId, entityManager);
		
		if(admin == null) {
			return "404";
		}
		
		lastPatUser = FIRST_PAT_ID;
		lastPsyUser = FIRST_PSY_ID;
		
		LOG.debug("Before repositore query");
		
		lastListPat = userRepository.getUserListMoreThan(CheckUserUtils.USER_TYPE, lastPatUser, SHOW_MAX_USERS);
		lastListPsy = userRepository.getUserListMoreThan(CheckUserUtils.PSYCHOLOGIST_TYPE, lastPsyUser, SHOW_MAX_USERS);
		
		lastPatUser = lastListPat.getLast().getId() + 1;
		lastPsyUser = lastListPsy.getLast().getId() + 1;
		
		model.addAttribute("patients_list", lastListPat);
		model.addAttribute("psychologist_list", lastListPsy);
		model.addAttribute("admin", admin);
		model.addAttribute("showNum", SHOW_MAX_USERS);
		
		//PROB-1:model.addAttribute("admin", userFromSession());
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
	@RequestMapping(value = "/{adminId}/users-list-{type}-{queryType}",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<UserTransferData> getListUser(@PathVariable Long adminId, @PathVariable String type,
												@PathVariable String queryType) {
		
		List<UserTransferData> sendData = new LinkedList<UserTransferData>();
		
		if(!CheckUserUtils.checkAdmin(adminId, entityManager)) {
			//log info or warning
			System.out.println("Request rejected, user with id: " + adminId + " tried to query a whole list of users");
			return sendData;
		}
		
		LinkedList<User> queryRequest = new LinkedList<User>();
		
		type = type.toUpperCase();		
		
		//it could be an info log too
		LOG.debug("AJAX request with user type: " + type + ". Made by admin: " + adminId);
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
		
		//i couldn't make it work, that's why i use the syso 
		LOG.debug("Values of lastPatUser and lastPsyUser: (" + lastPatUser + ", " + lastPsyUser + ")");
		System.out.println("Values of lastPatUser and lastPsyUser: (" + lastPatUser + ", " + lastPsyUser + ")");

		/* We are doing all of these weird process just to make sure hibernate does less
		 * queries to the database. This is because the object User has
		 * db's attributes that are foreign key of other tables and to obtain
		 * those values it needs to do more than one query.
		 * 
		 * Another reason to do this is because the JSON string format has more information
		 * than in reality it's needs*/
		
		for(User u : queryRequest) {
			sendData.add(new UserTransferData(u)); // old logic moved into UserTransferDAta: much more readable
		}
		
		return sendData;
	}	
	
	/**
	 * It will retrieve a list of users matching the name and last name supplied.<br>
	 * Both, name and last name must not be empty strings. If one of those is an empty
	 * String, it will match with whatever pattern.<br><br>
	 * <b>NOTE:</b> The first two parameters are given from what is called a <i>"query 
	 * string parameters"</i>. That means that to obtain those values the URL must 
	 * follow this pattern:<br>
	 * \/admin/{adminId}/get-browser-result?name=somevalue&surname=somevalue
	 * 
	 * 
	 * @param userName The name of the user or users to retrieve
	 * @param lastName The surname of those users
	 * @param adminId The id of the admin performing this action
	 * 
	 * @return It will return a list in JSON format of the results.
	 * */
	@RequestMapping(value = "/{adminId}/get-browser-result",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<UserTransferData> getUsersByName(@RequestParam(required = true, name = "name") String userName,
															   @RequestParam(required = true, name = "surname") String lastName,
															   @PathVariable Long adminId) {
		
		LOG.info("Requesting user (1st) {} (last) {}", userName, lastName);
		System.out.println(System.lineSeparator() + "browser request made by admin: " + adminId + " to obtain"
				+ " the user with name: " + userName + " and last name: " + lastName);
		List<UserTransferData> sendResult = new LinkedList<UserTransferData>();

		if(!CheckUserUtils.checkAdmin(adminId, entityManager) || (userName.isEmpty() && lastName.isEmpty())) {
			//log info or warning
			System.out.println("Request rejected, user with id: " + adminId + " tried to query some users");
			return sendResult;
		}
		
		if(userName.isEmpty()) {
			userName = "%";
		}
		else if(lastName.isEmpty()){
			lastName = "%";
		}
		
		//PROB-2: set parameters from named query
		for(User u : userRepository.getUserByName(userName, lastName)) {
			sendResult.add(new UserTransferData(u));
		}
		
		
		return sendResult;
	}
	
	
	/**
	 * It will delete one user from the Data Base. You can't delete Administrators
	 * 
	 * @param admingId Id of the admin performing the delete action on the database
	 * @param userId Id of the user to be deleted
	 * 
	 * @return It will return a JSON format string telling the client if the action took place
	 * or it couldn't 
	 * The JSON string will be as the following example:<br>
	 * {
	 * 	"result":"OK" if everything went well or "Error" if don't 
	 * }
	 * */
	@PostMapping(value = "/{adminId}/user-delete-{userId}",
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody JSONTransferMessage deleteSingleUser(@PathVariable Long adminId, @PathVariable Long userId) {
		//log info
		System.out.println(System.lineSeparator() +  "delete user: " + userId + " request made by admin: " + adminId);
		
		if(!CheckUserUtils.checkAdmin(adminId, entityManager) || CheckUserUtils.checkAdmin(userId, entityManager)) {
			//log info or warning
			System.out.println("Request rejected, user with id: " + adminId + " tried to delete an user");
			return new JSONTransferMessage("Error");
		}
			
		User u = entityManager.find(User.class, userId);
			
		/*
		 * JPA doesn't have any support to create, via annotations, something like this
		 * CREATE TABLE USER {
		 * 		...
		 * 	psychologistId bigint references USER ON DELETE SET NULL
		 * 		...
		 * }
		 * 
		 * This SQL code tells the Data Base Management System to set the attribute
		 * "psychologistId" to null when the row it is referenced is deleted
		 * */
		if(target.getType() == UserType.PSY) {
			//log debug
			System.out.println(System.lineSeparator() + "Obtaining all patients of user: " + u.getId());
			//PROB-3: same as PROB-2
			LinkedList<User> patientsOf = userRepository.findPatientsOf(u);
			
			for(User patient : patientsOf) {
				patient.setPsychologist(null);
			}
		}
		
		userRepository.deleteById(userId);
		return new JSONTransferMessage("OK");
	}
	
	
	/**
	 * It will try to register a new user into the DB. The new user info must be given in JSON format,<br>
	 * example of the JSON format:<br>
	 * <pre>
	 * {
	 *    "firstName": "a",
	 *    "lastName": "s",
	 *    "mail": "a@s",
	 *    "password": "123412341234",
	 *    "phoneNumber": "112233445",
	 *    "type": "PSY"
	 * }
	 * </pre>
	 * */
	@PostMapping(value = "/{adminId}/register-user",
			produces = MediaType.APPLICATION_JSON_VALUE,
			consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(code = HttpStatus.ACCEPTED)
	public @ResponseBody JSONTransferMessage registerUser(@PathVariable Long adminId, @RequestBody String userInfo) {
		//log info
		System.out.println(System.lineSeparator() + "Register user request made by admin: " + adminId);
		LOG.info("Register user request made by admin: {}", adminId);
		LOG.info("Trying to register {}", userInfo);
		
		if(!CheckUserUtils.checkAdmin(adminId, entityManager)) {
			//log info or warning
			System.out.println("Request rejected, user with id: " + adminId + " tried to register a new user!");
			return new JSONTransferMessage("Error");
		}		
		
		/*
		 * The userInfo String must be manually parse because an inconvenience in the native
		 * parsing of Spring.
		 * The problem is that the incoming's body message will be
		 * parse and Hibernate will try to query that information and instantiate and object,
		 * but for obvious reasons it will return an empty result.
		 * 
		 * I implemented a manual parsing using Jackson library
		 * */
		
		/*
		 * ObjectMapper gives you support to transform from JSON to Objects and from Objects to
		 * JSON. It can be created with the help of a factory object too.
		 * */
		ObjectMapper mapper = new ObjectMapper();
		User theNewUser = null;
		
		try {
			theNewUser = mapper.readValue(userInfo, User.class);
		} catch (JsonProcessingException e) {
			//log debug
			System.out.println(System.lineSeparator() + "Some error ocurred while trying to parse JSON input!");
			e.printStackTrace();
			return new JSONTransferMessage("Error");
		}
		
		if(theNewUser == null) {
			//log debug
			System.out.println(System.lineSeparator() + "Possible error not detected before!");
			return new JSONTransferMessage("Error");
		}		
		
		System.out.println(System.lineSeparator() + theNewUser.toString());
		boolean result = insertNewUser(theNewUser);
		
		System.out.println(result ? "Ok" : "Error");
		
	/*
	********************************UNDER TESTING************************************

	@Transactional
	public @ResponseBody JSONTransferMessage registerUser(@RequestBody UserTransferData userInfo) {
		//log info
		LOG.info("Trying to register {}", userInfo);
		User u = new User();
		u.setFirstName(userInfo.firstName);
		u.setLastName(userInfo.lastName);
		u.setMail(userInfo.mail);
		u.setPhoneNumber(userInfo.phoneNumber);
		u.setType(userInfo.type);
		u.setPsychologist(null);
		u.setType(UserType.valueOf(userInfo.type));
		u.setPassword(encoder.encode(userInfo.password));

		// validate fields here!
		boolean result = true;

	}
	*/
		return new JSONTransferMessage(result ? "Ok" : "Error");
	}
}
