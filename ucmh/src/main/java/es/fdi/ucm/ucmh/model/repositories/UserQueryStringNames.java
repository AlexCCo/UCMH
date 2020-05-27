package es.fdi.ucm.ucmh.model.repositories;

import es.fdi.ucm.ucmh.controller.auxiliary.MessageQueryObject;

public class UserQueryStringNames {
	/**
	 * String representing a <b>named</b> query to obtain a list of users.<br>
	 * The resulting list will be in the range of :
	 * 
	 * <pre>     lastUser <= x < lastUser+showUsers </pre>
	 * 
	 * <b>NOTE:</b> showUser is a constant needed by the query
	 * */
	public static final String GET_LIST_MORE = "User.getUserListMoreThan";
	/**
	 * String representing a <b>native</b> query to obtain a list of users.<br>
	 * The resulting list will be in the range of :
	 * 
	 * <pre>     lastUser-showUsers <= x < lastUser </pre>
	 * 
	 * <b>NOTE:</b> showUser is a constant needed by the query
	 * */
	public static final String GET_LIST_LESS = "SELECT * "
											 + "FROM (SELECT * " 
									         + "FROM User " 
									         + "WHERE id < :lastUser AND type = :userType " 
									         + "ORDER BY id DESC) " 
									         + "WHERE ROWNUM <= :showUsers "
									         + "ORDER BY id ASC";
	/**
	 * String representing a <b>named</b> query to obtain a list of users
	 * who are patients of a given psychologist.
	 * */
	public static final String GET_PATIENTS_OF = "User.findPatientsOf";
	/**
	 * String representing a <b>named</b> query to retrieve a list of users
	 * by their mails.<br>
	 * 
	 * <b>NOTE:</b> Mails can be treated as a user name
	 * */
	public static final String GET_USER_BY_MAIL = "User.byMail";
	
	/**
	 * String representing a <b>named</b> query to retrieve a list of users
	 * according to their first and last names
	 * */
	public static final String GET_USER_BY_NAME = "User.getUserByName";
	
	/**
	 * String representing a <b>named</b> query to retrieve the number of admins
	 * inside our application
	 * */
	public static final String GET_ADMIN_TOTAL_NUMBER = "User.getAdminsTotalNumber";
	
	/**
	 * String representing a <b>named</b> query to retrieve a list of all the messages
	 * coming to and sent from a particular user
	 * 
	 * @see Message
	 * */
	public static final String GET_MESSAGES_LIST = "Message.getAllMessagesOf";
	
	/**
	 * String representing a <b>named</b> query to retrieve a list of messages coming to
	 * a particular user and counting the number of unseen messages for each sender
	 * 
	 * @see MessageQueryObject
	 * @see Message
	 * */
	public static final String GET_SENDER_OF_MESSAGE_LIST = "Message.getMessageSenderList";
	
	/**
	 * String representing a <b>named</b> query to retrieve a list of messages sent
	 * from an specific user 
	 * */
	public static final String GET_MESSAGE_FROM = "Message.getMessageFrom";
	
	/**
	 * String representing a <b>named</b> query to update the status of all messages
	 * sent from one user to another
	 * */
	public static final String UPDATE_SEEN_MESSAGE = "Message.updateSeenMessageStatus";
	
	public static final String GET_PATIENT_HISTORY_MADE_BY = "PatientHistory.getHistoryMadeBy";
}
