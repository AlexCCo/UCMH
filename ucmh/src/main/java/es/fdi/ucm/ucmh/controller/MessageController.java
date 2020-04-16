package es.fdi.ucm.ucmh.controller;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import es.fdi.ucm.ucmh.controller.MessageController;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.utilities.CheckUserUtils;

@Controller
public class MessageController{
	private static final Logger LOG = LogManager.getLogger(MessageController.class);
	
	@Autowired
	private EntityManager entityManager;

	
	
	@GetMapping(value = "/{userType}/{userId}/messages")
	public String getAdminMessages(@PathVariable Long userId, @PathVariable String userType,
								   Model model, HttpSession session) {
		
		System.out.println(System.lineSeparator() + "GET request made by: " + userId + " type: " + userType);
		if(!CheckUserUtils.checkAllPaths(userType)) {
			System.out.println(System.lineSeparator() + "GET request made by: " + userId + " REJECTED! bad path");
			return "404";
		}
		
		User u = CheckUserUtils.checkAndRetrieveUserBy(userId, entityManager, userType.toUpperCase());
		
		if(u == null) {
			System.out.println(System.lineSeparator() + "GET request made by: " + userId + " REJECTED! bad user type");
			return "404";
		}
		
		model.addAttribute("user", u);
		
		return "mensajesReEn";
	}
	
}
