package es.fdi.ucm.ucmh.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import es.fdi.ucm.ucmh.controller.auxiliary.AuxiliaryStringPaths;
import es.fdi.ucm.ucmh.model.Appointment;
import es.fdi.ucm.ucmh.model.GroupAppointment;
import es.fdi.ucm.ucmh.model.PatientHistory;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.auxiliar.UserQueryStringNames;
import es.fdi.ucm.ucmh.transfer.AppointmentTransfer;
import es.fdi.ucm.ucmh.transfer.CreateEntryReceivedData;
import es.fdi.ucm.ucmh.transfer.GroupAppointmentJsonRespone;
import es.fdi.ucm.ucmh.transfer.JSONTransferMessage;
import es.fdi.ucm.ucmh.transfer.PatientHistoryTransfer;
import es.fdi.ucm.ucmh.transfer.UserTransferData;


@Controller
@RequestMapping("/psy")
public class PsychologistController {
	private static final Logger log = LogManager.getLogger(PsychologistController.class);
	@Autowired
	EntityManager entityManager;
	
	@Autowired
	private SimpMessagingTemplate messagingTemplate;
	
	@Autowired // this makes httpSession always available in each method
	private HttpSession session;
	
	private User userFromSession() {
		return (User)session.getAttribute("u");
	}
	
	private User refreshUser(User u) {
		return entityManager.find(User.class, u.getId());
	}
	
	/**
	 * Adds a list of the psychologist's patients to the model and returns to the psychologist main page.
	 * @param model
	 * @return
	 */
	@Secured(value = "ROLE_PSY")
	@GetMapping("")
	public String getUser(Model model) {
		log.info("request made by psychologist with id {} "
		   		+ "to create retrive psychologist template", userFromSession().getId());
		User psy = refreshUser(userFromSession());
		model.addAttribute("pacientes", entityManager.createNamedQuery(
			"User.findPatientsOf", User.class).setParameter("psychologistId", psy.getId())
			.getResultList());
				
		session.setAttribute("msgURI", AuxiliaryStringPaths.PSY_SEND_MESSAGE_PATH);
		
		return "psychologist";
	}
	
	/**
	 * Gets the determined user in order to modify or to save a new disorder or treatment
	 * @param user
	 * @param disorder
	 * @param treatment
	 * @param mail
	 * @return
	 */
	@Secured(value = "ROLE_PSY")
	@PostMapping(path="/modify/{mail}", produces = { MediaType.APPLICATION_JSON_VALUE })
	@Transactional
	@ResponseBody
	public UserTransferData modifyUser(@ModelAttribute User user, @RequestParam(required=false) String disorder,
			@RequestParam(required=false) String treatment,@PathVariable long mail)
	{
		log.info("request made by psychologist with id {} "
		   		+ "to change information about user {}", userFromSession().getId(), mail);
		TypedQuery<User> query = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
		query.setParameter("mail", mail);
		User target = query.getSingleResult();
		target.setDisorder(disorder);
		target.setTreatment(treatment);
		entityManager.merge(target);
		return new UserTransferData(target);
	}
	
	@Secured(value = "ROLE_PSY")
	@GetMapping(path="/pacient/{mail}", produces = { MediaType.APPLICATION_JSON_VALUE })
	@Transactional
	@ResponseBody
	public UserTransferData getPacient(@PathVariable String mail)
	{
		log.info("request made by psychologist with id {} "
		   		+ "to obtain information about user {}", userFromSession().getId(), mail);
		TypedQuery<User> query = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
		query.setParameter("mail", mail);
		User pacient = query.getSingleResult();
		return new UserTransferData(pacient);
	}

