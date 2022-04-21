package com.empresa.proyecto.models.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.empresa.proyecto.models.entity.Rutina;

public interface IRutinaDao extends CrudRepository<Rutina, Long> {


	//@Query("select r from Rutina r join fetch r.perfil p join fetch p.usuario u where u.username=?1")
	//public List<Rutina> getRutinaByUsername(String username); 
	
} 
 