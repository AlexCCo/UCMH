package es.fdi.ucm.ucmh.model;

import java.util.Collection;

import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.EntityResult;
import javax.persistence.FieldResult;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SqlResultSetMapping;

import es.fdi.ucm.ucmh.config.jpa.UserTypeConverter;

@Entity
@NamedQueries({
	@NamedQuery(name = "User.getUserListMoreThan", 
			    query = "SELECT u "
			    		+ "FROM User u "
			    		+ "WHERE u.type = :userType AND u.id >= :lastUser AND ROWNUM <= :showUsers "
			    		+ "ORDER BY u.id ASC "),
	@NamedQuery(name = "User.findPatientsOf",
				query = "SELECT u "
						+ "FROM User u "
						+ "WHERE u.psychologist.id = :psychologistId "),
	@NamedQuery(name = "User.getUserByName",
				query = "SELECT u "
						+ "FROM User u "
						+ "WHERE u.firstName LIKE :userFirstName AND u.lastName LIKE :userLastName AND u.type != 'ADMIN'"),
	@NamedQuery(name="User.byMail",
				query="SELECT u FROM User u "
						+ "WHERE u.mail = :mail"),
})

@NamedNativeQueries({
	@NamedNativeQuery( name = "User.getUserListLessThan", 
					   query = "SELECT * "
				    		+ "FROM (SELECT * " 
				    		         + "FROM User " 
				    		         + "WHERE id < :lastUser AND type = :userType " 
				    		         + "ORDER BY id DESC) " 
				    		+ "WHERE ROWNUM <= :showUsers "
				    		+ "ORDER BY id ASC", 
				       resultClass = User.class)
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

	@Enumerated(EnumType.STRING)
	@Convert(converter = UserTypeConverter.class)
	private UserType type;

	//user
	@ManyToOne
	private User psychologist;//solo lo tendran los pacientes
	private String disorder;
	private String treatment;
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

	public boolean hasRole(Object role) {
		return UserType.valueOf(role.toString()).equals(type);
	}

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
	public UserType getType() {
		return type;
	}
	public void setType(UserType type) {
		this.type = type;
	}
	public void setType(String type) {
		try {
			setType(UserType.valueOf(type));
		} catch (Exception e) {
			throw new IllegalArgumentException("Invalid user type " + type);
		}
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

	//auto-generated code
	@Override
	public String toString() {
		return "User [id=" + id + ", " + (firstName != null ? "firstName=" + firstName + ", " : "")
				+ (lastName != null ? "lastName=" + lastName + ", " : "") + (mail != null ? "mail=" + mail + ", " : "")
				+ (password != null ? "password=" + password + ", " : "")
				+ (phoneNumber != null ? "phoneNumber=" + phoneNumber + ", " : "")
				+ (type != null ? "type=" + type + ", " : "")
				+ (psychologist != null ? "psychologist=" + psychologist + ", " : "")
				+ (patientsDate != null ? "patientsDate=" + patientsDate + ", " : "")
				+ (psichologistsDate != null ? "psichologistsDate=" + psichologistsDate + ", " : "")
				+ (patientsGroupDate != null ? "patientsGroupDate=" + patientsGroupDate + ", " : "")
				+ (psichologistsGroupDate != null ? "psichologistsGroupDate=" + psichologistsGroupDate + ", " : "")
				+ (messageSent != null ? "messageSent=" + messageSent + ", " : "")
				+ (receivedMessage != null ? "receivedMessage=" + receivedMessage : "") + "]";
	}
	
	public String getTreatment() {
		return treatment;
	}
	public void setTreatment(String treatment) {
		this.treatment = treatment;
	}
	public String getDisorder() {
		return disorder;
	}
	public void setDisorder(String disorder) {
		this.disorder = disorder;
	}

	
}
