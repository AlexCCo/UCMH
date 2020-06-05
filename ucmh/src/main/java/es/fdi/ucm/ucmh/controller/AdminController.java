
package es.fdi.ucm.ucmh.controller;

import java.util.List;
import java.util.LinkedList;
import java.lang.Long;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.access.annotation.Secured;
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

import es.fdi.ucm.ucmh.controller.auxiliary.PagePATCache;
import es.fdi.ucm.ucmh.controller.auxiliary.PagePSYCache;
import es.fdi.ucm.ucmh.model.Message;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.UserQueryStringNames;
import es.fdi.ucm.ucmh.transfer.JSONTransferMessage;
import es.fdi.ucm.ucmh.transfer.UserTransferData;
import es.fdi.ucm.ucmh.model.UserType;

/**
 *
 * @author Alejandro Cancelo Correia
 * */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	private static Logger log = LogManager.getLogger(AdminController.class);
	private static BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

	/**
	 * This is the total number of users an admin can query at a time
	 * */
	private static final int SHOW_MAX_USERS = 10;
	private static final String SESSION_ATTRIBUTE_PAT = "PageCachePAT";
	private static final String SESSION_ATTRIBUTE_PSY = "PageCachePSY";
			
	@Autowired
	private EntityManager entityManager;
		
	@Autowired // this makes httpSession always available in each method
	private HttpSession session;

	
	
	private User userFromSession() {
		return (User)session.getAttribute("u");
	}

	private User refreshUser(User u) {
		return entityManager.find(User.class, u.getId());
	}
		
	
	/**
	 * This method will query a list of users that match the first name
	 * @param userFirstName A String representing the user's first name
	 * @param lastName A String representing the user's last name
	 * @return A list of users
	 * */
	private List<User> getUserByName(String userName, String lastName) {
		TypedQuery<User> query = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_NAME, User.class);
		
		query.setParameter("userFirstName", userName);
		query.setParameter("userLastName", lastName);
		
		return query.getResultList();
	}
	

	
	private List<Message> getMessageList(long id) {
		TypedQuery<Message> query = entityManager.createNamedQuery(UserQueryStringNames.GET_MESSAGES_LIST, Message.class);
		
		query.setParameter("senderId", id);
		
		return query.getResultList();
	}
	
	/**
	 * This query will retrieve a list of patients of the given psychologist
	 * @param psychologistId The id of psychologist to obtain patients of
	 * @return A list of patients
	 * */
	private List<User> findPatientsOf(long psychologistId) {
		TypedQuery<User> query = entityManager.createNamedQuery(UserQueryStringNames.GET_PATIENTS_OF, User.class);
		
		query.setParameter("psychologistId", psychologistId);
		
		return query.getResultList();
	}

	/**
	 * It will insert a new user generating a new id for it into the database.<br>
	 * 
	 * @param theNewUser The user to insert. If it already has an id, that id will
	 * be discarded.
	 * 
	 * @return
	 * It will return a confirmation or error message
	 * */
	@Transactional
	private String insertNewUser(User theNewUser) {
		TypedQuery<User> query = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
		String encodedPassword = String.format("{bcrypt}%s",encoder.encode(theNewUser.getPassword()));
		
		theNewUser.setPassword(encodedPassword);
		
		try {
			query.getSingleResult();
		} catch (NoResultException e) {}
		  catch (Exception e) {
			return "Error: mail already exists!";
		}
		
		try {
			entityManager.persist(theNewUser);
			entityManager.flush();
			entityManager.clear();
		} catch (Exception e) {
			return "Error: something went wrong!";
		}
		return "User added!";
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
	@Secured(value = "ROLE_ADMIN")
	@GetMapping(value = "/")
	public String getAdminPage(Model model) {
		log.debug("Getting admin page");
		
		User admin = userFromSession();
		PagePSYCache psychologistQueryList = new PagePSYCache(SHOW_MAX_USERS);
		PagePATCache patientQueryList = new PagePATCache(SHOW_MAX_USERS);
		
		model.addAttribute("patients_list", patientQueryList.getListMore(entityManager));
		model.addAttribute("psychologist_list", psychologistQueryList.getListMore(entityManager));
		model.addAttribute("admin", admin);
		model.addAttribute("showNum", SHOW_MAX_USERS);
		
		session.setAttribute(SESSION_ATTRIBUTE_PAT, patientQueryList);
		session.setAttribute(SESSION_ATTRIBUTE_PSY, psychologistQueryList);

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
	@Secured(value = "ROLE_ADMIN")
	@RequestMapping(value = "/users-list-{type}-{queryType}",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<UserTransferData> getListUser(@PathVariable String type,
												@PathVariable String queryType) {
		
		List<UserTransferData> sendData = new LinkedList<UserTransferData>();
		User admin = userFromSession(); 

		type = type.toUpperCase();		
		
		//it could be an info log too
		log.info("AJAX request with user type: {}. Made by admin: {}", type, admin.getId());
	
		if(type.equals("PAT")) {
			PagePATCache userListCache = (PagePATCache) session.getAttribute(SESSION_ATTRIBUTE_PAT);
			
			if(queryType.equals("more")) {
				sendData = userListCache.getListMore(entityManager);
			}
			else if(queryType.equals("less")) {
				sendData = userListCache.getListLess(entityManager);
			}
		}
		else if(type.equals("PSY")) {
			PagePSYCache userListCache = (PagePSYCache) session.getAttribute(SESSION_ATTRIBUTE_PSY);
			
			if(queryType.equals("more")) {
				sendData = userListCache.getListMore(entityManager);
			}
			else if (type.equals("PSY") && queryType.equals("less")) {
				sendData = userListCache.getListLess(entityManager);
			}	
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
	 * \/admin//get-browser-result?name=somevalue&surname=somevalue
	 * 
	 * 
	 * @param userName The name of the user or users to retrieve
	 * @param lastName The surname of those users
	 * @param adminId The id of the admin performing this action
	 * 
	 * @return It will return a list in JSON format of the results.
	 * */
	@Secured(value = "ROLE_ADMIN")
	@RequestMapping(value = "/get-browser-result",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<UserTransferData> getUsersByName(@RequestParam(required = true, name = "name") String userName,
															   @RequestParam(required = true, name = "surname") String lastName) {
		User admin = userFromSession();
		
		log.info("Requesting user (1st) {} (last) {}", userName, lastName);
		log.info("browser request made by admin: {} to obtain the user with name: {}"
				+ " and last name: {}", admin.getId(), userName, lastName);

		List<UserTransferData> sendResult = new LinkedList<UserTransferData>();
		
		
		if(userName.isEmpty()) {
			userName = "%";
		}
		
		if(lastName.isEmpty()){
			lastName = "%";
		}
		//PROB-2: Validate userName and lastName
		for(User u : getUserByName("%" + userName + "%", "%" + lastName + "%")) {
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
	@Secured(value = "ROLE_ADMIN")
	@PostMapping(value = "/user-delete-{userId}",
			produces = MediaType.APPLICATION_JSON_VALUE)
	@Transactional
	public @ResponseBody JSONTransferMessage deleteSingleUser(@PathVariable Long userId) {
		User admin = userFromSession();
		
		log.info("delete user: {} request made by admin: {}", userId, admin.getId());

		User u = entityManager.find(User.class, userId);
		
		if(u == null) {
			log.debug("Request rejected, admin with id: {} tried to delete user that does not exist", admin.getId());
			return new JSONTransferMessage("Error");
		}
		
		TypedQuery<Long> totalAdmins = entityManager.createNamedQuery(UserQueryStringNames.GET_ADMIN_TOTAL_NUMBER, Long.class);
		
		
		if(u.getType() == UserType.ADMIN && totalAdmins.getSingleResult() <= 1) {
			log.debug("Request rejected, admin with id: {} tried to delete another admin", admin.getId(), userId);
			return new JSONTransferMessage("Error");
		}
					
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
		if(u.getType() == UserType.PSY) {
			log.debug("Obtaining all patients of user: " + u.getId());
			List<User> patientsOf = findPatientsOf(u.getId());
			
			for(User patient : patientsOf) {
				patient.setPsychologist(null);
				entityManager.persist(patient);
			}
		}
		
		
		//we will delete all messages sent and received by User u because if we don't
		//it will leave an inconsistent DataBase
		List<Message> userMessages = getMessageList(u.getId());

		User userMsg;
		for(Message msg : userMessages) {
			if(msg.getTo().getId() == u.getId()) {
				userMsg = entityManager.find(User.class, msg.getFrom().getId());
				userMsg.deleteMessageSent(msg);
			}
			else {
				userMsg = entityManager.find(User.class, msg.getTo().getId());
				userMsg.deleteMessageReceived(msg);
			}

			msg.setFrom(null);
			msg.setTo(null);
			msg.setEstadoAnimo(null);
			
			entityManager.persist(msg);
			entityManager.persist(userMsg);
		}
				
		
		for(Message msg : userMessages) {
			entityManager.remove(msg);
		}
		
		entityManager.remove(u);
		entityManager.clear();
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
	@Secured(value = "ROLE_ADMIN")
	@PostMapping(value = "/register-user",
			produces = MediaType.APPLICATION_JSON_VALUE,
			consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(code = HttpStatus.ACCEPTED)
	@Transactional
	public @ResponseBody JSONTransferMessage registerUser(@Valid @RequestBody User userInfo) {
		log.info("Register user request made by admin: {}, registering {}", userFromSession().getId(), userInfo);
		log.debug("Debugging obtained object: {}", userInfo.toString());
		String result = insertNewUser(userInfo);
		
		return new JSONTransferMessage(result);
	}
	
}
