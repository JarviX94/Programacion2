package com.cooweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cooweb.dao.ProductoDao;
import com.cooweb.model.Producto;

@SpringBootApplication
@RestController

public class ProductoController {
	
	@Autowired
	private ProductoDao productoDao;

	@RequestMapping(value="AltaProducto")
	public Producto crearProducto( ) {
		Producto producto=new Producto();
		producto.setNombreProducto("Playstation 5");
		producto.setTipoProducto("Videojuegos");
		producto.setPrecioProducto(300000.00);
		producto.setStock(10.00);
		
		return producto;
	}
	
	
		@RequestMapping(value="ListarProductos")
		public List<Producto> getUsuarios() {
			
			List<Producto> product=productoDao.obtenerProductos();
			
			return product;
		}
}
	
