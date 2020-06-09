/**
 * Queries and constraints Annotations made by Alejandro Cancelo Correia
 * Rest of class was made by the group of UCMH
 * */

package es.fdi.ucm.ucmh.model;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.TemporalAdjusters;
import java.time.temporal.WeekFields;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;

import javax.persistence.Entity;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@NamedQueries({
	@NamedQuery(name = "User.getUserListMoreThan", 
			    query = "SELECT u "
			    		+ "FROM User u "
			    		+ "WHERE u.type = :userType AND u.id >= :lastUser AND ROWNUM <= :showUsers "
			    		+ "ORDER BY u.id ASC "),
	@NamedQuery(name = "User.findPatientsOf",
				query = "SELECT u "
						+ "FROM User u "
						+ "WHERE u.psychologist.id = :psychologistId "),
	@NamedQuery(name = "User.getUserByName",
				query = "SELECT u "
						+ "FROM User u "
						+ "WHERE u.firstName LIKE :userFirstName AND u.lastName LIKE :userLastName AND u.type != 'ADMIN'"),
	@NamedQuery(name="User.byMail",
				query="SELECT u "
						+ "FROM User u "
						+ "WHERE u.mail = :mail"),
	@NamedQuery(name="User.getAdminsTotalNumber",
				query="SELECT COUNT(*) "
						+ "FROM User u "
						+ "WHERE u.type = 'ADMIN'")
})

public class User {
	//------------Atributos---------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	@NotEmpty
	@Size(min = 0, max = 128)
	private String firstName;
	@NotNull
	@NotEmpty
	@Size(min = 0, max = 128)
	private String lastName;
	@Email
	private String mail;
	@Size(min = 0, max = 128)
	private String password;
	@Pattern(regexp = "[0-9]+")
	private String phoneNumber;

	@Enumerated(EnumType.STRING)
	private UserType type;

	//user
	@ManyToOne
	private User psychologist;//solo lo tendran los pacientes
	private String disorder;
	private String treatment;
	//------

	@OneToMany(targetEntity = GroupAppointment.class)
	@JsonIgnore
	@JoinColumn(name = "psychologist_id")
	@OrderBy("date ASC, start_hour ASC")
	private List<GroupAppointment> groupAppointments = new ArrayList<GroupAppointment>();

	@OneToMany(targetEntity = IndividualAppointment.class)
	@JsonIgnore
	@JoinColumn(name = "patient_id")
	@OrderBy("date ASC, start_hour ASC")
	private List<IndividualAppointment> appointments = new ArrayList<IndividualAppointment>();

	@OneToMany(targetEntity = EmotionalState.class)
	@JsonIgnore
	@JoinColumn(name = "patient_id")
	@OrderBy("date ASC")
	private List<EmotionalState> emotionalState = new ArrayList<EmotionalState>();
	//-----
	//message
	@OneToMany(mappedBy="from")
	private  Collection<Message> messageSent;

	@OneToMany(mappedBy="to")
	private  Collection<Message> receivedMessage;
	//-----

	//-------------------------------------------

