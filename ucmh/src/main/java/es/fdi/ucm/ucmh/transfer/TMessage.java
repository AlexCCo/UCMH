package es.fdi.ucm.ucmh.transfer;

import java.time.LocalDateTime;

import es.fdi.ucm.ucmh.model.Animosity;

public class TMessage {
	private Integer ID;
	private LocalDateTime fecha;
	private Animosity estadoAnimo;
	private Integer IDFrom;
	private Integer IDTo;
	private String text;
	
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
	public Animosity getEstadoAnimo() {
		return estadoAnimo;
	}
	public void setEstadoAnimo(Animosity estadoAnimo) {
		this.estadoAnimo = estadoAnimo;
	}
	public Integer getIDFrom() {
		return IDFrom;
	}
	public void setIDFrom(Integer iDFrom) {
		IDFrom = iDFrom;
	}
	public Integer getIDTo() {
		return IDTo;
	}
	public void setIDTo(Integer iDTo) {
		IDTo = iDTo;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	

}
