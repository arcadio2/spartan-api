package com.empresa.proyecto.controllers;

import java.net.MalformedURLException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.empresa.proyecto.models.entity.Usuario;

import com.empresa.proyecto.models.entity.Perfil;
import com.empresa.proyecto.models.entity.Role;
import com.empresa.proyecto.models.service.IUsuarioService;
import com.empresa.proyecto.services.IFileService;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = {"http://localhost:4200/","*"})
public class UsuarioController {

	@Autowired
	IUsuarioService usuarioService; 
	@Autowired
	IFileService fileService; 
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@PostMapping("/user/create")
	@ResponseStatus(HttpStatus.CREATED)//201
	//@Secured({})
	public ResponseEntity<?> createUser(@RequestBody @Valid Usuario usuario, BindingResult result){
		
		Map<String, Object> response = new HashMap<>();
		
			
			if(result.hasErrors()) {

				Map<String,String> errors = result.getFieldErrors()
						.stream()
						.collect(Collectors.toMap(
								e ->{
									return e.getField();
								}
								, 
								e->{
									return e.getDefaultMessage();
								}
								));
						  
				
				response.put("mensaje","Ocurrió un error al guardar, datos invalidos");
				response.put("errors", errors);
				return new ResponseEntity<Map<String,Object>>(response,HttpStatus.BAD_REQUEST);
			} 
			if(usuarioService.existeUsuarioByEmail(usuario.getEmail()) ) {
				response.put("mensaje", "El email ya está registrado");
				response.put("error","Email inválido");
				return new ResponseEntity<Map<String,Object>>(response,HttpStatus.INTERNAL_SERVER_ERROR);
			}else if(usuarioService.existeUsuarioByUsername(usuario.getUsername())) {
				response.put("mensaje", "El usuario ya está en uso");
				response.put("error","Username inváldo");
				return new ResponseEntity<Map<String,Object>>(response,HttpStatus.INTERNAL_SERVER_ERROR);
			}  
			
			try {
   
				List<Role> roles =  Arrays.asList(usuarioService.getRoleByName("ROLE_USER")); 
				   
				//roles.add(role);
	
				 
				usuario.setRoles(roles); 
				usuario.setEnabled(true);
				usuario.setPassword( passwordEncoder.encode( usuario.getPassword() )); 
				Usuario nuevoUsuario = usuarioService.save(usuario); 
				
				response.put("mensaje", "El usuario ha sido creado con éxito");
				response.put("usuario",nuevoUsuario); 
				return new ResponseEntity<Map<String,Object>>(response,HttpStatus.CREATED);
			}catch(Exception e) {
				response.put("Error", "Ha ocurrido un error al guardar \n"+e.getCause()); 
				System.out.println(e.getMessage());
				return new ResponseEntity<Map<String,Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 	
			}   

	}
	@GetMapping("/user/profile/{username}")
	@Secured({"ROLE_ADMIN","ROLE_USER"})
	public ResponseEntity<?> perfil(@PathVariable String username){
		Map<String, Object> response = new HashMap<>();
		Perfil perfil = null;  
		try {
			perfil = usuarioService.getProfileByUsername(username);
		}catch(Exception e) {
			response.put("error", "No se encontró el usuario"); 
			return new ResponseEntity<Map<String,Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 	
		}
		if(perfil == null) {
			response.put("error", "No se ha encontrado el perfil"); 
			return new ResponseEntity<Map<String,Object>>(response, HttpStatus.BAD_REQUEST); 	
		}
		response.put("mensaje", "Se ha encontrado el perfil"); 
		response.put("perfil", perfil); 
		
		return new ResponseEntity<Map<String,Object>>(response, HttpStatus.OK); 	
	}
	
	@PostMapping("/user/profile")
	@Secured({"ROLE_ADMIN","ROLE_USER","ROLE_INSTRUCTOR"})
	public ResponseEntity<?> createPerfil(@RequestBody Perfil perfil){
		Map<String, Object> response = new HashMap<>();
		System.out.println("ENTRAAAAAAAAA");
		
		Perfil perfilCreado = null; 
	   
		/*Obtenemos el usuario*/
		Usuario usuario = usuarioService.findByUsername(perfil.getUsuario().getUsername()); 
		perfil.setUsuario(usuario);
		perfil.setSexo(usuarioService.getSexoById(perfil.getSexo().getId())); 
		perfil.setFoto("no_user.png");
		System.out.println(perfil.getSexo().getId());
		try {
			perfilCreado = usuarioService.saveProfile(perfil); 
			
			
		}catch(Exception e) {
			response.put("error", "No se ha podido crear el perfil"); 
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
			return new ResponseEntity<Map<String,Object>>(response, HttpStatus.BAD_REQUEST); 	
		}
		
		
		response.put("mensaje", "El perfil ha sido actualizado con éxito"); 
		response.put("perfil", perfilCreado); 
		
		return new ResponseEntity<Map<String,Object>>(response, HttpStatus.OK); 	
	}
	
	
	
	@GetMapping("/hola")
	public List<String> index() {
		System.out.println("ENTRA");
		List<String> milista =new  ArrayList<String>(); 
		milista.add("GOLA"); 
		milista.add("Richie"); 
		
		
		return milista; 
	}
	
	
	
	/*IMAGEN DE PERFIL*/
	@GetMapping("/usuarios/uploads/img/{nombreFoto:.+}")
	public ResponseEntity<Resource> verFoto(@PathVariable String nombreFoto){
		Path rutaArchivo = Paths.get("uploads").resolve(nombreFoto).toAbsolutePath();
		Resource recurso = null; 
		try {
			recurso = fileService.cargar(nombreFoto); 
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} 
 
		/*Para que se pueda descargar el recurso*/
		HttpHeaders cabecera = new HttpHeaders();
		cabecera.add(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\" "+recurso.getFilename()+"\" ");
		
		return new ResponseEntity<Resource>(recurso,cabecera,HttpStatus.OK);
	}

	
	
}
