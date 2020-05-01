package es.fdi.ucm.ucmh.controller;

import java.util.List;
import java.util.ArrayList;

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

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.UserType;
import es.fdi.ucm.ucmh.transfer.JSONTransferMessage;
import es.fdi.ucm.ucmh.transfer.UserTransferData;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	private static Logger LOG = LogManager.getLogger(AdminController.class);
	/**
	 * This is the total number of users an admin can query at a time
	 * */
	private static final int SHOW_MAX_USERS = 10;
	
	@Autowired
	private EntityManager entityManager;
	
	@Autowired // this makes httpSession always available in each method
	private HttpSession session;

	private static BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

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
	@GetMapping()
	public String getAdminPage(Model model) {
		
		model.addAttribute("patients_list", entityManager.createQuery(
			"SELECT u FROM User u WHERE u.type = 'USER'").getResultList());
		model.addAttribute("psy_list", entityManager.createQuery(
			"SELECT u FROM User u WHERE u.type = 'PSY'").getResultList());
		model.addAttribute("admin", userFromSession());	
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
	 * numbers and the name of their psys
	 * 
	 * @see SHOW_MAX_USERS
	 * */
	@RequestMapping(value = "/users-list-{type}-{queryType}",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<UserTransferData> getListUser(@PathVariable UserType type,
												@PathVariable String queryType) {
		
		User requester = userFromSession();
		LOG.info("AJAX request with user type: " + type + ". Made by admin: " + requester.getId());

		// this would be better in a NamedQuery. Note that it *is* safe *only* because type is a UserType
		List<User> result = entityManager.createQuery(
			"SELECT u FROM User u WHERE u.type = '" + type + "'",
			User.class).getResultList();


		List<UserTransferData> toTransfer = new ArrayList<>();
		for(User u : result) {
			toTransfer.add(new UserTransferData(u)); // old logic moved into UserTransferDAta: much more readable
		}
		
		return toTransfer;
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
	@RequestMapping(value = "/get-browser-result",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<UserTransferData> getUsersByName(
			@RequestParam(required = true, name = "name") String userName,
			@RequestParam(required = true, name = "surname") String lastName) {
		LOG.info("Requesting user (1st) {} (last) {}", userName, lastName);
		List<UserTransferData> sendResult = new ArrayList<>();

		userName = userName.isEmpty() ? "%" : "%" + userName + "%";
		lastName = lastName.isEmpty() ? "%" : "%" + lastName + "%";
		
		List<UserTransferData> toTransfer = new ArrayList<>();
		for(User u : entityManager.createNamedQuery("User.getUserByName", User.class)
			.setParameter("userFirstName", userName)
			.setParameter("userLastName", lastName)
			.getResultList()) {

			toTransfer.add(new UserTransferData(u));
		}

		return toTransfer;
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
	@Transactional
	public @ResponseBody JSONTransferMessage deleteSingleUser(@PathVariable Long userId) {
		
		User target = entityManager.find(User.class, userId);
		if (target.getType() == UserType.PSY) {
			for (User patient : entityManager.createNamedQuery("User.findPatientsOf", User.class)
				.setParameter("psychologistId", target.getId())
				.getResultList()) {
					patient.setPsychologist(null);
			}
		}
		target.setPsychologist(null);
		entityManager.remove(target);

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

		return new JSONTransferMessage(result ? "Ok" : "Error");
	}
}
