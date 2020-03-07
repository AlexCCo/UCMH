package es.fdi.ucm.ucmh.transfer;

public class TUser {
	
	private Integer ID;
	private String firstName;
	private String secondName;
	private String mail;
	private String password;
	private String phoneNumber;
	private String Type;
	public Integer IDPpsychologist;
	
	
	public Integer getIDPpsychologist() {
		return IDPpsychologist;
	}
	public void setIDPpsychologist(Integer iDPpsychologist) {
		IDPpsychologist = iDPpsychologist;
	}
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
	
}
