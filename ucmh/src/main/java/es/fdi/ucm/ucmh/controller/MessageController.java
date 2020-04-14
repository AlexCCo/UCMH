package es.fdi.ucm.ucmh.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;

import es.fdi.ucm.ucmh.model.Message;
import es.fdi.ucm.ucmh.controller.MessageController;
import es.fdi.ucm.ucmh.model.User;

//@Controller
//public class MessageController {
//
//	@MessageMapping("/msg")
//	@SendTo("/topic/sendMsg")
//	  public Message send(Message message) throws Exception {
//	    return message;
//	  }
//	
//	@MessageMapping("/user")
//    @SendTo("/topic/sendMsg")
//    public Message addUser(@Payload Message chatMessage, 
//                               SimpMessageHeaderAccessor headerAccessor) {
//        // Add username in web socket session
//        headerAccessor.getSessionAttributes().put("username", chatMessage.getFrom().getFirstName());
//        return chatMessage;
//    }
//}
@Controller
@RequestMapping("message")

public class MessageController{
	private static final Logger log = LogManager.getLogger(MessageController.class);
	
	@Autowired
	private EntityManager entityManager;
	
	@GetMapping("/")
	public String getMessages(Model model, HttpSession session) {
		return "messages";
	}
	
	@GetMapping(path = "/received", produces = "application/json")
	@Transactional
	@ResponseBody
	public List<Message.Transfer> retrieveMessages(HttpSession session){
		long userId = ((User)session.getAttribute("u")).getId();
		User u = entityManager.find(User.class, userId); 
		log.info("Generating message list for user {} ({} messages)", 
			u.getFirstName(), u.getReceivedMessage().size());
	return Message.asTransferObjects(u.getReceivedMessage());
	}
	
	@GetMapping(path = "/unread", produces = "application/json")
	@ResponseBody
	public String checkUnread(HttpSession session) {
		long userId = ((User)session.getAttribute("u")).getId();		
		long unread = entityManager.createNamedQuery("Message.countUnread", Long.class)
			.setParameter("userId", userId)
			.getSingleResult();
		session.setAttribute("unread", unread);
		return "{\"unread\": " + unread + "}";
	}
	
}
