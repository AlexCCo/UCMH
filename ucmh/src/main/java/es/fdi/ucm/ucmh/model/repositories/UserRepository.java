package es.fdi.ucm.ucmh.model.repositories;

import java.util.LinkedList;
import java.util.List;
import java.lang.Long;

import org.hibernate.annotations.RowId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
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
	 * This method will query a list of users to the embedded DB in a range of<br>
	 * <pre>           lastUser <= x < lastUser+showUsers </pre>
	 * @param userType A string representing the user type we want to query
	 * @param lastUser The if of the user to take as a lower bound
	 * @param showUser The value indicating the range of users you want to query 
	 * @return A list of users
	 * */
	public LinkedList<User> getUserListMoreThan(String userType, long lastUser, int showUsers);
	
	/**
	 * This method will query a list of users to the embedded DB in a range of<br>
	 * <pre>           lastUser - showUsers <= x < lastUser </pre>
	 * @param userType A string representing the user type we want to query
	 * @param lastUser The if of the user to take as a upper bound
	 * @param showUser The value indicating the range of users you want to query 
	 * @return A list of users
	 * */
	
	public LinkedList<User> getUserListLessThan(String userType, long lastUser, int showUsers);
	
	
	/**
	 * This query will retrieve a list of patients of the given psychologist
	 * @param psychologistId The psychologist to obtain patients of
	 * @return A list of patients
	 * */
	public LinkedList<User> findPatientsOf(User psychologistId);
	/**
	 * This method will query a list of users that match the first name
	 * @param userFirstName a string representing the user first name
	 * @return A list of users
	 * */
	public List<User> getUserByName(String userFirstName, String userLastName);
}
