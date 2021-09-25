package com.aforo255.model.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.aforo255.model.entity.Usuario;

public interface UsuarioDao  extends CrudRepository<Usuario, Long>{

	public Usuario findByUsername (@Param ("nombre") String Username);
}
