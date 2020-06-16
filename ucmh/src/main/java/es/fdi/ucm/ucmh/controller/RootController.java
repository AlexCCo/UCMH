package es.fdi.ucm.ucmh.controller;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import es.fdi.ucm.ucmh.exceptionHandlers.ResourceNotFound;
import es.fdi.ucm.ucmh.model.Appointment;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.auxiliar.UserQueryStringNames;


@Controller
public class RootController {
	@Autowired
	private EntityManager entityManager;
	
	private static Logger log = LogManager.getLogger(RootController.class);
	
	private static String [] availableViews = {
		"ajustesPaciente",
		"misCitas",
		"estadisticasPaciente",
		"horarioPsicologo",
		"misPacientes",
		"/",
		"index"
	};
	
	@GetMapping(value = "")
	public String redirectToLogin() {
		return "patient";
	}

	//ERRORS HANDLING
	
	@ExceptionHandler(ResourceNotFound.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public String errorCode404NotFound() {
		log.error("the client faild my boy");
		return "404";
	}
	
}
