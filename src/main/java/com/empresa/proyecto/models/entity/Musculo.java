package com.empresa.proyecto.models.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "musculos") 
public class Musculo implements Serializable{

	/**
	 *   
	 */
	private static final long serialVersionUID = 1L;

	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; 
	
	
	private String musculo;
  
	
	public Long getId() { 
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	} 

	public String getMusculo() {
		return musculo;
	}

	public void setMusculo (String ejercicio) {
		this.musculo = ejercicio;
	} 
	
	
	
	
}
