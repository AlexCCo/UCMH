package es.fdi.ucm.ucmh.transfer;

import java.time.LocalDateTime;

import es.fdi.ucm.ucmh.model.Message;


/**
 * This class 
 * */
public class MessageTransferData {

	private String from;
	private String to;
	private String text;
	private long id;
	private LocalDateTime date;
	
	
	public MessageTransferData(Message m) {
		this.from = m.getFrom().getFirstName() + " " + m.getFrom().getLastName();
		this.to = m.getTo().getFirstName() + " " + m.getTo().getLastName();;
		this.text = m.getText();
		this.id = m.getId();
		this.date = m.getDate();
	}


	/**
	 * @return the from
	 */
	public String getFrom() {
		return from;
	}


	/**
	 * @param from the from to set
	 */
	public void setFrom(String from) {
		this.from = from;
	}


	/**
	 * @return the to
	 */
	public String getTo() {
		return to;
	}


	/**
	 * @param to the to to set
	 */
	public void setTo(String to) {
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
	
	
}
