package es.fdi.ucm.ucmh.transfer;

import java.time.LocalDateTime;

import javax.persistence.ManyToOne;

import es.fdi.ucm.ucmh.model.Appointment;
import es.fdi.ucm.ucmh.model.User;

public class AppointmentTransfer {
	private String date;
	private String userName;
	private String userMail;
	
	public AppointmentTransfer(String fecha, String userName, String userMail) {
		this.date = fecha;
		this.userName = userName;
		this.userMail = userMail;
	}
	
	public AppointmentTransfer(Appointment recv) {
		this.date = recv.getFecha().toString().replaceFirst("T", " ");
		User u = recv.getPsychologist();
		this.userName = u.getFirstName() +", " + u.getLastName();
		this.userMail = u.getMail();
	}
	
	/**
	 * @return the Date
	 */
	public String getDate() {
		return date;
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @return the userMail
	 */
	public String getUserMail() {
		return userMail;
	}
	
	
}
