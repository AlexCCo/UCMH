package es.fdi.ucm.ucmh.controller;

import es.fdi.ucm.ucmh.exceptionHandlers.ResourceNotFound;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class RootController {
	private static Logger log = LogManager.getLogger(RootController.class);
	
	@RequestMapping(value = "/{usersTemplates}", method = RequestMethod.GET)
	public String indexPage(@PathVariable("usersTemplates") final String webUsers) {
		if(webUsers.equals("ajustesPaciente.html")) {
			return "ajustesPaciente";
		}
		else if(webUsers.equals("misCitas.html")) {
			return "misCitas";
		}
		else if(webUsers.equals("estadisticasPaciente.html")) {
			return "estadisiticasPaciente";
		}
		else if(webUsers.equals("")) {
			return "index";
		}
		else {
			throw new ResourceNotFound();
		}
	}

	//ERRORS HANDLING
	
	@ExceptionHandler(ResourceNotFound.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public String errorCode404NotFound() {
		log.error("the client faild my boy");
		return "404";
	}
	
}
