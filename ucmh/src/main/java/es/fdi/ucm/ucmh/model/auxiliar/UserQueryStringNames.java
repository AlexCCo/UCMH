package es.fdi.ucm.ucmh.model.auxiliar;

import es.fdi.ucm.ucmh.controller.auxiliary.MessageQueryObject;

/**
 * Class for obtaining query names
 *  
 * @author Alejandro Cancelo Correia
 * */
public class UserQueryStringNames {
	/**
	 * String representing a <b>named</b> query to obtain a list of users.<br>
	 * The resulting list will be in the range of :
	 * 
	 * <pre>     lastUser <= x < lastUser+showUsers </pre>
	 * 
	 * <b>NOTE:</b> showUser is a constant needed by the query<br>
	 * Query parameters are: <i>userType</i>, <i>lastUser</i> and <i>showUsers</i>
	 * */
	public static final String GET_LIST_MORE = "User.getUserListMoreThan";
	/**
	 * String representing a <b>native</b> query to obtain a list of users.<br>
	 * The resulting list will be in the range of :
	 * 
	 * <pre>     lastUser-showUsers <= x < lastUser </pre>
	 * 
	 * <b>NOTE:</b> showUser is a constant needed by the query<br>
	 * Query parameters are: <i>userType</i>, <i>lastUser</i> and <i>showUsers</i>
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
	 * who are patients of a given psychologist.<br>
	 * 
	 * Query parameters are: <i>psychologistId</i>
	 * */
	public static final String GET_PATIENTS_OF = "User.findPatientsOf";
	/**
	 * String representing a <b>named</b> query to retrieve a list of users
	 * by their mails.<br>
	 * 
	 * <b>NOTE:</b> Mails can be treated as a user name.<br>
	 * 
	 * Query parameters are: <i>mail</i>
	 * 
	 * */
	public static final String GET_USER_BY_MAIL = "User.byMail";
	
	/**
	 * String representing a <b>named</b> query to retrieve a list of users
	 * according to their first and last names
	 * 
	 * Query parameters are: <i>userFirstName</i> and <i>userLastName</i>
	 * 
	 * */
	public static final String GET_USER_BY_NAME = "User.getUserByName";
	
	/**
	 * String representing a <b>named</b> query to retrieve the number of admins
	 * inside our application<br>
	 * 
	 * Query parameters are: There are no query parameters
	 * 
	 * */
	public static final String GET_ADMIN_TOTAL_NUMBER = "User.getAdminsTotalNumber";
	
	/**
	 * String representing a <b>named</b> query to retrieve a list of all the messages
	 * coming to and sent from a particular user<br>
	 * 
	 * Query parameters are: <i>senderId</i>
	 * 
	 * @see Message
	 * */
	public static final String GET_MESSAGES_LIST = "Message.getAllMessagesOf";
	
	/**
	 * String representing a <b>named</b> query to retrieve a list of messages coming to
	 * a particular user and counting the number of unseen messages for each sender<br>
	 * 
	 * Query parameters are: <i>senderId</i>
	 * 
	 * @see MessageQueryObject
	 * @see Message
	 * */
	public static final String GET_SENDER_OF_MESSAGE_LIST = "Message.getMessageSenderList";
	
	/**
	 * String representing a <b>named</b> query to retrieve a list of messages sent
	 * from an specific user<br>
	 * 
	 * Query parameters are: <i>userId</i> and <i>senderMail</i>
	 * 
	 * */
	public static final String GET_MESSAGE_FROM = "Message.getMessageFrom";
	
	/**
	 * String representing a <b>named</b> query to update the status of all messages
	 * sent from one user to another<br>
	 * 
	 * Query parameters are: <i>userId</i> and <i>senderId</i>
	 * 
	 * */
	public static final String UPDATE_SEEN_MESSAGE = "Message.updateSeenMessageStatus";
	
	/**
	 * String representing a <b>named</b> query to obtain every history entry made by
	 * a psychologist in regard of his patient<br>
	 * 
	 * The query parameters are: <i>psyId</i> and <i>patientMail</i>
	 * */
	public static final String GET_PATIENT_HISTORY_MADE_BY = "PatientHistory.getHistoryMadeBy";
	
	/**
	 * String representing a <b>named</b> query to obtain every appointment of a patient<br>
	 * 
	 * The query parameter name is <i>userId</i>
	 * 
	 * */
	public static final String GET_PATIENT_APPOINTMENTS = "Appointment.getAppointmentListOfPatient";

	 
	/** String representing a <b>named</b> query to obtain every appointment of a psychologist<br>
	 * 
	 * The query parameter name is <i>userId</i>
	 * 
	 * */
	public static final String GET_PSY_APPOINTMENTS = "Appointment.getAppointmentListOfPsy";
	
	/**
	 * String representing a <b>named</b> query to delete an appointment of a psychologist<br>
	 * 
	 * The query parameter name is <i>userId</i> and <i>date</i>
	 * 
	 * */
	public static final String DELETE_APPOINTMENT_OF_PSY = "Appointment.deletAppointmetOfPsy";
	
	/**
	 * String representing a <b>named</b> query to obtain an appointment of a patient<br>
	 * 
	 * The query parameter name is <i>userId</i> and <i>date</i>
	 * 
	 * */
	public static final String DELETE_APPOINTMENT_OF_PAT = "Appointment.deletAppointmetOfPat";
	
	/**
	 * String representing a <b>named</b> query to obtain all the EmotionStates of a patient<br>
	 * 
	 * The query parameter name is <i>patientMail</i>
	 * 
	 * */
	public static final String GET_PAT_EMOTIONSTATES = "EmotionState.getPatientEmotionStates";
}
