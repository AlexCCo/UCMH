package es.fdi.ucm.ucmh.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.http.HttpServletResponse;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import es.fdi.ucm.ucmh.controller.auxiliary.AuxiliaryStringPaths;
import es.fdi.ucm.ucmh.model.GroupAppointment;
import es.fdi.ucm.ucmh.model.PatientHistory;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.UserQueryStringNames;
import es.fdi.ucm.ucmh.transfer.CreateEntryReceivedData;
import es.fdi.ucm.ucmh.transfer.GroupAppointmentJsonRespone;
import es.fdi.ucm.ucmh.transfer.JSONTransferMessage;
import es.fdi.ucm.ucmh.transfer.PatientHistoryTransfer;
import es.fdi.ucm.ucmh.transfer.UserTransferData;
import es.fdi.ucm.ucmh.model.IndividualAppointment;

/**
 * @author GARCÍA GROSSI, PABLO
 * */
@Controller
@RequestMapping("/psicologo")
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
	
	@GetMapping("/psychologist")
	public String getUser(Model model) {
		User psy = refreshUser(userFromSession());
		model.addAttribute("pacientes", entityManager.createNamedQuery(
			"User.findPatientsOf", User.class).setParameter("psychologistId", psy.getId())
			.getResultList());
				
		session.setAttribute("msgURI", AuxiliaryStringPaths.PSY_SEND_MESSAGE_PATH);
		
		return "psychologist";
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
   
   //Del otro proyecto
   
	@GetMapping(value = {"", "/pacientes"})
	public String getUserPatients(Model model) {
		User psy = refreshUser(userFromSession());
		model.addAttribute("pacientes", entityManager.createNamedQuery(
			"User.findPatientsOf", User.class).setParameter("psychologistId", psy.getId())
			.getResultList());
		
		return "misPacientes";
	}
	
	@RequestMapping("/horario")
	public String horarioPsicologo(HttpSession session, Model model, @RequestParam(required = false) Integer weeks) {
		User requester = (User) session.getAttribute("u"); // TODO podría usar directamente el requester?
		User stored = entityManager.find(User.class, requester.getId());
		if (weeks == null)
			weeks = 0;
		model.addAttribute("u", stored);
		model.addAttribute("groupAppointments", stored.getAppointmentsOfTheWeek(weeks.intValue()));
		model.addAttribute("days", stored.getDaysOfTheWeek(weeks.intValue()));
		model.addAttribute("week", weeks);
		return "horarioPsicologo";
	}

	@PostMapping("/saveAppointment")
	@Transactional
	public String saveAppointment(Model model, HttpServletResponse response,
			@ModelAttribute @Valid GroupAppointment groupAppointment, BindingResult result, HttpSession session)
			throws IOException {
		User requester = (User) session.getAttribute("u");
		User stored = entityManager.find(User.class, requester.getId());

		int fecha = groupAppointment.getDate().compareTo(LocalDate.now());
		int hora = groupAppointment.getFinish_hour().compareTo(groupAppointment.getStart_hour());
		LocalTime ahora = LocalTime.now();
		int horaActual = groupAppointment.getStart_hour().compareTo(ahora);

		if (fecha == 0 && horaActual > 0 && hora > 0 || fecha > 0 && hora > 0) {
			groupAppointment.setPsychologist(stored);
			stored.addGroupAppointments(groupAppointment);
			entityManager.persist(groupAppointment);
			entityManager.flush();
		}
		return "redirect:/psicologo/horario";
	}


	@RequestMapping("/deleteAppointment")
	@Transactional
	public String deleteAppointment(Model model, HttpServletResponse response, HttpSession session,
			@RequestParam long id) throws IOException {
		User requester = (User) session.getAttribute("u");
		User stored = entityManager.find(User.class, requester.getId());
		GroupAppointment ga = entityManager.find(GroupAppointment.class, id);
		if(ga != null) {
			for (GroupAppointment it : stored.getGroupAppointments()) {
				if (it.equals(ga)) {
					stored.removeGroupAppointment(ga);
					entityManager.remove(ga);
					break;
				}
			}
		}
		else {
			IndividualAppointment ia = entityManager.find(IndividualAppointment.class, id);
			for (IndividualAppointment it : stored.getAppointments()) {
				if (it.equals(ia)) {
					stored.removeAppointment(ia);
					entityManager.remove(ia);
					break;
				}
			}
		}

		return "redirect:/psicologo/horario";
	}

	@RequestMapping("/modifyAppointment")
	@Transactional
	public String modifyGroupAppointment(Model model, HttpServletResponse response,
			@ModelAttribute @Valid GroupAppointment groupAppointment, BindingResult result, HttpSession session)
			throws IOException {
		User requester = (User) session.getAttribute("u");
		User stored = entityManager.find(User.class, requester.getId());
		GroupAppointment ga = entityManager.find(GroupAppointment.class, groupAppointment.getID());

		// int weeks = model.getAttribute("week"); //TODO podría usar directamente el
		// requester?

		for (GroupAppointment it : stored.getGroupAppointments()) {
			if (it.equals(ga)) {
				ga.setName(groupAppointment.getName());
				ga.setDate(groupAppointment.getDate());
				ga.setStart_hour(groupAppointment.getStart_hour());
				ga.setFinish_hour(groupAppointment.getFinish_hour());
				ga.setDescription(groupAppointment.getDescription());
				break;
			}
		}

		
		return "redirect:/psicologo/horario"; // devolvemos el model (los datos modificados) y la session para saber
												// quien es el usuario en todo momento
	}
	
	@RequestMapping("/addUsersOfGroupAppointments")
	@Transactional
	public String addUsersOfGroupAppointments(HttpServletResponse response, @RequestParam long[] values, @RequestParam long id,  HttpSession session) throws IOException 
	{
		User requester = (User) session.getAttribute("u");
		User stored = entityManager.find(User.class, requester.getId());
		GroupAppointment ga = entityManager.find(GroupAppointment.class, id);

		for (GroupAppointment it : stored.getGroupAppointments()) {
			if (it.equals(ga)) {
				List<User> ul = new ArrayList<>();
				for(int i = 0; i < values.length; ++i) {
					User u = entityManager.find(User.class, values[i]);
					if(u != null) { ul.add(u); }
					else {
						response.sendError(HttpServletResponse.SC_BAD_REQUEST, "No eres administrador, y éste no es tu perfil"); //TODO devuelve error
						return "redirect:/psicologo/horario";
					}
				}
				ga.removeAllPatients();
				ga.setPatient(ul);
				for (User u: ul) { u.addGroupAppointments(ga); }
				break;
			}
		}
		return "redirect:/psicologo/horario";
	}
	
	@RequestMapping(value = "/getUsersOfGroupAppointments", method = RequestMethod.POST,  consumes=MediaType.APPLICATION_JSON_VALUE)
	@Transactional
	public List<User> getUsersOfGroupAppointments(HttpServletResponse response, @RequestParam long id,  HttpSession session) throws IOException 
	{
		User requester = (User) session.getAttribute("u");
		User stored = entityManager.find(User.class, requester.getId());
		GroupAppointment ga = entityManager.find(GroupAppointment.class, id);

		List<User> ul = null;
		for (GroupAppointment it : stored.getGroupAppointments()) {
			if (it.equals(ga)) {
				ul = it.getPatient();
				break;
			}
		}
		return ul;
	}
}
