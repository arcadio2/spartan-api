package com.empresa.proyecto.models.service;

import java.util.List;

import com.empresa.proyecto.models.entity.CatalogoSubscricion;

public interface IPreciosService {

	public List<CatalogoSubscricion> getAllPrices(); 
	
	public CatalogoSubscricion getPrecioById(Long id); 
	
}
