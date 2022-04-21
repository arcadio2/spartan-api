package com.empresa.proyecto.models.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empresa.proyecto.models.dao.IRutinaDao;

@Service
public class RutinaService implements IRutinaService{

	@Autowired
	private IRutinaDao rutinaDao; 
	
	
	
}
