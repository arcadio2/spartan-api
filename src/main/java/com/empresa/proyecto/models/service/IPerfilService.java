package com.empresa.proyecto.models.service;

import com.empresa.proyecto.models.entity.Perfil;

public interface IPerfilService {

	public Perfil getProfileByUsername(String username);
	public Perfil getProfileById(Long id);
	public Perfil save(Perfil perfil); 
	
	
}
