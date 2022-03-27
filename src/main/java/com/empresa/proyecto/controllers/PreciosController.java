package com.empresa.proyecto.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.empresa.proyecto.models.entity.CatalogoSubscricion;
import com.empresa.proyecto.models.service.IPreciosService;

@RestController
@RequestMapping("/api/precios")
@CrossOrigin(origins = {"http://localhost:4200/","*"})
public class PreciosController {

	@Autowired
	IPreciosService preciosService; 
	
	@GetMapping("/all")
	public List<CatalogoSubscricion> getPrices(){
		return preciosService.getAllPrices(); 
	}
	
}
