package es.fdi.ucm.ucmh.transfer;

import java.util.LinkedList;

public class MessageTransferData {
	private String from;
	private String to;
	private boolean dirty;
	private LinkedList<TextWithDate> msg;
	
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
	 * @return the texts
	 */
	public LinkedList<TextWithDate> getMsg() {
		return msg;
	}

	/**
	 * @param texts the texts to set
	 */
	public void setMsg(LinkedList<TextWithDate> texts) {
		this.msg = texts;
	}
	
	public void appendText(TextWithDate text) {
		if(this.msg == null) {
			this.msg = new LinkedList<TextWithDate>();
		}
		
		this.msg.add(text);
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
