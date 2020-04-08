package es.fdi.ucm.ucmh.controller;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.repositories.UserRepository;
@Controller
public class PsychologistController {
	@Autowired
	EntityManager entityManager;
	UserRepository userRepository;
	@GetMapping("/psychologist/{id}")
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
}
