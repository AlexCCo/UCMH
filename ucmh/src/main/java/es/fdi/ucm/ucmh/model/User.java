package es.fdi.ucm.ucmh.model;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	
	@ManyToOne //duda
	private User psychologist;//solo lo tendran los pacientes
	
	private String Type;
	
	//date
	@OneToMany(mappedBy="Patient")
	private Collection<Date> PatientsDate;
	
	@OneToMany(mappedBy="pychologist")
	private Collection<Date> psichologistsDate;
	//-----
	
	//groupDate
	@OneToMany(mappedBy="Patient")
	private Collection<GroupDate> PatientsGroupDate;
	
	@OneToMany(mappedBy="pychologist")
	private Collection<GroupDate> psichologistsGroupDate;
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
	
	
}
