package es.fdi.ucm.ucmh.model;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
@Entity
@NamedQueries({
	@NamedQuery(name = "EmotionState.getPatientEmotionStates",
			query = "Select p "
			+ "FROM EmotionState p "
			+ "WHERE p.patient.mail = :patientMail")
})
public class EmotionState {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String date;
	private EmotionStates state;
	private String explanation;
	private String iconString;
	@ManyToOne
	private User patient;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public EmotionStates getState() {
		return state;
	}
	public void setState(EmotionStates state) {
		this.state = state;
		switch(state)
		{
		case EXAUST:
			iconString = "sentiment_very_dissatisfied";
			break;
		case SAD:
			iconString = "sentiment_dissatisfied";
			break;
		case NEUTRAL:
			iconString = "sentiment_satisfied";
			break;
		case HAPPY:
			iconString = "sentiment_satisfied_alt";
			break;
		case VERYHAPPY:
			iconString = "sentiment_very_satisfied";
			break;
		}
	}
	public User getPatient() {
		return patient;
	}
	public void setPatient(User u)
	{
		this.patient = u;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	public String getIconString() {
		return iconString;
	}
	
}