	@Secured(value = "ROLE_PSY")
	@PostMapping(value = "/saveGroupAppointment", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	@Transactional
	public GroupAppointmentJsonRespone saveEmployee(@ModelAttribute @Valid GroupAppointment group_appointment,
         BindingResult result) {

	  GroupAppointmentJsonRespone respone = new GroupAppointmentJsonRespone();
      
      if(result.hasErrors()){
         
         //Get error message
         Map<String, String> errors = result.getFieldErrors().stream()
               .collect(
                     Collectors.toMap(FieldError::getField, FieldError::getDefaultMessage)
                 );
         
		 respone.setValidated(false);
         respone.setErrorMessages(errors);
      }else{
         // Implement business logic to save employee into database
         //..
         respone.setValidated(true);
         respone.setGroupAppointment(group_appointment); //TODO revisar
         entityManager.persist(respone.getGroupAppointment());      }
	  return respone;
   }
   
   /**
    * @author Alejandro Cancelo Correia
    * */
	@Secured(value = "ROLE_PSY")
	@GetMapping(value = "/history-of/{userMail}", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<PatientHistoryTransfer> getHistoryOf(@PathVariable String userMail){
	   log.info("get history request made by psychologist with id {} "
	   		+ "to obtain psychological history from user with mail {}", userFromSession().getId(), userMail);
	   TypedQuery<User> validateMail= entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
	   validateMail.setParameter("mail", userMail);
	   
	   User u = validateMail.getSingleResult();
	   //the is no user registered with that mail
	   if(u == null) {
		   log.error("get history request FAILED: There is no such user with mail {}", userMail);
		   return null;
	   }
	   
	   TypedQuery<PatientHistory> query = entityManager.createNamedQuery(
			   								UserQueryStringNames.GET_PATIENT_HISTORY_MADE_BY,
			   								PatientHistory.class);
	   query.setParameter("psyId", userFromSession().getId());
	   query.setParameter("patientMail", userMail);
	   
	   List<PatientHistoryTransfer> transfer = new ArrayList<PatientHistoryTransfer>();
	   
	   for(PatientHistory ph : query.getResultList()) {
		   transfer.add(new PatientHistoryTransfer(ph));
	   }
	   
	   return transfer;
   }
   
   /**
    * 
    * @author Alejandro Cancelo Correia
    * */
	@Secured(value = "ROLE_PSY")
	@PostMapping(value = "/create-entry", consumes = MediaType.APPLICATION_JSON_VALUE,
		   produces = MediaType.APPLICATION_JSON_VALUE)
	@Transactional
	public @ResponseBody JSONTransferMessage createHistoryEntryForPatient(@RequestBody CreateEntryReceivedData request){
	   log.info("request made by psychologist with id {} "
	   		+ "to create a new history entry for user", userFromSession().getId(), request.getMail());
	   
	   TypedQuery<User> query = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
	   query.setParameter("mail", request.getMail());
	   
	   User u = query.getSingleResult();
	   
	   if(u == null) {
		   log.info("REJECTED: Request of psychologist with id {} "
		   		+ "to create new history entry for user {}", userFromSession().getId(), request.getMail());
		   return new JSONTransferMessage("error");
	   }
	   
	   try {
		   PatientHistory newHistory = new PatientHistory();
		   newHistory.setEntryDate(LocalDateTime.parse(request.getDate(), DateTimeFormatter.ISO_LOCAL_DATE_TIME));
		   newHistory.setEntryText(request.getText());
		   newHistory.setMadeBy(userFromSession());
		   newHistory.setReferredUserMail(request.getMail());
		   
		   entityManager.persist(newHistory);
	   }catch(Exception e) {
		   log.info("REJECTED: Request of psychologist with id {} "
			   		+ "to create new history entry for user {}", userFromSession().getId(), request.getMail());
		   return new JSONTransferMessage("Error");
	   }
	   
	   return new JSONTransferMessage("ok");
   }
   
	/**
	 * @author Alejandro Cancelo Correia
	 * */
	@Secured(value = "ROLE_PSY")
	@GetMapping(value = "/psychologistAppointments")
	public String getPsychologistAppointmetsTemplate(Model model){
		log.info("request made by psychologist with id {} "
		   		+ "to create get the appointments template", userFromSession().getId());
		TypedQuery<Appointment> query = entityManager.createNamedQuery(UserQueryStringNames.GET_PSY_APPOINTMENTS, Appointment.class);
		
		query.setParameter("userId", userFromSession().getId());
		
		List<AppointmentTransfer> transferList = new ArrayList<AppointmentTransfer>();
		String name = null;
		for(Appointment appo: query.getResultList()) {
			name = appo.getPatiente().getFirstName() + ", " + appo.getPatiente().getLastName();
			transferList.add(new AppointmentTransfer(appo.getFecha().toString().replaceFirst("T", " "),
													 name,
													 appo.getPatiente().getMail()
													 ));
		}
		
		model.addAttribute("appnList", transferList);
		
		return "psychologistAppointments";
	}
	
	
	private static class DelAppointmentParam{
		private String mail;
		private LocalDateTime date;
		/**
		 * @param mail the mail to set
		 */
		public void setMail(String mail) {
			this.mail = mail;
		}
		/**
		 * @param date the date to set
		 */
		public void setDate(String date) {
			this.date = LocalDateTime.parse(date);
		}
		
		
	}
	/**
	 * @author Alejandro Cancelo Correia
	 * */
	@Secured(value = "ROLE_PSY")
	@PostMapping(value = "/remove-appoinment", consumes = MediaType.APPLICATION_JSON_VALUE,
											   produces = MediaType.APPLICATION_JSON_VALUE)
	@Transactional
	public @ResponseBody JSONTransferMessage obtainMoreAppointmentsOf(@RequestBody DelAppointmentParam param) {
		User u = userFromSession();
		log.info("request made by psychologist with id {} "
		   		+ "to remove an appoinment with user {}", u.getId(), param.mail);
		
		TypedQuery<User> userQuery = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
		User patient = null;
		
		try {
			userQuery.setParameter("mail", param.mail);
			patient = userQuery.getSingleResult();
			
		}catch (NoResultException e) {
			log.error("Request to remove and appointment with user {} "
					+ "made by psychologist: {}. FAILED: reason= {}",
					param.mail,
					u.getId(),
					e.getCause()
					);
			return new JSONTransferMessage("That mail doesn't exits");
		} catch (Exception e) {
			log.error("Request to remove and appointment with user {} "
					+ "made by psychologist: {}. FAILED: reason= {}",
					param.mail,
					u.getId(),
					e.getCause()
					);
			return new JSONTransferMessage("Some error occurred!");
		}
		
		entityManager.createNamedQuery(UserQueryStringNames.DELETE_APPOINTMENT_OF_PAT)
		       .setParameter("userId", patient.getId())
		       .setParameter("date", param.date)
		       .executeUpdate();

		entityManager.createNamedQuery(UserQueryStringNames.DELETE_APPOINTMENT_OF_PSY)
	          .setParameter("userId", u.getId())
	          .setParameter("date", param.date)
	          .executeUpdate();
		
		return new JSONTransferMessage("ok");
	}
	
	/**
	 * @author Alejandro Cancelo Correia
	 * */
	@Secured(value = "ROLE_PSY")
	@PostMapping(value = "/create-appoinment", consumes = MediaType.APPLICATION_JSON_VALUE,
											   produces = MediaType.APPLICATION_JSON_VALUE)
	@Transactional
	public @ResponseBody JSONTransferMessage createNewAppointmentWith(@RequestBody DelAppointmentParam param) {
		User u = userFromSession();
		log.info("request made by psychologist with id {} "
		   		+ "to create an appoinment with user {}", u.getId(), param.mail);
		
		TypedQuery<User> query = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
		
		User patient = null;
		
		try {
			query.setParameter("mail", param.mail);
			patient = query.getSingleResult();
			
		}catch (NoResultException e) {
			log.error("Request to remove and appointment with user {} "
					+ "made by psychologist: {}. FAILED: reason= {}",
					param.mail,
					u.getId(),
					e.getCause()
					);
			return new JSONTransferMessage("That mail doesn't exits");
		} catch (Exception e) {
			log.error("Request to remove and appointment with user {} "
					+ "made by psychologist: {}. FAILED: reason= {}",
					param.mail,
					u.getId(),
					e.getCause()
					);
			return new JSONTransferMessage("Some error occurred!");
		}
		
		Appointment created = new Appointment();
		created.setFecha(param.date);
		created.setPatiente(patient);
		created.setPychologist(u);
		
		entityManager.persist(created);
		
		return new JSONTransferMessage("ok");
	}
}
