package es.fdi.ucm.ucmh.controller;

import java.time.LocalDateTime;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
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

//			ESTO ES LO VUESTRO
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.GroupAppointmentRepository;
import es.fdi.ucm.ucmh.model.repositories.UserRepository;
import es.fdi.ucm.ucmh.controller.UserController;
import es.fdi.ucm.ucmh.model.GroupAppointment;
import es.fdi.ucm.ucmh.model.GroupAppointmentJsonRespone;
import es.fdi.ucm.ucmh.model.Message;


@Controller
public class PsychologistController {
	private static final Logger log = LogManager.getLogger(UserController.class);
/********************************************/


//			ESTO ES LO QUE EL PROFE TIENE
/*
import es.fdi.ucm.ucmh.model.GroupAppointment;
import es.fdi.ucm.ucmh.model.GroupAppointmentResponse;
import es.fdi.ucm.ucmh.model.Message;
import es.fdi.ucm.ucmh.model.User;


@Controller
@RequestMapping("/psy")
public class PsychologistController {
	private static final Logger log = LogManager.getLogger(PsychologistController.class);
//************************************ */	
	@Autowired
	EntityManager entityManager;
	
	@Autowired


    //		ESTO ES LO VUESTRO
	UserRepository userRepository;
	
	@Autowired
	GroupAppointmentRepository groupappointmentRepository;
	
	@Autowired
	private SimpMessagingTemplate messagingTemplate;
	
	@GetMapping("/psy/{id}")
	public String getUser(@PathVariable long id, Model model, HttpSession session) {
		User psy = entityManager.find(User.class, id);
		model.addAttribute("psychologist", psy);
		
		model.addAttribute("pacientes", entityManager.createQuery(
				"SELECT u FROM User u WHERE u.psychologist.id LIKE :id")
				.setParameter("id", id)
				.getResultList());
		
		if(psy == null)
			return "404";
		else
			return "misPacientes";
	/********************************************************/


	/* ESTO ES LO QUE EL PROFE TIENE
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
		return "misPacientes";*/
	}
	
	@PostMapping(path="/modify/{id}", produces = "application/json")
	@Transactional
	@ResponseBody
	public User modifyUser(@ModelAttribute User user, @RequestParam(required=false) String disorder,
			@RequestParam(required=false) String treatment, Model model, @PathVariable("id") long id)
	{
		User target = entityManager.find(User.class, id);
		target.setDisorder(disorder);
		target.setTreatment(treatment);
		model.addAttribute("user", target);
		return target;
	}
	
	@GetMapping(path="/pacient/{id}", produces = "application/json")
	@Transactional
	@ResponseBody
	public User getPacient(@PathVariable long id, Model model)
	{
		User pacient = entityManager.find(User.class, id);
		model.addAttribute("user", pacient);
		return pacient;
	}
	
	@PostMapping("/{id}/msg")
	@ResponseBody
	@Transactional
	public String postMsg(@PathVariable long id, 
			@RequestBody JsonNode o, Model model, HttpSession session) 
		throws JsonProcessingException {
		
		String text = o.get("message").asText();
		User u = entityManager.find(User.class, id);
		User sender = entityManager.find(
				User.class, ((User)session.getAttribute("u")).getId());
		model.addAttribute("user", u);
		
		// construye mensaje, lo guarda en BD
		Message m = new es.fdi.ucm.ucmh.model.Message();
		m.setTo(u);
		m.setFrom(sender);
		m.setText(text);
		entityManager.persist(m);
		entityManager.flush(); // to get Id before commit
		
		// construye json
		ObjectMapper mapper = new ObjectMapper();
		ObjectNode rootNode = mapper.createObjectNode();
		rootNode.put("from", sender.getFirstName() +  " " + sender.getLastName());
		rootNode.put("to", u.getFirstName() +  " " + u.getLastName());
		rootNode.put("text", text);
		rootNode.put("id", m.getId());
		String json = mapper.writeValueAsString(rootNode);
		
		log.info("Sending a message to {} with contents '{}'", id, json);

		//LO VUESTO >> messagingTemplate.convertAndSend("/user/"+u.getFirstName()+"/queue/updates", json);
		//LO DEL PROFE
		messagingTemplate.convertAndSend("/user/"+u.getFirstName()+"/queue/updates", json);
		return "{\"result\": \"message sent.\"}";
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
      
}
