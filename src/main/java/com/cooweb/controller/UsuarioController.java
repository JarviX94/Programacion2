 package com.cooweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cooweb.dao.UsuarioDao;
import com.cooweb.model.Usuario;

@SpringBootApplication
@RestController
public class UsuarioController {
	
	@Autowired
	private UsuarioDao usuarioDao;
	
	@RequestMapping(value="AltaUsuario")
	public Usuario crearUsuario() {
		Usuario usuario=new Usuario();
		usuario.setNombre("Javier");
		usuario.setApellido("Villaro");
		usuario.setDNI("38207789");
		usuario.setDireccion("Capilla del Rosario 1965");
		usuario.setEmail("javi_f40_94@hotmail.com");
		usuario.setPassword("123456789");
		usuario.setTelefono("2616633333");
		
		return usuario;
	}	
	
	
	@RequestMapping(value="ListarUsuarios")
	public List<Usuario> getUsuarios() {
		
		List<Usuario> user=usuarioDao.obtenerUsuarios();
		
		return user;
	}
}

	