package es.fdi.ucm.ucmh.transfer;

import es.fdi.ucm.ucmh.model.User;

public class UserTransferData {
	public long id;
	public String firstName;
	public String lastName;
	public String mail;
	public String phoneNumber;
	public String psychologistName;  // empty for non-patients
	public long psychologistId; 	 // -1 for non-patients

	public String password;			 // only used when registering a new user
	public String type;

	public UserTransferData(User u) {
		this.id = u.getId();
		this.firstName = u.getFirstName();
		this.lastName = u.getLastName();
		this.mail = u.getMail();
		this.phoneNumber = u.getPhoneNumber();
		this.type = "" + u.getType();
		this.psychologistId = -1;
		if (u.getPsychologist() != null) {
			this.psychologistName = 
				u.getPsychologist().getFirstName() + ", " + 
				u.getPsychologist().getLastName();
			this.psychologistId = u.getPsychologist().getId();
		}
	}

	@Override
	public String toString() {
		return "UserTransferData [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", mail=" + mail
				+ ", phoneNumber=" + phoneNumber + ", psychologistName=" + psychologistName + ", type=" + type + "]";
	}
}
