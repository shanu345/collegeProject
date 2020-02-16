package com.proj.service;

import org.springframework.data.repository.CrudRepository;
import com.proj.model.ModelClass;
//event service repository interface.this interface extend CrudRepository class use for generic CRUD operations on a repository for a specific type.
public interface EventRepository extends CrudRepository<ModelClass, String> {
	//ModelClass findByEmail(String email);
}
