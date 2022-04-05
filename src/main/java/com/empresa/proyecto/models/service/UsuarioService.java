package com.empresa.proyecto.models.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.empresa.proyecto.models.dao.IPerfilDao;
import com.empresa.proyecto.models.dao.ISexoDao;
import com.empresa.proyecto.models.dao.ISubscripcionDao;
import com.empresa.proyecto.models.dao.IUsuarioDao;
import com.empresa.proyecto.models.dao.RolDao;
import com.empresa.proyecto.models.entity.Perfil;
import com.empresa.proyecto.models.entity.Role;
import com.empresa.proyecto.models.entity.Sexo;
import com.empresa.proyecto.models.entity.Subscripcion;
import com.empresa.proyecto.models.entity.Usuario;


@Service
public class UsuarioService implements UserDetailsService,IUsuarioService{
	
	@Autowired
	private IUsuarioDao usuarioDao;
	@Autowired
	private IPerfilDao perfilDao; 
	@Autowired
	private ISexoDao sexoDao;
	@Autowired
	private ISubscripcionDao subDao; 
	
	
	@Autowired
	private RolDao roleDao; 
	
	/*
	 * Esta función retorna los detalles de usuarios de la librería de Spring security
	 * Todo esto a través del nombre de usuario, valida que existe y rehresamoos su passwordn, username y rol
	 * Además de qie si el usuario es activo
	 * */
	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Usuario usuario = usuarioDao.findByUsername(username);
		System.out.println("XDDD "+ usuario);
		if(usuario == null) {
			usuario = usuarioDao.finByEmail(username); 
			if(usuario == null) {
				throw new UsernameNotFoundException("No existe el usuario");
			}
			
		}
		
		List<GrantedAuthority> authorities = usuario.getRoles().
											stream().
											map(role->{
												return new SimpleGrantedAuthority(role.getNombre());
											}).collect(Collectors.toList());
		
		return new User(usuario.getUsername(), usuario.getPassword(), usuario.isEnabled(),true,true,true,authorities);
	} // interfaz de spring security


	@Override
	@Transactional(readOnly = true)
	public Usuario findByUsername(String username) {

		return usuarioDao.findByUsername(username);
	}


	@Override
	public Usuario save(Usuario usuario) {
		return usuarioDao.save(usuario);
	}


	@Override
	public List<Role> getRoles() {
		// TODO Auto-generated method stub
		return (List<Role>) roleDao.findAll();
	}


	@Override
	public Role getRoleByName(String name) {
		// TODO Auto-generated method stub
		return roleDao.getRoleByName(name);
	}

	/*
	 * Verifica si existe el usuario ya sea por username
	 * */

	@Override
	public boolean existeUsuarioByUsername(String valor) {
		Usuario u = new Usuario();
		u = usuarioDao.findByUsername(valor);
		if(u!=null) {
			return true; 
		}
		return false;
	}


	@Override
	public boolean existeUsuarioByEmail(String email) {
		Usuario u = new Usuario();
		u = usuarioDao.finByEmail(email);
		if(u!=null) {
			return true; 
		}
		return false;
	}


	@Override
	public Perfil getProfileByUsername(String username) {
		
		return perfilDao.getPerfilByUsername(username);
	}


	@Override
	public Perfil getProfileById(Long id) {
		// TODO Auto-generated method stub
		return perfilDao.findById(id).orElse(null);
	}


	@Override
	public Perfil saveProfile(Perfil perfil) {
		// TODO Auto-generated method stub
		return perfilDao.save(perfil);
	}


	@Override
	public Sexo getSexoById(Long id) {
		// TODO Auto-generated method stub
		return sexoDao.findById(id).orElse(null);
	}


	@Override
	public Subscripcion getSubscripcionById(Long id) {
		// TODO Auto-generated method stub
		return subDao.findById(id).orElse(null);
	}


	@Override
	public Subscripcion saveSubscripcion(Subscripcion sub) {
		// TODO Auto-generated method stub
		return subDao.save(sub);
	}
}
