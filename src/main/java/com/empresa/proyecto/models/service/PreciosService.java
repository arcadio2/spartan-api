package com.empresa.proyecto.models.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empresa.proyecto.models.dao.IPreciosDao;
import com.empresa.proyecto.models.entity.CatalogoSubscricion;

@Service
public class PreciosService implements IPreciosService{

	@Autowired
	private IPreciosDao preciosDao; 
	
	@Override
	public List<CatalogoSubscricion> getAllPrices() {
		// TODO Auto-generated method stub
		return (List<CatalogoSubscricion>) preciosDao.findAll();
	}

	@Override
	public CatalogoSubscricion getPrecioById(Long id) {
		// TODO Auto-generated method stub
		return preciosDao.findById(id).orElse(null);
	}

}
