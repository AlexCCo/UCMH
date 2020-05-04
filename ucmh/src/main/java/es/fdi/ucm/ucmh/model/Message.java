package es.fdi.ucm.ucmh.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import es.fdi.ucm.ucmh.model.Message;


@Entity

@NamedQueries({
	@NamedQuery(name = "Message.getMessageList",
				query="SELECT m "
					+ "FROM Message m "
					+ "WHERE m.to.id = :userId "
					+ "ORDER BY m.date ASC")
	})

/************************UNDER TEST**********************
import es.fdi.ucm.ucmh.transfer.MessageTransferData;

@Entity
@NamedQueries({
	@NamedQuery(name="Message.countUnread",
	query="SELECT COUNT(m) FROM Message m "
			+ "WHERE m.to.id = :userId")
*/
public class Message {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "sent_date")
	private LocalDateTime date;
	
	@Column(name="estado_animo", nullable=true)
	private Animosity estadoAnimo;
	
	@ManyToOne
	private User from;
	
	@ManyToOne
	private User to;
	
	private String text;
	/*
	 * It will act as a flag, if the message was seen
	 * the value is true, if not, false
	 */
	@Column(name = "seen")
	private boolean dirty;
	
	
	/**
	 * ****************************UNDER TEST**********************************
	 * 
	 * Convierte colecciones de mensajes a lista de mensajes
	 * que cumplen el formato JSON
	 * 
	 * @param messages
	 * Una coleccion representando un conjuntos de mensajes
	 * @return
	 * Una lista de MessageTransferData que cumple el formato
	 * JSON
	 *  
	 * @throws JsonProcessingException
	 * 
	 * @see MessageTransferData
	 *
	public static List<MessageTransferData> asMessageTransferDataObjects(Collection<Message> messages) {
		ArrayList<MessageTransferData> all = new ArrayList<>();
		
		for (Message m : messages) {
			all.add(new MessageTransferData(m));
		}
		
		return all;
	}
	*/


	

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}
	
	/**
	 * @return the date
	 */
	public LocalDateTime getDate() {
		return date;
	}

	/**
	 * @param date the date to set
	 */
	public void setDate(LocalDateTime date) {
		this.date = date;
	}

	/**
	 * @return the estadoAnimo
	 */
	public Animosity getEstadoAnimo() {
		return estadoAnimo;
	}

	/**
	 * @param estadoAnimo the estadoAnimo to set
	 */
	public void setEstadoAnimo(Animosity estadoAnimo) {
		this.estadoAnimo = estadoAnimo;
	}

	/**
	 * @return the from
	 */
	public User getFrom() {
		return from;
	}

	/**
	 * @param from the from to set
	 */
	public void setFrom(User from) {
		this.from = from;
	}

	/**
	 * @return the to
	 */
	public User getTo() {
		return to;
	}

	/**
	 * @param to the to to set
	 */
	public void setTo(User to) {
		this.to = to;
	}

	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}

	/**
	 * @param text the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}

	/**
	 * @return the dirty
	 */
	public boolean isDirty() {
		return dirty;
	}

	/**
	 * @param dirty the dirty to set
	 */
	public void setDirty(boolean dirty) {
		this.dirty = dirty;
	}
}
