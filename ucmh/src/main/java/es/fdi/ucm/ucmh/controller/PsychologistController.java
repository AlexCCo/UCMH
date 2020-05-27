package es.fdi.ucm.ucmh.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.messaging.simp.SimpMessagingTemplate;
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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import es.fdi.ucm.ucmh.controller.auxiliary.AuxiliaryStringPaths;
import es.fdi.ucm.ucmh.model.GroupAppointment;
import es.fdi.ucm.ucmh.model.GroupAppointmentJsonRespone;
import es.fdi.ucm.ucmh.model.Message;
import es.fdi.ucm.ucmh.model.PatientHistory;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.UserQueryStringNames;
import es.fdi.ucm.ucmh.transfer.PatientHistoryTransfer;
import es.fdi.ucm.ucmh.transfer.UserTransferData;

/**
 * @author GARCÍA GROSSI, PABLO
 * */
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
	
	@GetMapping("")
	public String getUser(Model model) {
		User psy = refreshUser(userFromSession());
		model.addAttribute("pacientes", entityManager.createNamedQuery(
			"User.findPatientsOf", User.class).setParameter("psychologistId", psy.getId())
			.getResultList());
				
		session.setAttribute("msgURI", AuxiliaryStringPaths.PSY_SEND_MESSAGE_PATH);
		
		return "misPacientes";
	}
	
	@GetMapping("/horarioPsicologo")
	public String goToHorario()
	{
		return "horarioPsicologo";
	}
	
	//Edited by Alejandro Cancelo Correia
	@PostMapping(path="/modify/{mail}", produces = { MediaType.APPLICATION_JSON_VALUE })
	@Transactional
	@ResponseBody
	public UserTransferData modifyUser(@ModelAttribute User user, @RequestParam(required=false) String disorder,
			@RequestParam(required=false) String treatment,@PathVariable long mail)
	{
		TypedQuery<User> query = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
		query.setParameter("mail", mail);
		User target = query.getSingleResult();
		target.setDisorder(disorder);
		target.setTreatment(treatment);
		entityManager.merge(target);
		return new UserTransferData(target);
	}
	
	//Edited by Alejandro Cancelo Correia
	@GetMapping(path="/pacient/{mail}", produces = { MediaType.APPLICATION_JSON_VALUE })
	@Transactional
	@ResponseBody
	public UserTransferData getPacient(@PathVariable String mail)
	{
		TypedQuery<User> query = entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
		query.setParameter("mail", mail);
		User pacient = query.getSingleResult();
		return new UserTransferData(pacient);
	}
		
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
   @GetMapping(value = "/history-of/{userMail}", produces = MediaType.APPLICATION_JSON_VALUE)
   public @ResponseBody List<PatientHistoryTransfer> getHistoryOf(@PathVariable String userMail){
	   TypedQuery<User> validateMail= entityManager.createNamedQuery(UserQueryStringNames.GET_USER_BY_MAIL, User.class);
	   validateMail.setParameter("mail", userMail);
	   
	   User u = validateMail.getSingleResult();
	   //the is no user registered with that mail
	   if(u == null) {
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
}
