package com.empresa.proyecto.models.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.empresa.proyecto.models.entity.Ejercicio;

public interface IEjerciciosDao extends CrudRepository<Ejercicio, Long>{
	@Query("select e from Ejercicio e where e.nombre like %?1%")
	public List<Ejercicio> getByEjercicio(String nombre);
	
	@Query("select e from Ejercicio e join fetch e.musculo m where e.nombre like %?1% and m.id in ?2")
	public List<Ejercicio> getByEjercicioAndByMusculo(String nombre, List<Long> id);
	
	
	@Query("select e from Ejercicio e join fetch e.musculo m where m.id in ?1")
	public List<Ejercicio> getEjercicioByMusculo( List<Long> id);
	
}
