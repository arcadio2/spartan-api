package com.empresa.proyecto.controllers;

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
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.empresa.proyecto.models.entity.Usuario;
import com.empresa.proyecto.models.entity.Role;
import com.empresa.proyecto.models.service.IUsuarioService;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = {"http://localhost:4200/","*"})
public class UsuarioController {

	@Autowired
	IUsuarioService usuarioService; 
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
	
	@GetMapping("/hola")
	public List<String> index() {
		System.out.println("ENTRA");
		List<String> milista =new  ArrayList<String>(); 
		milista.add("GOLA"); 
		milista.add("Richie"); 
		
		
		return milista; 
	}
	
	
	
}
