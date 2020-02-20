package es.fdi.ucm.ucmh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
}
