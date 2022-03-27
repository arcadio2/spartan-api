package com.empresa.proyecto.models.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity //planes
@Table(name = "c_subscripcion")
public class CatalogoSubscricion  implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "tipo_subscripcion")
	private String tipoSubscripcion; 
	
	private Double precio;
	
	
	
	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getTipoSubscripcion() {
		return tipoSubscripcion;
	}



	public void setTipoSubscripcion(String tipoSubscripcion) {
		this.tipoSubscripcion = tipoSubscripcion;
	}



	public Double getPrecio() {
		return precio;
	}



	public void setPrecio(Double precio) {
		this.precio = precio;
	}



	private static final long serialVersionUID = 1L;

}
