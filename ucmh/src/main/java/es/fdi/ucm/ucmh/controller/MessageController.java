/**
 * Code mae entirely by Alejandro Cancelo Correia
 * */
package es.fdi.ucm.ucmh.controller;

import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import es.fdi.ucm.ucmh.controller.MessageController;
import es.fdi.ucm.ucmh.model.Message;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.MessageRepository;
import es.fdi.ucm.ucmh.transfer.MessageTransferData;
import es.fdi.ucm.ucmh.transfer.TextWithDate;

@Controller
public class MessageController{
	private static final Logger log = LogManager.getLogger(MessageController.class);
	
	@Autowired
	private EntityManager entityManager;
	
	@Autowired
	private MessageRepository messageRepository;
	
	/**
	 * This method will group all messages from the same user into one object wrapper called
	 * <i>MessageTransferData</i>.
	 * 
	 * @param messageList A list of individual messages written by some other users. <br>
	 * Keep in mind that the same user could send more than one message, the Data Base will
	 * treat this kind of situation as two different messages.
	 * @return 
	 * It will return an ordered by name list of grouped messages
	 * 
	 * @see MessageTransferData
	 * */
	private LinkedList<MessageTransferData> groupMessage(LinkedList<Message> messageList){
		HashMap<User, MessageTransferData> mapList = new HashMap<User, MessageTransferData>();
		LinkedList<MessageTransferData> senderList = new LinkedList<MessageTransferData>();
		
		/*
		 * we extract the messages from messageList and collapse the ones written by the same
		 * user into one wrapper object called MessageTransferData. 
		 * The hash map is to follow the tracks of already checked users
		 * */
		for(Message msg : messageList) {
			MessageTransferData msgList = mapList.get(msg.getFrom());
			
			if(msgList == null) {
				msgList = new MessageTransferData();
				
				//set sender name
				msgList.setFrom(String.format("%s, %s", msg.getFrom().getFirstName(), msg.getFrom().getLastName()));
				//set recipient name
				msgList.setTo(String.format("%s, %s", msg.getTo().getFirstName(), msg.getTo().getLastName()));
				msgList.setDirty(msg.isDirty());
			}
			
			//if there is at least one unseen message, all the structure will be set as unseen
			if(!msg.isDirty()) {
				msgList.setDirty(false);
			}
			
			msgList.appendText(new TextWithDate(msg.getText(), msg.getDate()));
			
			mapList.put(msg.getFrom(), msgList);
		}		
		
		for(MessageTransferData msg : mapList.values()) {
			senderList.add(msg);
		}
		
		senderList.sort(new Comparator<MessageTransferData>(){

			@Override
			public int compare(MessageTransferData arg0, MessageTransferData arg1) {
				return arg0.getFrom().compareTo(arg1.getFrom());
			}
			
		});
		
		return senderList;
	}
	
	
	/**
	 * It will retrieve the basic template where you can see your incoming messages and chat with
	 * anyone you want in real time
	 * 
	 * @param userId The id of the user who try to obtain it's messages. That user can be
	 * ADMIN, USER and PSY
	 * @param userType The root path where all users must come from. Because we have
	 * administrators, patientes and psychologist, the allowed values must be one of the
	 * follows: <br>
	 * "\/admin/"<br>
	 * "\/psy/" or<br>
	 * "\/user/"
	 * @param model A model given by Spring MVC. It is use to store information needed
	 * by the template engine to render the corresponding view, in this case, our HTML
	 * page
	 * @param session
	 * @return 
	 * It returns a string that indicates to the Spring's ViewResolvers what
	 * view (in this case HTML page) we want to render and send to our client
	 * */
	@GetMapping(value = "/{userType}/{userId}/messages")
	public String getMessagesTemplate(@PathVariable Long userId, @PathVariable String userType,
								   Model model, HttpSession session) {
		
		log.info("GET request made by: {}, type: {}", userId, userType);
		
		User u = entityManager.find(User.class, userId);
		
		if(u == null ) {
			log.debug("GET request made by: {} REJECTED!", userId);
			return "404";
		}
		
		LinkedList<Message> userMsg = messageRepository.getMessageList(u.getId());
		LinkedList<MessageTransferData> userGroupedMsg = groupMessage(userMsg);
		
		model.addAttribute("user", u);
		model.addAttribute("receive_messages", userGroupedMsg);
		return "mensajesReEn";
	}
	
}
