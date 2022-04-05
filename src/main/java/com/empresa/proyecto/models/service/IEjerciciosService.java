package com.empresa.proyecto.models.service;

import java.util.List;

import com.empresa.proyecto.models.entity.Ejercicio;

public interface IEjerciciosService {

	public List<Ejercicio> findAll();
	public Ejercicio findById(Long id);
	public Ejercicio save(Ejercicio ejercicio); 
	public void delete(Long id); 
	
	public List<Ejercicio> findByNombre(String nombre);
	
	
}
