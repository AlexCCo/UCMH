package es.fdi.ucm.ucmh.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Version;

@Entity
public class GroupDate {
	// ---------------Atributos-----------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer ID;
	private String fecha;
	@ManyToOne
	private User patient;
	@ManyToOne
	private User pychologist;
	@Version
	private Integer version;
	// ------------------------------------------

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public User getPatiente() {
		return patient;
	}

	public void setPatiente(User patient) {
		this.patient = patient;
	}

	public User getPychologist() {
		return pychologist;
	}

	public void setPychologist(User pychologist) {
		this.pychologist = pychologist;
	}

}
