package com.empresa.proyecto.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.empresa.proyecto.models.entity.Ejercicio;
import com.empresa.proyecto.models.service.EjercicioService;
import com.empresa.proyecto.models.service.IRutinaService;

@RestController
@RequestMapping("/api/rutina")
@CrossOrigin(origins = {"http://localhost:4200/","*"})
public class RutinaController {
	
	@Autowired
	private EjercicioService ejercicioService; 
	
	@Autowired
	private IRutinaService rutinaService;
	
	@GetMapping("")
	public List<Ejercicio> getEjercicios(){
		return ejercicioService.findAll();
	}
	
}
