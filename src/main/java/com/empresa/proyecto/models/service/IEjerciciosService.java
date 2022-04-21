package com.empresa.proyecto.models.service;

import java.util.List;

import com.empresa.proyecto.models.entity.Ejercicio;
import com.empresa.proyecto.models.entity.Musculo;

public interface IEjerciciosService {

	public List<Ejercicio> findAll();
	public Ejercicio findById(Long id);
	public Ejercicio save(Ejercicio ejercicio); 
	public void delete(Long id); 
	
	public List<Ejercicio> findByNombre(String nombre);
	
	public List<Musculo> findAllMusculos();
	
	public List<Ejercicio> findByNombreAndMusculo(String nombre, List<Long> id);
	
	public List<Ejercicio> findByMusculo(List<Long> id);
}
