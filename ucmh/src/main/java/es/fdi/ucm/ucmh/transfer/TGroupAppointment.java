package es.fdi.ucm.ucmh.transfer;

import java.time.LocalDateTime;
import java.util.Collection;

import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import es.fdi.ucm.ucmh.model.User;

public class TGroupAppointment {
	private Integer ID;
	private LocalDateTime fecha;
	private Collection<Integer> patient;
	private Integer IDPychologist;
	
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
	public Collection<Integer> getPatient() {
		return patient;
	}
	public void setPatient(Collection<Integer> patient) {
		this.patient = patient;
	}
	public Integer getIDPychologist() {
		return IDPychologist;
	}
	public void setIDPychologist(Integer iDPychologist) {
		IDPychologist = iDPychologist;
	}
	
	
}
