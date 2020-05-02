package es.fdi.ucm.ucmh.transfer;

import java.time.LocalDateTime;

public class TextWithDate {
	private String text;
	private LocalDateTime textDate;
	
	public TextWithDate(String text, LocalDateTime textDate) {
		this.text = text;
		this.textDate = textDate;
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
	 * @return the textDate
	 */
	public LocalDateTime getTextDate() {
		return textDate;
	}
	/**
	 * @param textDate the textDate to set
	 */
	public void setTextDate(LocalDateTime textDate) {
		this.textDate = textDate;
	}
	
	
}
