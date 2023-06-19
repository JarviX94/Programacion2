package com.cooweb.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.cooweb.model.Usuario;

@Transactional
public interface UsuarioDao{

	List<Usuario> obtenerUsuarios();
}
