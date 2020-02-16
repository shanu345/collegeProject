package com.proj.service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.proj.model.TraningClass;

//training service repository interface.this interface extend CrudRepository class use for generic CRUD operations on a repository for a specific type.
public interface TrainingRepository extends CrudRepository<TraningClass, String> {
	TraningClass findBytraname(String traname);

}
