package com.cooweb.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.cooweb.model.Producto;

@Transactional
public interface ProductoDao {

	List<Producto> obtenerProductos();
}
