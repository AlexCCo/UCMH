
package es.fdi.ucm.ucmh.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import es.fdi.ucm.ucmh.controller.MessageController;
import es.fdi.ucm.ucmh.controller.auxiliary.AuxiliaryStringPaths;
import es.fdi.ucm.ucmh.controller.auxiliary.MessageQueryObject;
import es.fdi.ucm.ucmh.model.Message;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.UserQueryStringNames;
import es.fdi.ucm.ucmh.transfer.MessageTransferData;


/**
 * 
 * @author Alejandro Cancelo Correia
 * */
@Controller
public class MessageController{
private static final Logger log = LogManager.getLogger(MessageController.class);
	
	@Autowired
	private EntityManager entityManager;
	
	@Autowired
	private HttpSession session;
	
	private User userFromSession() {
		return (User)session.getAttribute("u");
	}
	
	/**
	 * It will retrieve the basic template where you can see your incoming messages and chat with
	 * anyone you want in real time
	 * 
	 * @param model A model given by Spring MVC. It is use to store information needed
	 * by the template engine to render the corresponding view, in this case, our HTML
	 * page
	 * @return 
	 * It returns a string that indicates to the Spring's ViewResolvers what
	 * view (in this case HTML page) we want to render and send to our client
	 * */
	@Secured(value = "ROLE_ADMIN")
	@GetMapping(value = "/admin/messages")
	public String getAdminMessagesTemplate(Model model) {
		
		session.setAttribute("msgURI", AuxiliaryStringPaths.ADMIN_SEND_MESSAGE_PATH);
		
		return processPetition(model);
	}

	@Secured(value = "ROLE_PSY")
	@GetMapping(value = "/psy/messages")
	public String getPsyMessagesTemplate(Model model) {
		
		session.setAttribute("msgURI", AuxiliaryStringPaths.PSY_SEND_MESSAGE_PATH);
		
		return processPetition(model);
	}

	@Secured(value = "ROLE_PAT")
	@GetMapping(value = "/user/messages")
	public String getUserMessagesTemplate(Model model) {
		
		session.setAttribute("msgURI", AuxiliaryStringPaths.USER_SEND_MESSAGE_PATH);
		
		return processPetition(model);
	}
	
	/**
	 * 
	 * */
	private String processPetition(Model model) {

		User u = userFromSession();
		
		log.info("GET request made by: {}", u.getId());
		model.addAttribute("user", u);
		
		TypedQuery<MessageQueryObject> query = entityManager.createNamedQuery(UserQueryStringNames.GET_SENDER_OF_MESSAGE_LIST, MessageQueryObject.class);		
		
		query.setParameter("senderId", u.getId());
		
		for(MessageQueryObject m : query.getResultList()) {
			log.debug(m.getUser().getId());
		}
		
		model.addAttribute("receive_messages", query.getResultList());
		
		session.setAttribute("userMail", u.getMail());
		
		return "mensajesReEn";
	}
	
	@Autowired
	private SimpMessagingTemplate messagingTemplate;
	
	private static class DemoMessage {
		public String msg;
		public String time;
	}
	
	/**
	 * It will store the message sent into database and forward it to websocket broker for him to
	 * give it to the correct destination
	 * 
	 * @param message A java object representing the sender message
	 * @param id Id of the user we want to received the message
	 * */
	@Secured(value = "ROLE_ADMIN")
	@PostMapping(value = "/admin/msg/{userMail}", consumes = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE},
			produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	@Transactional
	public String sendMsgFromAdmin(@PathVariable String userMail, @RequestBody DemoMessage message) {
		return processMessageSend(userMail, message);
	}

	@Secured(value = "ROLE_PSY")
	@PostMapping(value = "/psy/msg/{userMail}", consumes = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE},
			produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	@Transactional
	public String sendMsgFromPsy(@PathVariable String userMail, @RequestBody DemoMessage message) {
		return processMessageSend(userMail, message);
	}
	
	@Secured(value = "ROLE_PAT")
	@PostMapping(value = "/user/msg/{userMail}", consumes = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE},
			produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	@Transactional
	public String sendMsgFromUser(@PathVariable String userMail, @RequestBody DemoMessage message) {
		return processMessageSend(userMail, message);
	}
	
