package es.fdi.ucm.ucmh.transfer;

import java.time.LocalDateTime;

import es.fdi.ucm.ucmh.model.PatientHistory;

/**
 * Simple object transfer for PatientHistory class
 * 
 * @author Alejandro Cancelo Correia
 * */
public class PatientHistoryTransfer {
	private LocalDateTime entryDate;
	private String entryText;
		
	public PatientHistoryTransfer(PatientHistory history) {
		this.entryDate = history.getEntryDate();
		this.entryText = history.getEntryText();
	}
	/**
	 * @return the entryDate
	 */
	public LocalDateTime getEntryDate() {
		return entryDate;
	}
	/**
	 * @return the entryText
	 */
	public String getEntryText() {
		return entryText;
	}
	
	
}
