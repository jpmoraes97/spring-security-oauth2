package com.rest.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rest.app.model.Carro;

public interface CarroRepository extends JpaRepository<Carro, Long> {

	Carro findCarroById(Long id);
	
}
