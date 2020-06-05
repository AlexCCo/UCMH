package es.fdi.ucm.ucmh.transfer;

/**
 * Transfer class to process data to create an history entry for a user.<br>
 * This class will be used in PsychologistController.createHistoryEntryForPatient
 * method
 * 
 * @author Alejandro Cancelo Correia
 * */
public class CreateEntryReceivedData {
	private String mail;
	private String date;
	private String text;
	   
	public CreateEntryReceivedData(String mail, String date, String text) {
		this.mail = mail;
		this.date = date;
		this.text = text;
	}

	/**
	 * @return the mail
	 */
	public String getMail() {
		return mail;
	}

	/**
	 * @return the date
	 */
	public String getDate() {
		return date;
	}

	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}
	 
	@Override
	public String toString() {
		return "mail: " + mail + " | date: " + date + " | text: " + text;
	}
}
