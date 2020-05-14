package es.fdi.ucm.ucmh.controller.auxiliary;

import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

import es.fdi.ucm.ucmh.model.Message;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.transfer.MessageTransferData;
import es.fdi.ucm.ucmh.transfer.TextWithDate;

public class MessageHelper {
	
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
	public static LinkedList<MessageTransferData> groupMessage(List<Message> messageList){
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
}
