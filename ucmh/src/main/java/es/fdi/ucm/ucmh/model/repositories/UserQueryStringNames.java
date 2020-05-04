package es.fdi.ucm.ucmh.model.repositories;

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
	public static final String GET_LIST_LESS = "Uset.getUserListLessThan";
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
}