	public boolean hasRole(Object role) {
		return UserType.valueOf(role.toString()).equals(type);
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public UserType getType() {
		return type;
	}
	public void setType(UserType type) {
		this.type = type;
	}
	public void setType(String type) {
		try {
			setType(UserType.valueOf(type));
		} catch (Exception e) {
			throw new IllegalArgumentException("Invalid user type " + type);
		}
	}
	public User getPsychologist() {
		return psychologist;
	}
	public void setPsychologist(User psychologist) {
		this.psychologist = psychologist;
	}

	public Collection<Message> getMessageSent() {
		return this.messageSent;
	}
	public void setMessageSent(Collection<Message> messageSent) {
		this.messageSent = messageSent;
	}
	public Collection<Message> getReceivedMessage() {
		return receivedMessage;
	}
	public void setReceivedMessage(Collection<Message> receivedMessage) {
		this.receivedMessage = receivedMessage;
	}

	public String getTreatment() {
		return treatment;
	}
	public void setTreatment(String treatment) {
		this.treatment = treatment;
	}
	public String getDisorder() {
		return disorder;
	}
	public void setDisorder(String disorder) {
		this.disorder = disorder;
	}
	
	public void deleteMessageReceived(Message m) {
		receivedMessage.remove(m);
	}

	public void deleteMessageSent(Message msg) {
		messageSent.remove(msg);
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", mail=" + mail
				+ ", password=" + password + ", phoneNumber=" + phoneNumber + ", type=" + type + ", psychologist="
				+ psychologist + ", disorder=" + disorder + ", treatment=" + treatment + ", groupAppointments="
				+ groupAppointments + ", appointments=" + appointments + ", emotionalState=" + emotionalState
				+ ", messageSent=" + messageSent + ", receivedMessage=" + receivedMessage + "]";
	}

	public List<GroupAppointment> getGroupAppointments() {
		return groupAppointments;
	}

	public void setGroupAppointments(List<GroupAppointment> groupAppointments) {
		this.groupAppointments = groupAppointments;
	}

	public List<IndividualAppointment> getAppointments() {
		return appointments;
	}

	public void setAppointments(List<IndividualAppointment> appointments) {
		this.appointments = appointments;
	}

	public List<EmotionalState> getEmotionalState() {
		return emotionalState;
	}

	public void setEmotionalState(List<EmotionalState> emotionalState) {
		this.emotionalState = emotionalState;
	}
	
	public List<LocalDate> getDaysOfTheWeek(int week) {

		List<LocalDate> dates = new ArrayList<>();
		LocalDate ahora = LocalDate.now().plusDays(week * 7);
		DayOfWeek firstDayOfWeek = WeekFields.of(Locale.getDefault()).getFirstDayOfWeek();
		LocalDate startOfCurrentWeek = ahora.with(TemporalAdjusters.previousOrSame(firstDayOfWeek));

		LocalDate printDate = startOfCurrentWeek;
		for (int i = 0; i < 5; i++) {
			dates.add(printDate);
			printDate = printDate.plusDays(1);
		}
		return dates;

	}

	public List<Appointment> getAppointmentsOfTheWeek(int week) {

		List<Appointment> ga = new ArrayList<>();

		LocalDate now = LocalDate.now().plusDays(week * 7);
		DayOfWeek startOfCurrentWeek = WeekFields.of(Locale.getDefault()).getFirstDayOfWeek();
		LocalDate firstDayOfTheWeek = now.with(TemporalAdjusters.previousOrSame(startOfCurrentWeek));
		System.out.println(firstDayOfTheWeek);

		LocalDate lastDayOfTheWeek = now.plusDays(4);

		System.out.println(lastDayOfTheWeek);

		for (GroupAppointment g : groupAppointments) {
			System.out.println(firstDayOfTheWeek + " " + lastDayOfTheWeek + " " + g.getDate());
			int comp = g.getDate().compareTo(firstDayOfTheWeek);
			int comp2 = g.getDate().compareTo(lastDayOfTheWeek);
			if (comp > 0 && comp2 < 0)
				ga.add(g);
			if (comp == 0 && comp2 > 0)
				break;
		}

		for (IndividualAppointment g : appointments) {
			System.out.println(firstDayOfTheWeek + " " + lastDayOfTheWeek + " " + g.getDate());
			int comp = g.getDate().compareTo(firstDayOfTheWeek);
			int comp2 = g.getDate().compareTo(lastDayOfTheWeek);
			if (comp > 0 && comp2 < 0)
				ga.add(g);
			if (comp == 0 && comp2 > 0)
				break;
		}

		return ga;

	}

	public void addGroupAppointments(GroupAppointment g) {
		groupAppointments.add(g);
	}

	public void addIndividualAppointment(IndividualAppointment g) {
		appointments.add(g);
	}
	
	public void removeAppointment(IndividualAppointment ap) {
		appointments.remove(ap);
	}
	
	public void addEmotionalState(EmotionalState a) {
		emotionalState.add(a);
	}
	
	public void addAppointment(IndividualAppointment a) {
		appointments.add(a);
	}
	
	public void removeGroupAppointment(GroupAppointment ap) {
		groupAppointments.remove(ap);
	}

}
