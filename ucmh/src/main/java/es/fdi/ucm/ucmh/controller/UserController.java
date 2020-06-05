package es.fdi.ucm.ucmh.controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import es.fdi.ucm.ucmh.model.Appointment;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.UserQueryStringNames;
import es.fdi.ucm.ucmh.transfer.AppointmentTransfer;

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
	@GetMapping(value = "")
	public String getUser(Model model) {
		User u = userFromSession();
		log.info("Request to obtain patient.html template from {}", u.getId());
		
		
		TypedQuery<Appointment> query = entityManager.createNamedQuery(
				UserQueryStringNames.GET_PATIENT_APPOINTMENTS, 
				Appointment.class);
		
		query.setParameter("patientId", u.getId());
		
		List<AppointmentTransfer> list = new ArrayList<AppointmentTransfer>();
		//we return a transfer object because each Appointment class has more
		//information that its needed
		for(Appointment ap: query.getResultList()) {
			list.add(new AppointmentTransfer(ap));
		}
		
		model.addAttribute("appointments", list);
		model.addAttribute("user", u.getFirstName()+ ", " + u.getLastName());
		

		return "patient";
	}

}
