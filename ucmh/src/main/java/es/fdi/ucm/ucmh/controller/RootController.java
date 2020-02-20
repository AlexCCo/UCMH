package es.fdi.ucm.ucmh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RootController {
	
	@GetMapping("/")
	public String indexPage() {
		return "index";
	}
	
	@GetMapping("/ajustesPaciente.html")
	public String ajustesPaciente() {
		return "ajustesPaciente";
	}
	
	@GetMapping("/misCitas.html")
	public String misCitas() {
		return "misCitas";
	}
	
	@GetMapping("/estadisiticasPaciente.html")
	public String estadisticasPaciente() {
		return "estadisiticasPaciente";
	}
	
}
