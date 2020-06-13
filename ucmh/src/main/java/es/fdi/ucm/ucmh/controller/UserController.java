package es.fdi.ucm.ucmh.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
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
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import es.fdi.ucm.ucmh.model.Appointment;
import es.fdi.ucm.ucmh.model.GroupAppointment;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.auxiliar.UserQueryStringNames;
import es.fdi.ucm.ucmh.transfer.AppointmentTransfer;
import es.fdi.ucm.ucmh.transfer.GroupAppointmentJsonRespone;
import es.fdi.ucm.ucmh.transfer.JSONTransferMessage;

/**
 * @author Alejandro Cancelo Correia
 * */
@Controller
@RequestMapping(value = "/user")
public class UserController {
	private static Logger log = LogManager.getLogger(UserController.class);
	@Autowired
	private HttpSession session;
	@Autowired
	private EntityManager entityManager;
	
	private User userFromSession() {
		return (User)session.getAttribute("u");
	}
	
	/**
	 * It will obtain the main template for each user that logs in and
	 * prepare the model to show information of user appointments
	 * 
	 * @author Alejandro Cancelo Correia
	 * */
	@Secured(value = "ROLE_PAT")
	@GetMapping(value = "/")
	public String getUser(Model model) {
		User u = userFromSession();
		log.info("Request to obtain patient.html template from {}", u.getId());
		
		
		TypedQuery<Appointment> query = entityManager.createNamedQuery(
				UserQueryStringNames.GET_PATIENT_APPOINTMENTS, 
				Appointment.class);
		
		query.setParameter("userId", u.getId());
		
		List<AppointmentTransfer> list = new ArrayList<AppointmentTransfer>();
		//we return a transfer object because each Appointment class has more
		//information that its needede
		for(Appointment ap: query.getResultList()) {
			list.add(new AppointmentTransfer(ap));
		}
		
		model.addAttribute("appointments", list);
		model.addAttribute("user", u.getFirstName()+ ", " + u.getLastName());
		

		return "patient";
	}
	
	/**
	 * It will obtain the settings template
	 * 
	 * @author Alejandro Cancelo Correia
	 * */
	@Secured(value = "ROLE_PAT")
	@GetMapping(value = "/ajustesPaciente")
	public String getSettings(Model model) {
		User u = userFromSession();
		log.info("Request to obtain settings template from {}", u.getId());
		
		model.addAttribute("user", u);
		session.setAttribute("msgURI", "/user/msg/");
		return "ajustesPaciente";
	}
	
	/**
	 * It will obtain the settings template
	 * 
	 * @author Alejandro Cancelo Correia
	 * */
	@Secured(value = "ROLE_PAT")
	@GetMapping(value = "/estadisticasPaciente")
	public String getStatistics(Model model) {
		User u = userFromSession();
		log.info("Request to obtain settings template from {}", u.getId());
		
		model.addAttribute("user", u);
		
		return "estadisticasPaciente";
	}
	
	@Secured(value = "ROLE_PAT")
	@PostMapping(value = "/change-psy", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody JSONTransferMessage changePsychologistPetition(@RequestBody(required = false) String feedback) {
		User u = userFromSession();
		log.info("Request to change psychologist from {}", u.getId());
		
		return new JSONTransferMessage("ok");
	}
	
	private static class AppointmentSettings
	{
		private LocalDateTime date;

		public LocalDateTime getDate() {
			return date;
		}

		public void setDate(LocalDateTime date) {
			this.date = date;
		}
	}
	/**
	 * It will add a new appointment in the database.
	 * @param fecha
	 * @param hora
	 * @param result
	 * @return
	 * @author Pablo García Grossi
	 */
	@Secured(value = "ROLE_PAT")
	@PostMapping(value = "/saveAppointment", produces = { MediaType.APPLICATION_JSON_VALUE }, consumes = MediaType.APPLICATION_JSON_VALUE)
	   @ResponseBody
	   @Transactional
		public JSONTransferMessage saveAppointment(@RequestBody AppointmentSettings appointment) {
		User u = userFromSession();
		User psy = u.getPsychologist();
		
		Appointment returnedApp= new Appointment();
		
		TypedQuery<Appointment> query = entityManager.createNamedQuery(
				UserQueryStringNames.GET_PSY_APPOINTMENTS, 
				Appointment.class);
		query.setParameter("userId", psy.getId());
		

		for(Appointment aux: query.getResultList()) {
			if(appointment.getDate().truncatedTo(ChronoUnit.HOURS).equals(aux.getFecha().truncatedTo(ChronoUnit.HOURS)))
			{
				log.info("Ya existe una cita en esa misma hora");
				return new JSONTransferMessage("Ya existe una cita en esa misma hora");
			}
		}
		
		returnedApp.setFecha(appointment.getDate());
		returnedApp.setPatiente(u);
		returnedApp.setPychologist(psy);
		
		entityManager.persist(returnedApp);
		
		return new JSONTransferMessage("Todo bien");
	   }
}
