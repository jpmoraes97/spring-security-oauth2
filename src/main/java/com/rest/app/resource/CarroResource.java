package com.rest.app.resource;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.rest.app.model.Carro;
import com.rest.app.repository.CarroRepository;

@RestController
@RequestMapping("/carros")
public class CarroResource {

	@Autowired
	private CarroRepository repository;
	
	@GetMapping
	public List<Carro> listar(){
		return repository.findAll();
	}
	
	@GetMapping("/{id}")
	public Carro buscar(@PathVariable Long id) {
		return repository.findCarroById(id);
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public Carro salvar(@RequestBody Carro carro) {
		return repository.save(carro);
	}
	
	@PutMapping("/{id}")
	public Carro atualizar(@PathVariable Long id, @RequestBody Carro carro) {
		Carro entity = repository.findCarroById(id);
		BeanUtils.copyProperties(carro, entity, "id");
		repository.save(entity);
		return entity;
	}
	
	@DeleteMapping("/{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void deletar(@PathVariable Long id) {
		Carro carro = repository.findCarroById(id);
		repository.delete(carro);
	}
	
}