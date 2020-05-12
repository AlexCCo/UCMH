package es.fdi.ucm.ucmh.controller.auxiliary;

import java.util.LinkedList;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.UserType;
import es.fdi.ucm.ucmh.transfer.UserTransferData;

/**
 * Auxiliary class to help implement admin logic
 * */
public abstract class PageCache {
	protected final int SHOW_MAX_USERS;
	protected long lastUserId;
	protected LinkedList<UserTransferData> lastListUser;
	
	/**
	 * It will create a new PageCache object needed by AdminController
	 * 
	 * @param userShowConstant A constant value indicating the maximum number of
	 * elements an admin can see
	 * */
	public PageCache(int userShowConstant) {
		SHOW_MAX_USERS = userShowConstant;
		lastListUser = new LinkedList<UserTransferData>();
		lastUserId = 0;
	}
	
	/**
	 * This method will query a list of patients to the embedded DB in a range of: <br>
	 * <pre>
	 *      lastUser <= x < lastUser+showUsers
	 * </pre>
	 * @param entityManager The jpa EntityManager responsible of the corresponding database 
	 * @return A list of users
	 * */
	public abstract LinkedList<UserTransferData> getListMore(EntityManager entityManager);
	
	/**
	 * This method will query a list of patients to the embedded DB in a range of: <br>
	 * <pre>
	 * 			lastUser-showUsers <= x < lastUser
	 * </pre>
	 * @param entityManager
	 * @return A list of users
	 * */
	public abstract LinkedList<UserTransferData> getListLess(EntityManager entityManager);
	
	
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
	protected LinkedList<User> queryList(UserType userType, EntityManager entityManager, long lastUserId, String queryStringName){
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
	
	/**
	 * It will query the database our list of users.<br>
	 * 
	 * @param userType Type of user to be queried
	 * @param entityManager The corresponding Entity Manage of the database
	 * @param lastUserId Id of the user from which we will obtain the next or previous users
	 * @param queryStringName This <b>MUST</b> be a query SQL string
	 * 
	 * <b>NOTE:</b> To understand queryStringName parameter look <i>See also</i> section.
	 * 
	 * @see es.fdi.ucm.ucmh.model.repositories.UserQueryStringNames
	 * @see es.fdi.ucm.ucmh.model.User
	 * */
	protected LinkedList<User> queryNativeList(UserType userType, EntityManager entityManager, long lastUserId, String queryStringName){
		Query nativeQuery = entityManager.createNativeQuery(queryStringName, User.class);
		
		nativeQuery.setParameter("showUsers", SHOW_MAX_USERS);
		nativeQuery.setParameter("userType", userType.name());
		nativeQuery.setParameter("lastUser", lastUserId);
		
		LinkedList<User> result = new LinkedList<User>();
		
		for(Object u: nativeQuery.getResultList()) {
			result.add((User)u);
		}
		
		return result;
	}
	
	protected LinkedList<UserTransferData> processQueryMore(LinkedList<User> queryRequest){
		if(queryRequest.isEmpty()) {
			return lastListUser;
		}
		lastUserId =  queryRequest.size() < SHOW_MAX_USERS ? lastUserId : queryRequest.getLast().getId() + 1;

		return updateAndcomputeTransferList(queryRequest);
	}
	
	protected LinkedList<UserTransferData> processQueryLess(LinkedList<User> queryRequest){

		if(queryRequest.isEmpty()) {
			lastUserId = lastListUser.getLast().getId() + 1;
			return lastListUser;
		}
		
		return updateAndcomputeTransferList(queryRequest);
	}
	
	
	private LinkedList<UserTransferData> updateAndcomputeTransferList(LinkedList<User> queryRequest){
		LinkedList<UserTransferData> result = new LinkedList<UserTransferData>();
		
		for(User u : queryRequest) {
			result.add(new UserTransferData(u));
		}
		lastListUser = result;
		
		return result;
	}
}
