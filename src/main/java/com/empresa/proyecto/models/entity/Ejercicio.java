package com.empresa.proyecto.models.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "ejercicios") 
public class Ejercicio implements Serializable {

	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; 
	
	private String nombre; 
	 
	
	@ManyToOne
	private Musculo musculo; 
	
	
	public Long getId() {
		return id;
	}




	public void setId(Long id) {
		this.id = id;
	}




	public String getNombre() {
		return nombre;
	}




	public void setNombre(String nombre) {
		this.nombre = nombre;
	}




	public Musculo getMusculo() {
		return musculo;
	}




	public void setMusculo(Musculo musculo) {
		this.musculo = musculo;
	}




	private static final long serialVersionUID = 1L;

}
