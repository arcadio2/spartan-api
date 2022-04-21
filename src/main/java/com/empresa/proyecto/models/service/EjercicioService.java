package com.empresa.proyecto.models.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empresa.proyecto.models.dao.IEjerciciosDao;
import com.empresa.proyecto.models.dao.IMusculoDao;
import com.empresa.proyecto.models.entity.Ejercicio;
import com.empresa.proyecto.models.entity.Musculo;

@Service
public class EjercicioService implements IEjerciciosService{

	@Autowired
	private IEjerciciosDao ejercicioDao; 
	
	@Autowired
	private IMusculoDao musculosDao; 
	
	
	@Override
	public List<Ejercicio> findAll() {
		
		return (List<Ejercicio>) ejercicioDao.findAll();
	}

	@Override
	public Ejercicio findById(Long id) {
		return ejercicioDao.findById(id).orElse(null);
	}

	@Override
	public Ejercicio save(Ejercicio ejercicio) {
		
		return ejercicioDao.save(ejercicio);
	}

	@Override
	public void delete(Long id) {
		
		ejercicioDao.deleteById(id);
	}

	@Override
	public List<Ejercicio> findByNombre(String nombre) {
		// TODO Auto-generated method stub
		return ejercicioDao.getByEjercicio(nombre);
	}

	@Override
	public List<Musculo> findAllMusculos() {
		// TODO Auto-generated method stub
		return (List<Musculo>) musculosDao.findAll();
	}

	@Override
	public List<Ejercicio> findByNombreAndMusculo(String nombre,List<Long> id) {
		// TODO Auto-generated method stub
		return ejercicioDao.getByEjercicioAndByMusculo(nombre, id);
	}

	@Override
	public List<Ejercicio> findByMusculo(List<Long> id) {
		
		return ejercicioDao.getEjercicioByMusculo(id);
	}

}
