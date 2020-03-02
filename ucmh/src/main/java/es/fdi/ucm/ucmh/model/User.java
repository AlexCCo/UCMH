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
	private Integer ID;

	private String firstName;
	private String secondName;
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
	private Collection<Date> patientsDate;

	@OneToMany(mappedBy="pychologist")
	private Collection<Date> psichologistsDate;
	//-----

	//groupDate
	@ManyToMany(mappedBy="patient")
	private Collection<GroupDate> patientsGroupDate;

	@OneToMany(mappedBy="pychologist")
	private Collection<GroupDate> psichologistsGroupDate;
	//-----
	//message
	@OneToMany(mappedBy="from")
	private  Collection<Message> messageSent;

	@OneToMany(mappedBy="to")
	private  Collection<Message> receivedMessage;
	//-----

	@Version
	private Integer version;
	//-------------------------------------------

	public Integer getID() {
		return ID;
	}
	public void setID(Integer iD) {
		ID = iD;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getSecondName() {
		return secondName;
	}
	public void setSecondName(String secondName) {
		this.secondName = secondName;
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
	public Integer getVersion() {
		return version;
	}
	public void setVersion(Integer version) {
		this.version = version;
	}
	public User getPsychologist() {
		return psychologist;
	}
	public void setPsychologist(User psychologist) {
		this.psychologist = psychologist;
	}
	public Collection<Date> getPatientsDate() {
		return this.patientsDate;
	}
	public void setPatientsDate(Collection<Date> patientsDate) {
		this.patientsDate = patientsDate;
	}
	public Collection<Date> getPsichologistsDate() {
		return psichologistsDate;
	}
	public void setPsichologistsDate(Collection<Date> psichologistsDate) {
		this.psichologistsDate = psichologistsDate;
	}
	public Collection<GroupDate> getPatientsGroupDate() {
		return this.patientsGroupDate;
	}
	public void setPatientsGroupDate(Collection<GroupDate> patientsGroupDate) {
		this.patientsGroupDate = patientsGroupDate;
	}
	public Collection<GroupDate> getPsichologistsGroupDate() {
		return psichologistsGroupDate;
	}
	public void setPsichologistsGroupDate(Collection<GroupDate> psichologistsGroupDate) {
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
