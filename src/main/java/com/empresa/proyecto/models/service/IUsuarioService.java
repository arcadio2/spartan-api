package com.empresa.proyecto.models.service;

import java.util.List;

import com.empresa.proyecto.models.entity.Role;
import com.empresa.proyecto.models.entity.Usuario;

public interface IUsuarioService {
	public Usuario findByUsername(String username);
	public Usuario save(Usuario usuario); 
	
	public List<Role> getRoles();
	
	public Role getRoleByName(String name); 
	
	public boolean existeUsuarioByUsername(String username);
	
	public boolean existeUsuarioByEmail(String email);
}