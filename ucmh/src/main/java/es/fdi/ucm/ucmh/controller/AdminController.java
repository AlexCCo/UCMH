package es.fdi.ucm.ucmh.controller;

import java.util.List;

import javax.persistence.EntityManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import es.fdi.ucm.ucmh.model.User;

@Controller
public class AdminController {
	private static Logger log = LogManager.getLogger(AdminController.class);
	
	@Autowired
	EntityManager entityManager;
	
	@GetMapping(value = "/admin/{adminId}")
	public String getAdminPage(@PathVariable Long adminId, Model model) {
		User admin = entityManager.find(User.class, adminId);
		
		if(admin == null) {
			return "404";
		}
		
		model.addAttribute("admin", admin);
		
		return "admin";
	}
	
	
	@RequestMapping(value = "/admin/{adminId}/users-list",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<User> getListUser(@PathVariable Long adminId) {
		
		//it will return a list of 10 users
		return null;
	}
	
	@RequestMapping(value = "/admin/{adminId}/user?name={userName}",
			method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody User getSingleUser(@PathVariable Long adminId, @PathVariable String userName) {
		
		
		return null;
	}
}
