package es.fdi.ucm.ucmh.controller;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class PsychologistController {
	@Autowired
	EntityManager entityManager;
	
}
