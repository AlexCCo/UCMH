package es.fdi.ucm.ucmh.controller;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import es.fdi.ucm.ucmh.model.User;

@Controller
public class UserController {
	@Autowired
	EntityManager jpaEntityManager;
	
	@GetMapping(value = "/user/{userID}/{userPage}")
	public String getUser(@PathVariable Long userID,@PathVariable String userPage, Model model) {
		User person = jpaEntityManager.find(User.class, userID);
		
		if(person == null) {
			return "404";
		}
		
		model.addAttribute("user", person);
		String pageToReturn = null;
		
		switch (userPage) {
		case "ajustes": pageToReturn = "ajustesPaciente"; break;
		case "pagina-principal": pageToReturn = "misCitas"; break;
		case "estadisticas": pageToReturn = "estadisticasPaciente"; break;
		default:
			break;
		}
		
		return pageToReturn;
	}
}
