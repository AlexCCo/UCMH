package es.fdi.ucm.ucmh.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.data.jpa.repository.Query;

/**
 * Entity object to keep track of the history and annotations a psychologist has made
 * of its patient
 * 
 * @author Alejandro Cancelo Correia
 * */
@Entity
@NamedQueries({
	@NamedQuery(name = "PatientHistory.getHistoryMadeBy",
			query = "SELECT p "
					+ "FROM PatientHistory p "
					+ "WHERE p.madeBy.id = :psyId AND p.referredUserMail = :patientMail ")
})
public class PatientHistory {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long entryId;
	@OneToOne
	private User madeBy;
	@Email
	@Column(nullable = false, name = "patient_mail")
	private String referredUserMail;
	@NotNull
	@NotEmpty
	private String entryText;
	private LocalDateTime entryDate;
	
	/**
	 * @return the entryId
	 */
	public long getEntryId() {
		return entryId;
	}
	/**
	 * @param entryId the entryId to set
	 */
	public void setEntryId(long entryId) {
		this.entryId = entryId;
	}
	/**
	 * @return the madeBy
	 */
	public User getMadeBy() {
		return madeBy;
	}
	/**
	 * @param madeBy the madeBy to set
	 */
	public void setMadeBy(User madeBy) {
		this.madeBy = madeBy;
	}
	/**
	 * @return the entryText
	 */
	public String getEntryText() {
		return entryText;
	}
	/**
	 * @param entryText the entryText to set
	 */
	public void setEntryText(String entryText) {
		this.entryText = entryText;
	}
	/**
	 * @return the entryDate
	 */
	public LocalDateTime getEntryDate() {
		return entryDate;
	}
	/**
	 * @param entryDate the entryDate to set
	 */
	public void setEntryDate(LocalDateTime entryDate) {
		this.entryDate = entryDate;
	}
	
	
}
