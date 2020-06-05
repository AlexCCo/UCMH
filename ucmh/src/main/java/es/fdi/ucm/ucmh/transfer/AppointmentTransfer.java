package es.fdi.ucm.ucmh.transfer;

import java.time.LocalDateTime;

import javax.persistence.ManyToOne;

import es.fdi.ucm.ucmh.model.Appointment;
import es.fdi.ucm.ucmh.model.User;

public class AppointmentTransfer {
	private String date;
	private String psychologistName;
	private String psychologistMail;
	
	public AppointmentTransfer(String fecha, String psychologistName, String psychologistMail) {
		super();
		this.date = fecha;
		this.psychologistName = psychologistName;
		this.psychologistMail = psychologistMail;
	}
	
	public AppointmentTransfer(Appointment recv) {
		super();
		this.date = recv.getFecha().toString().replaceFirst("T", " ");
		User u = recv.getPsychologist();
		this.psychologistName = u.getFirstName() +", " + u.getLastName();
		this.psychologistMail = u.getMail();
	}

	/**
	 * @return the Date
	 */
	public String getDate() {
		return date;
	}

	/**
	 * @return the psychologistName
	 */
	public String getPsychologistName() {
		return psychologistName;
	}

	/**
	 * @return the psychologistMail
	 */
	public String getPsychologistMail() {
		return psychologistMail;
	}
	
	
}
