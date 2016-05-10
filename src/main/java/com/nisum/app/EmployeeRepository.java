package com.nisum.app;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.query.Param;

import com.nisum.app.model.Employee;

public interface EmployeeRepository extends MongoRepository<Employee, String> {
	 
	public List<Employee> findByProject(@Param("project") String project);
	
}
