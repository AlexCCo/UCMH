package es.fdi.ucm.ucmh.utilities;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.UserRepository;

public class CheckUserUtils {
	public static final String USER_TYPE = "USER";
	public static final String PSYCHOLOGIST_TYPE = "PSY";
	public static final String ADMIN_TYPE = "ADMIN";
	
	public static final String USER_PATH = "user";
	public static final String PSYCHOLOGIST_PATH = "psy";
	public static final String ADMIN_PATH = "admin";
	
	/**
	 * Checks if the given id belongs to an admin or not
	 * 
	 * @param adminId A Long value representing an ID
	 * @param manager A class implementing the <b>javax.persistence.EntityManager</b>
	 * interface
	 * 
	 * @return
	 * <b>true</b> if it belongs to an admin.<br>
	 * <b>False</b> otherwise.
	 * 
	 * @see javax.persistence.EntityManager
	 * */
	public static boolean checkAdmin(Long adminId, EntityManager manager) {
		User admin = manager.find(User.class, adminId);
		
		if(admin == null || !admin.getType().equals(ADMIN_TYPE)) {
			return false;
		}
		
		return true;
	}
	
	/**
	 * Checks if the given id belongs to an admin or not
	 * 
	 * @param userId A Long value representing an ID
	 * @param manager A class implementing the <b>javax.persistence.EntityManager</b>
	 * interface
	 * @return
	 * The corresponding <b>User</b> which id is <i>adminId</id>
	 * or <b>null<b> if that user doesn't exist
	 * 
	 * @see es.fdi.ucm.model.User
	 * @see javax.persistence.EntityManager
	 * */
	public static User checkAndRetrieveAdmin(Long userId, EntityManager manager) {
		User usr = manager.find(User.class, userId);
		
		if(usr == null || !usr.getType().equals(ADMIN_TYPE)) {
			return null;
		}
		
		return usr;
	}
	
	/**
	 * Checks if the given id belongs to a patient or not
	 * 
	 * @param userId A Long value representing an ID
	 * @param manager A class implementing the <b>javax.persistence.EntityManager</b>
	 * interface
	 * @return
	 * The corresponding <b>User</b> which id is <i>adminId</id>
	 * or <b>null<b> if that user doesn't exist
	 * 
	 * @see es.fdi.ucm.model.User
	 * @see javax.persistence.EntityManager
	 * */
	public static User checkAndRetrieveUser(Long userId, EntityManager manager) {
		User usr = manager.find(User.class, userId);
		
		if(usr == null || !usr.getType().equals(USER_TYPE)) {
			return null;
		}
		
		return usr;
	}
	
	/**
	 * Checks if the given id belongs to a patient or not
	 * 
	 * @param userId A Long value representing an ID
	 * @param manager A class implementing the <b>javax.persistence.EntityManager</b>
	 * interface
	 * @return
	 * The corresponding <b>User</b> which id is <i>adminId</id>
	 * or <b>null<b> if that user doesn't exist
	 * 
	 * @see es.fdi.ucm.model.User
	 * @see javax.persistence.EntityManager
	 * */
	public static User checkAndRetrieveUserBy(Long userId, EntityManager manager, String type) {
		User usr = manager.find(User.class, userId);
		
		if(usr == null || !usr.getType().equals(type)) {
			return null;
		}
		
		return usr;
	}
	
	/**
	 * Checks if the given id belongs to an psychologist or not
	 * 
	 * @param userId A Long value representing an ID
	 * @param manager A class implementing the <b>javax.persistence.EntityManager</b>
	 * interface
	 * @return
	 * The corresponding <b>User</b> which id is <i>adminId</id>
	 * or <b>null<b> if that user doesn't exist
	 * 
	 * @see es.fdi.ucm.model.User
	 * @see javax.persistence.EntityManager
	 * */
	public static User checkAndRetrievePsychologist(Long userId, EntityManager manager) {
		User usr = manager.find(User.class, userId);
		
		if(usr == null || !usr.getType().equals(PSYCHOLOGIST_TYPE)) {
			return null;
		}
		
		return usr;
	}
	
	public static boolean checkAllTypes(User userToCheck) {
		if(!(userToCheck.getType().equals(USER_TYPE) ||
				userToCheck.getType().equals(ADMIN_TYPE) ||
				userToCheck.getType().equals(PSYCHOLOGIST_TYPE))) {
			return false;
		}
		
		return true;
	}
	
	public static boolean checkAllTypes(String userToCheck) {
		if(!(userToCheck.equals(USER_TYPE) ||
				userToCheck.equals(ADMIN_TYPE) ||
				userToCheck.equals(PSYCHOLOGIST_TYPE))) {
			return false;
		}
		
		return true;
	}
	
	public static boolean checkAllPaths(String userToCheck) {
		if(!(userToCheck.equals(USER_PATH) ||
				userToCheck.equals(ADMIN_PATH) ||
				userToCheck.equals(PSYCHOLOGIST_PATH))) {
			return false;
		}
		
		return true;
	}
}
