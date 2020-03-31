package es.fdi.ucm.ucmh.model;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Version;

@Entity
public class User {
	//------------Atributos---------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long ID;

	private String firstName;
	private String lastName;
	private String mail;
	private String password;
	private String phoneNumber;
	private String Type;

	//user
	@ManyToOne //duda	
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

	public Long getID() {
		return ID;
	}
	public void setID(Long iD) {
		ID = iD;
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
	public void setLastName(String secondName) {
		this.lastName = secondName;
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
		return Type;
	}
	public void setType(String type) {
		Type = type;
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
