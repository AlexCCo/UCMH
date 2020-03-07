package es.fdi.ucm.ucmh.transfer;

import java.time.LocalDateTime;

import javax.persistence.ManyToOne;

import es.fdi.ucm.ucmh.model.User;

public class TAppointment {
	private Integer ID;
	private LocalDateTime fecha;
	private Integer IDPtient;
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
	public Integer getIDPtient() {
		return IDPtient;
	}
	public void setIDPtient(Integer iDPtient) {
		IDPtient = iDPtient;
	}
	public Integer getIDPychologist() {
		return IDPychologist;
	}
	public void setIDPychologist(Integer iDPychologist) {
		IDPychologist = iDPychologist;
	}
	
	
}
