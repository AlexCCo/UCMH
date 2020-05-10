package es.fdi.ucm.ucmh.controller.Auxiliary;

import java.util.LinkedList;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.UserType;
import es.fdi.ucm.ucmh.model.repositories.UserQueryStringNames;

/**
 * Auxiliary class to help implement admin logic
 * */
public class PageCache {
	private static Logger log = LogManager.getLogger(PageCache.class);
	private final int SHOW_MAX_USERS;
	private long lastPatId;
	private long lastPsyId;
	private LinkedList<User> lastListPat;
	private LinkedList<User> lastListPsy;
	
	/**
	 * It will create a new PageCache object needed by AdminController
	 * 
	 * @param userShowConstant A constant value indicating the maximum number of
	 * elements an admin can see
	 * */
	public PageCache(int userShowConstant) {
		SHOW_MAX_USERS = userShowConstant;
		lastListPat = new LinkedList<User>();
		lastListPsy = new LinkedList<User>();
		lastPatId = 0;
		lastPsyId = 0;
	}
	
	/**
	 * This method will query a list of patients to the embedded DB in a range of: <br>
	 * <pre>
	 *      lastUser <= x < lastUser+showUsers
	 * </pre>
	 * @param entityManager The jpa EntityManager responsible of the corresponding database 
	 * @return A list of users
	 * */
	public LinkedList<User> getListPATMore(EntityManager entityManager){
		LinkedList<User> queryRequest = queryList(UserType.PAT, entityManager, lastPatId, UserQueryStringNames.GET_LIST_MORE);
		
		if(!queryRequest.isEmpty()) {
			lastPatId =  queryRequest.size() < SHOW_MAX_USERS ? lastPatId : queryRequest.getLast().getId() + 1;
			lastListPat = queryRequest;
			
			log.debug("Values of lastPatUser and lastPsyUser: ({}, {})", lastPatId, lastPsyId);
			return queryRequest;
		}
		
		log.debug("Values of lastPatUser and lastPsyUser: ({}, {})", lastPatId, lastPsyId);
		return lastListPat;
	}
	
	/**
	 * This method will query a list of psychologist to the embedded DB in a range of: <br>
	 * <pre>
	 *      lastUser <= x < lastUser+showUsers
	 * </pre>
	 * @param entityManager
	 * @return A list of users
	 * */
	public LinkedList<User> getListPSYMore(EntityManager entityManager){
		LinkedList<User> queryRequest = queryList(UserType.PSY, entityManager, lastPsyId, UserQueryStringNames.GET_LIST_MORE);
		
		if(!queryRequest.isEmpty()) {
			lastPsyId =  queryRequest.size() < SHOW_MAX_USERS ? lastPsyId : queryRequest.getLast().getId() + 1;
			lastListPsy = queryRequest;
			
			log.debug("Values of lastPatUser and lastPsyUser: ({}, {})", lastPatId, lastPsyId);
			return queryRequest;
		}
		
		log.debug("Values of lastPatUser and lastPsyUser: ({}, {})", lastPatId, lastPsyId);
		return lastListPsy;
	}
	
	/**
	 * This method will query a list of patients to the embedded DB in a range of: <br>
	 * <pre>
	 * 			lastUser-showUsers <= x < lastUser
	 * </pre>
	 * @param entityManager
	 * @return A list of users
	 * */
	public LinkedList<User> getListPATLess(EntityManager entityManager){
		lastPatId = lastListPat.getFirst().getId();
		LinkedList<User> queryRequest = queryList(UserType.PAT, entityManager, lastPatId, UserQueryStringNames.GET_LIST_LESS);
		
		if(queryRequest.isEmpty()) {
			lastPatId = lastListPat.getLast().getId() + 1;
			log.debug("Values of lastPatUser and lastPsyUser: ({}, {})", lastPatId, lastPsyId);
			return lastListPat;
		}
		
		lastListPat = queryRequest;
		
		log.debug("Values of lastPatUser and lastPsyUser: ({}, {})", lastPatId, lastPsyId);
		return queryRequest;
	}
	
	
	/**
	 * This method will query a list of patients to the embedded DB in a range of: <br>
	 * <pre>
	 * 			lastUser-showUsers <= x < lastUser
	 * </pre>
	 * @param entityManager
	 * @return A list of users
	 * */
	public LinkedList<User> getListPSYLess(EntityManager entityManager){
		lastPsyId = lastListPsy.getFirst().getId();
		LinkedList<User> queryRequest = queryList(UserType.PSY, entityManager, lastPsyId, UserQueryStringNames.GET_LIST_LESS);
		
		if(queryRequest.isEmpty()) {
			lastPsyId = lastListPsy.getLast().getId() + 1;
			log.debug("Values of lastPatUser and lastPsyUser: ({}, {})", lastPatId, lastPsyId);
			return lastListPsy;
		}
		
		lastListPsy = queryRequest;
		
		log.debug("Values of lastPatUser and lastPsyUser: ({}, {})", lastPatId, lastPsyId);
		return queryRequest;
	}
	
	
	/**
	 * It will query the database our list of users.<br>
	 * We will return a linked list because it help us implement an easier logic
	 * 
	 * @param userType Type of user to be queried
	 * @param entityManager The corresponding Entity Manage of the database
	 * @param lastUserId Id of the user from which we will obtain the next or previous users
	 * @param queryStringName Name of the query
	 * 
	 * <b>NOTE:</b> To understand queryStringName parameter look <i>See also</i> section.
	 * 
	 * @see es.fdi.ucm.ucmh.model.repositories.UserQueryStringNames
	 * @see es.fdi.ucm.ucmh.model.User
	 * */
	private LinkedList<User> queryList(UserType userType, EntityManager entityManager, long lastUserId, String queryStringName){
		TypedQuery<User> query = entityManager.createNamedQuery(queryStringName, User.class);
		
		query.setParameter("showUsers", SHOW_MAX_USERS);
		query.setParameter("userType", userType);
		query.setParameter("lastUser", lastUserId);
		
		LinkedList<User> result = new LinkedList<User>();
		
		for(User u: query.getResultList()) {
			result.add(u);
		}
		
		return result;
	}
	
}
