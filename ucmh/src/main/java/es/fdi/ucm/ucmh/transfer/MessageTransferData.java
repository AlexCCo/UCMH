package es.fdi.ucm.ucmh.transfer;

import java.time.LocalDateTime;
import es.fdi.ucm.ucmh.model.Message;


public class MessageTransferData {
	private String from;
	private String to;
	private LocalDateTime date;
	private String text;
	
	public MessageTransferData() {}
	
	public MessageTransferData(Message m) {
		this.from = m.getFrom().getMail();
		this.to = m.getTo().getMail();
		this.date = m.getDate();
		this.text = m.getText();
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
	
}
