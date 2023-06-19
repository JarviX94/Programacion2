package com.cooweb.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cooweb.model.Producto;
import com.cooweb.model.Usuario;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;



@Repository
@Transactional

public class UsuarioDaoImp implements UsuarioDao{
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public List<Usuario> obtenerUsuarios() {
		
		String query="from Usuario";
		
		List<Usuario> resultadoUsuario=entityManager.createQuery(query) .getResultList();
		
		return resultadoUsuario;
	}

}