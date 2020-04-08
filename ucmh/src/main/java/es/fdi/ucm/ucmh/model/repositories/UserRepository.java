package es.fdi.ucm.ucmh.model.repositories;

import java.util.LinkedList;
import java.util.List;
import java.lang.Long;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import es.fdi.ucm.ucmh.model.User;

@Transactional(readOnly = true)
public interface UserRepository extends JpaRepository<User, Long> {
	
	/*
	 * All these methods are going to execute something like:
	 * 
	 * TypeQuery<resultClassType> query = entityManager.createNamedQuery(nameOfTheQuery, resultClassType);
	 * 
	 * query.getResult();
	 * 
	 * */
	
	/**
	 * This method will query a list of users to the embedded DB
	 * @param userType a string representing the user type we want to query
	 * @return A list of users
	 * */
	public LinkedList<User> getUserListMoreThan(String userType, long lastUser, int showUsers);
	public LinkedList<User> getUserListLessThan(String userType, long lastUser, int showUsers);
	
	
	public LinkedList<User> findPatientsOf(User psychologistId);
	/**
	 * This method will query a list of users that match the first name
	 * @param userFirstName a string representing the user first name
	 * @return A list of users
	 * */
	public List<User> getUserByName(String userFirstName, String userLastName);
}
