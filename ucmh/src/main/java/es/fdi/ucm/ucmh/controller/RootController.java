package es.fdi.ucm.ucmh.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RootController {
	private static Logger log = LogManager.getLogger(RootController.class);

	@GetMapping("index") 
	public String ppal() {
		return "index";
	}

	@GetMapping("") 
	public String vacio() {
		return "index";
	}

	//
	// FIXME: migrate to their own controllers
	//
	@GetMapping("ajustesPaciente") 
	public String ajustes() {
		return "ajustesPaciente";
	}

	@GetMapping("misCitas") 
	public String citas() {
		return "misCitas";
	}

	@GetMapping("estadisticasPaciente") 
	public String estadisticas() {
		return "estadisticasPaciente";
	}

	@GetMapping("horarioPsicologo") 
	public String horarioPsicologo() {
		return "horarioPsicologo";
	}

	@GetMapping("misPacientes") 
	public String misPacientes() {
		return "misPacientes";
	}
}
