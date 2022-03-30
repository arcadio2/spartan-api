package com.empresa.proyecto.models.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.empresa.proyecto.models.entity.Perfil;



public interface IPerfilDao extends CrudRepository<Perfil, Long>{
	@Query("select p from Perfil p join fetch p.usuario u where u.username=?1")
	//@Query("select f from Factura f join fetch f.cliente c join fetch f.items l join fetch l.producto where f.id=?1")
	public Perfil getPerfilByUsername(String username); 
}
