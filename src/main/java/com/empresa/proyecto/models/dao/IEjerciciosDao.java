package com.empresa.proyecto.models.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.empresa.proyecto.models.entity.Ejercicio;

public interface IEjerciciosDao extends CrudRepository<Ejercicio, Long>{
	@Query("select e from Ejercicio e where e.nombre like %?1%")
	public List<Ejercicio> getByEjercicio(String nombre);
}