	/**
	 * 
	 * */
	private String processMessageSend(String userMail, DemoMessage message) {
		TypedQuery<User> userQuery = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
		
		userQuery.setParameter("mail", userMail);
		
		User u;
		try{
			u = userQuery.getSingleResult();
		}catch(Exception e){
			return null;
		}
		
		
		User sender = userFromSession();
		String[] obtainedTime = message.time.split("-");
		int[] intTime = new int[obtainedTime.length];
		
		log.debug("message.msg: {} \\\\ message.time: {}", message.msg, message.time);
		
		Message body = new Message();
		//obtainedTime.length will always be 5
		for(int i = 0; i < obtainedTime.length; i++) {
			intTime[i] = Integer.parseInt(obtainedTime[i]);
		}
		
		LocalDateTime receivedTime = LocalDateTime.of(intTime[0], intTime[1], intTime[2], intTime[3], intTime[4]); 
		
		body.setFrom(sender);
		body.setTo(u);
		body.setText(message.msg);
		body.setDate(receivedTime);
		body.setDirty(false);
		
		try {
			entityManager.persist(body);
			entityManager.flush();
			entityManager.clear();
		}catch (Exception e) {
			return "Error";
		}
		
		String destination = String.format("/user/%s/queue/updates", u.getMail());
		String textToSent = String.format("{\"name\":\"%s,%s\",\"from\":\"%s\",\"text\": \"%s\",\"time\":\"%s\"}",
												sender.getFirstName(), sender.getLastName(), sender.getMail(),
												message.msg, message.time);
		messagingTemplate.convertAndSend(destination, textToSent);
		return "ok";
	}
	
	/**
	 * It will retrieve all list of messages between the user that triggers this method
	 * and the requested user. The returned list will be ordered by dates in ascending
	 * order.
	 * 
	 * @param requestedUserMail A string representing a mail belonged by the user you
	 * want to query messages from
	 * 
	 * @return A list of MessageTransferData containing all the messages between the users
	 * 
	 * */
	@Secured(value = "ROLE_ADMIN")
	@GetMapping(value = "/admin/msg/recv", produces = {MediaType.APPLICATION_JSON_VALUE})
	@Transactional
	public @ResponseBody List<MessageTransferData> historyMessageRequestedFor(@RequestParam String requestedUserMail) {
		return processHistoryRequest(requestedUserMail);
	}
	
	@Secured(value = "ROLE_PSY")
	@GetMapping(value = "/psy/msg/recv", produces = {MediaType.APPLICATION_JSON_VALUE})
	@Transactional
	public @ResponseBody List<MessageTransferData> psyHistoryMessageRequestedFor(@RequestParam String requestedUserMail) {
		return processHistoryRequest(requestedUserMail);
	}
	
	@Secured(value = "ROLE_PAT")
	@GetMapping(value = "/user/msg/recv", produces = {MediaType.APPLICATION_JSON_VALUE})
	@Transactional
	public @ResponseBody List<MessageTransferData> userHistoryMessageRequestedFor(@RequestParam String requestedUserMail) {
		return processHistoryRequest(requestedUserMail);
	}

	/**
	 * 
	 * */
	private List<MessageTransferData> processHistoryRequest(String requestedUserMail) {
		User u = userFromSession();
		
		log.info("Request obtain message list in a conversation made by admin {}, "
				+ "user email from the conversation with the admin {}", u.getId(), requestedUserMail);
		
		//we employ this method because for some reason, using
		//"UPDATE Message m SET m.dirty = true WHERE m.from.mail = :sender AND m.to.id = :userId"
		//triggers a org.h2.jdbc.JdbcSQLSyntaxErrorException:
		//	Syntax error in SQL statement "UPDATE MESSAGE CROSS[*] JOIN  SET SEEN=1 WHERE MAIL=? AND TO_ID=?"; expected "., AS, SET"
		TypedQuery<User> userQuery = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
		
		userQuery.setParameter("mail", requestedUserMail);
		
		User us = userQuery.getSingleResult();
		
		if(us == null) {
			return null;
		}
		
		TypedQuery<Message> query = entityManager.createNamedQuery(UserQueryStringNames.GET_MESSAGE_FROM, Message.class);
				
		query.setParameter("senderMail", requestedUserMail);
		query.setParameter("userId", u.getId());
				
		//we mark all those messages as seen
		Query updateQuery = entityManager.createNamedQuery(UserQueryStringNames.UPDATE_SEEN_MESSAGE);
				
		updateQuery.setParameter("senderId", us.getId());
		updateQuery.setParameter("userId", u.getId());
		updateQuery.executeUpdate();
		
		
		List<MessageTransferData> data = new ArrayList<MessageTransferData>();
		
		for(Message m : query.getResultList()) {
			data.add(new MessageTransferData(m));
		}
		
		return data;
	}
}
