package es.fdi.ucm.ucmh.model;


import javax.persistence.Entity;

import javax.persistence.ManyToOne;



@Entity
public class IndividualAppointment extends Appointment {

	@ManyToOne
	User patient;

	public User getPatient() {
		return patient;
	}

	public void setPatient(User patient) {
		this.patient = patient;
	}

}
