package es.fdi.ucm.ucmh.model;

import java.util.Collection;
import java.lang.Long;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.Constraint;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@NamedQueries({
	@NamedQuery(name = "User.getUserListMoreThan", 
			    query = "SELECT u "
			    		+ "FROM User u "
			    		+ "WHERE u.type = :userType AND (u.id >= :lastUser AND u.id < (:lastUser + :showUsers)) "
			    		+ "ORDER BY u.id ASC "),
	@NamedQuery(name = "User.getUserListLessThan", 
			    query = "SELECT u "
			    		+ "FROM User u "
			    		+ "WHERE u.type = :userType AND (u.id < :lastUser AND u.id >= (:lastUser - :showUsers)) "
			    		+ "ORDER BY u.id ASC "),
	@NamedQuery(name = "User.findPatientsOf",
				query = "SELECT u "
						+ "FROM User u "
						+ "WHERE u.psychologist = :psychologistId "),
	@NamedQuery(name = "User.getUserByName",
				query = "SELECT u "
						+ "FROM User u "
						+ "WHERE u.firstName LIKE :userFirstName AND u.lastName LIKE :userLastName AND u.type != 'ADMIN'")
})
public class User {
	//------------Atributos---------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String firstName;
	private String lastName;
	private String mail;
	private String password;
	private String phoneNumber;
	private String type;

	//user
	@ManyToOne
	private User psychologist;//solo lo tendran los pacientes
	//------

	//date
	@OneToMany(mappedBy="patient")
	private Collection<Appointment> patientsDate;

	@OneToMany(mappedBy="pychologist")
	private Collection<Appointment> psichologistsDate;
	//-----

	//groupDate
	@ManyToMany(mappedBy="patient")
	private Collection<GroupAppointment> patientsGroupDate;

	@OneToMany(mappedBy="pychologist")
	private Collection<GroupAppointment> psichologistsGroupDate;
	//-----
	//message
	@OneToMany(mappedBy="from")
	private  Collection<Message> messageSent;

	@OneToMany(mappedBy="to")
	private  Collection<Message> receivedMessage;
	//-----

	//-------------------------------------------

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public User getPsychologist() {
		return psychologist;
	}
	public void setPsychologist(User psychologist) {
		this.psychologist = psychologist;
	}
	public Collection<Appointment> getPatientsDate() {
		return this.patientsDate;
	}
	public void setPatientsDate(Collection<Appointment> patientsDate) {
		this.patientsDate = patientsDate;
	}
	public Collection<Appointment> getPsichologistsDate() {
		return psichologistsDate;
	}
	public void setPsichologistsDate(Collection<Appointment> psichologistsDate) {
		this.psichologistsDate = psichologistsDate;
	}
	public Collection<GroupAppointment> getPatientsGroupDate() {
		return this.patientsGroupDate;
	}
	public void setPatientsGroupDate(Collection<GroupAppointment> patientsGroupDate) {
		this.patientsGroupDate = patientsGroupDate;
	}
	public Collection<GroupAppointment> getPsichologistsGroupDate() {
		return psichologistsGroupDate;
	}
	public void setPsichologistsGroupDate(Collection<GroupAppointment> psichologistsGroupDate) {
		this.psichologistsGroupDate = psichologistsGroupDate;
	}
	public Collection<Message> getMessageSent() {
		return this.messageSent;
	}
	public void setMessageSent(Collection<Message> messageSent) {
		this.messageSent = messageSent;
	}
	public Collection<Message> getReceivedMessage() {
		return receivedMessage;
	}
	public void setReceivedMessage(Collection<Message> receivedMessage) {
		this.receivedMessage = receivedMessage;
	}


}
