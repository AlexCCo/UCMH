package es.fdi.ucm.ucmh.model;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Version;

@Entity
public class GroupDate {
	// ---------------Atributos-----------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer ID;
	private String fecha;
	@ManyToMany
	private Collection<User> patient;
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

	public User getPychologist() {
		return pychologist;
	}

	public void setPychologist(User pychologist) {
		this.pychologist = pychologist;
	}

	public Collection<User> getPatient() {
		return patient;
	}

	public void setPatient(Collection<User> patient) {
		this.patient = patient;
	}
	

}
