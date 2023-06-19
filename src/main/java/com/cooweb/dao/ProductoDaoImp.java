package com.cooweb.dao;


import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cooweb.model.Producto;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;


@Repository
@Transactional

public class ProductoDaoImp implements ProductoDao{
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public List<Producto> obtenerProductos() {
		
		String query="from Producto";
		List<Producto> resultadoProducto=entityManager.createQuery(query) .getResultList();
		
		return resultadoProducto;
	}

}
