package com.empresa.proyecto.models.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "rutinas")
public class Rutina implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	 
	@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
	@ManyToOne(fetch = FetchType.LAZY)
	private DiasSemana dia;   
	
	@ManyToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
	@JoinTable(name = "rutina_series", 
		joinColumns = @JoinColumn(name="rutina_id"),	
		uniqueConstraints =  {@UniqueConstraint(columnNames = {"rutina_id","serie_id"})} , 
		inverseJoinColumns = @JoinColumn(name="serie_id"))
	private List<Serie> series;

	public Long getId() {
		return id; 
	}

	public void setId(Long id) {
		this.id = id;
	}

	public DiasSemana getDia() {
		return dia;
	}

	public void setDia(DiasSemana dia) {
		this.dia = dia;
	} 

	public List<Serie> getSeries() {
		return series;
	} 

	public void setSeries(List<Serie> series) {
		this.series = series;
	}

	
	
	
}
