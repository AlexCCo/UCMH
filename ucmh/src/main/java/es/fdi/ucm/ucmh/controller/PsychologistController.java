package es.fdi.ucm.ucmh.controller;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import es.fdi.ucm.ucmh.model.User;

@Controller
public class PsychologistController {
	@Autowired
	EntityManager entityManager;
	
	@GetMapping("/psychologist/{id}")
	public String getUser(@PathVariable long id, Model model, HttpSession session) {
		User psy = entityManager.find(User.class, id);
		model.addAttribute("psychologist", psy);
		
		model.addAttribute("pacientes", entityManager.createQuery(
				"SELECT u FROM User u WHERE u.psychologist.ID LIKE :id")
				.setParameter("id", id)
				.getResultList());
		
		if(psy == null)
			return "404";
		else
			return "misPacientes";
	}
}
