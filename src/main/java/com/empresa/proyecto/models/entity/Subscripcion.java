package com.empresa.proyecto.models.entity;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "subscripcion")
public class Subscripcion implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private boolean active;
	
	@OneToOne 
	private CatalogoSubscricion tipo; 
	
	@Column(name = "fecha_subscripcion")
	@Temporal(TemporalType.DATE)
	private Date fechaSubscripcion;
	
	@Column(name = "fecha_fin")
	@Temporal(TemporalType.DATE)
	private Date fechaFin;
	
	
	@PrePersist
	public void prePersit() {
		this.fechaSubscripcion= new Date();
	}
	
	public Date calcularFechaFin(CatalogoSubscricion plan) {
		Date fechaHoy = new Date(); 
		//fechaHoy.compareTo(fechaHoy);
		LocalDateTime today = LocalDateTime.now();
		LocalDateTime fin = today.plusDays(plan.getDias());
		
		Date nuevaFecha = Date.from(fin.atZone(ZoneId.systemDefault()).toInstant()); ;
		return nuevaFecha; 
	}
	
	public Long getId() {
		return id;
	}




	public void setId(Long id) {
		this.id = id;
	}




	public boolean isActive() {
		return active;
	}




	public void setActive(boolean active) {
		this.active = active;
	}




	public CatalogoSubscricion getTipo() {
		return tipo;
	}




	public void setTipo(CatalogoSubscricion tipo) {
		this.tipo = tipo;
	}
	
	




	public Date getFechaFin() {
		return fechaFin;
	}

	public void setFechaFin(Date fechaFin) {
		this.fechaFin = fechaFin;
	}

	public Date getFechaSubscripcion() {
		return fechaSubscripcion;
	}

	public void setFechaSubscripcion(Date fechaSubscripcion) {
		this.fechaSubscripcion = fechaSubscripcion;
	}





	private static final long serialVersionUID = 1L;

}
