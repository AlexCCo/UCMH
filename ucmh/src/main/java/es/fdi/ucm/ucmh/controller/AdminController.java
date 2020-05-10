package es.fdi.ucm.ucmh.controller;

import java.util.List;
import java.util.LinkedList;
import java.lang.Long;

import org.springframework.messaging.simp.SimpMessagingTemplate;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;

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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import es.fdi.ucm.ucmh.controller.Auxiliary.PageCache;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.UserRepository;
import es.fdi.ucm.ucmh.transfer.JSONTransferMessage;
import es.fdi.ucm.ucmh.transfer.UserTransferData;
import es.fdi.ucm.ucmh.model.UserType;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	private static Logger log = LogManager.getLogger(AdminController.class);
	private static BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

	/**
	 * This is the total number of users an admin can query at a time
	 * */
	private static final int SHOW_MAX_USERS = 10;
	private static final String SESSION_ATTRIBUTE = "PageCache";
			
	@Autowired
	private EntityManager entityManager;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired // this makes httpSession always available in each method
	//PROB-1:possible problem when two different ADMINs enter at the same time
	private HttpSession session;

	
	
	private User userFromSession() {
		return (User)session.getAttribute("u");
	}

	private User refreshUser(User u) {
		return entityManager.find(User.class, u.getId());
	}
	
	private void storeInAdminSession(PageCache lastQuery) {
		session.setAttribute(SESSION_ATTRIBUTE, lastQuery);
	}
	
	private PageCache retrieveAdminPageCache() {
		return (PageCache) session.getAttribute(SESSION_ATTRIBUTE);
	}
	
	
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
		
		
		return false;
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
		PageCache userQueryList = new PageCache(SHOW_MAX_USERS);

		model.addAttribute("patients_list", userQueryList.getListPATMore(entityManager));
		model.addAttribute("psychologist_list", userQueryList.getListPSYMore(entityManager));
		model.addAttribute("admin", admin);
		model.addAttribute("showNum", SHOW_MAX_USERS);
		
		storeInAdminSession(userQueryList);
		
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
	@RequestMapping(value = "/users-list-{type}-{queryType}",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<UserTransferData> getListUser(@PathVariable String type,
												@PathVariable String queryType) {
		
		List<UserTransferData> sendData = new LinkedList<UserTransferData>();
		LinkedList<User> queryRequest = new LinkedList<User>();
		User admin = userFromSession(); 
		PageCache userListCache = retrieveAdminPageCache();
		
		type = type.toUpperCase();		
		
		//it could be an info log too
		log.info("AJAX request with user type: {}. Made by admin: {}", type, admin.getId());
	
		if(type.equals("PAT") && queryType.equals("more")) {
			queryRequest = userListCache.getListPATMore(entityManager);
		}
		else if (type.equals("PAT") && queryType.equals("less")) {
			queryRequest = userListCache.getListPATLess(entityManager);
		}
		else if(type.equals("PSY") && queryType.equals("more")) {
			queryRequest = userListCache.getListPSYMore(entityManager);
		}
		else if (type.equals("PSY") && queryType.equals("less")) {
			queryRequest = userListCache.getListPSYLess(entityManager);
		}	

		for(User u : queryRequest) {
			sendData.add(new UserTransferData(u)); 
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
	@PostMapping(value = "/user-delete-{userId}",
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody JSONTransferMessage deleteSingleUser(@PathVariable Long userId) {
		User admin = userFromSession();
		
		log.info("delete user: {} request made by admin: {}", userId, admin.getId());

		User u = entityManager.find(User.class, userId);
		
		if(u == null) {
			log.debug("Request rejected, admin with id: {} tried to delete user that does not exist", admin.getId());
			return new JSONTransferMessage("Error");
		}
		
		if(u.getType() == UserType.ADMIN) {
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
			//log debug
			log.debug("Obtaining all patients of user: " + u.getId());
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
	@PostMapping(value = "/register-user",
			produces = MediaType.APPLICATION_JSON_VALUE,
			consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(code = HttpStatus.ACCEPTED)
	public @ResponseBody JSONTransferMessage registerUser(@RequestBody String userInfo) {
		log.info("Register user request made by admin: {}, registering {}", userFromSession().getId(), userInfo);
		
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
			log.warn("Some error ocurred while trying to parse JSON input!");
			e.printStackTrace();
			return new JSONTransferMessage("Error");
		}
		
		if(theNewUser == null) {
			//log debug
			log.warn("Possible error not detected before!");
			return new JSONTransferMessage("Error");
		}		
		
		log.debug("Debugging new created object: {}", theNewUser.toString());
		boolean result = insertNewUser(theNewUser);
		
		log.debug(result ? "Ok" : "Error");
		
	/*
	********************************UNDER TESTING************************************

	@Transactional
	public @ResponseBody JSONTransferMessage registerUser(@RequestBody UserTransferData userInfo) {
		//log info
		log.info("Trying to register {}", userInfo);
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
	

	@Autowired
	private SimpMessagingTemplate messagingTemplate;
	
	public static class DemoMessage {
		public String msg;
	}

	@PostMapping("/msg/{id}")
	@ResponseBody
	public String sendMsg(@PathVariable long id, @RequestBody DemoMessage message) {

		User u = entityManager.find(User.class, id);
		messagingTemplate.convertAndSend("/user/"+u.getMail()+"/queue/updates", "{ \"text\": \"" + message.msg + "\"}");

		return "ok";
	}

}
