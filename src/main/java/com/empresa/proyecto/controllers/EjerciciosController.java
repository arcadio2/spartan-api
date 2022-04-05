package com.empresa.proyecto.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.empresa.proyecto.models.entity.Ejercicio;
import com.empresa.proyecto.models.service.EjercicioService;

@RestController
@RequestMapping("/api/ejercicios")
@CrossOrigin(origins = {"http://localhost:4200/","*"})
public class EjerciciosController {
	
	@Autowired
	private EjercicioService ejercicioService; 
	
	
	@GetMapping("")
	public List<Ejercicio> getEjercicios(){
		return ejercicioService.findAll();
	}
	
	@GetMapping("/{nombre}")
	public List<Ejercicio> getEjercicios2(@PathVariable String nombre){
		return ejercicioService.findByNombre(nombre); 
	}

}
