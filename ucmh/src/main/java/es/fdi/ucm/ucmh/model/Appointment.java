package es.fdi.ucm.ucmh.model;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Version;

@Entity
@NamedQueries({
	@NamedQuery(name = "Appointment.getAppointmentListOfPatient",
				query = "SELECT p "
						+ "FROM Appointment p "
						+ "WHERE p.patient.id = :patientId"),
	@NamedQuery(name = "Appointment.getAppointmentListOfPsychologist",
	query = "SELECT p "
			+ "FROM Appointment p "
			+ "WHERE p.psychologist.id = :psychologistId")
})
public class Appointment {
	//---------------Atributos-----------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer ID;
	private LocalDateTime fecha;
	@ManyToOne
	private User patient;
	@ManyToOne
	private User psychologist;
	//------------------------------------------

	public Integer getID() {
		return ID;
	}
	public void setID(Integer iD) {
		ID = iD;
	}
	public LocalDateTime getFecha() {
		return fecha;
	}
	public void setFecha(LocalDateTime fecha) {
		this.fecha = fecha;
	}
	public User getPatiente() {
		return patient;
	}
	public void setPatiente(User patient) {
		this.patient = patient;
	}
	public User getPsychologist() {
		return psychologist;
	}
	public void setPychologist(User pychologist) {
		this.psychologist = pychologist;
	}

}
