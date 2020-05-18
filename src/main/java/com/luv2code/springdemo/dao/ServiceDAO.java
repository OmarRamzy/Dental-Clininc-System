package com.luv2code.springdemo.dao;

import java.util.List;

import com.luv2code.springdemo.entity.Service;


public interface ServiceDAO {

	public List<Service> getServices();

	public void saveService(Service theService);

	public Service getService(int theId);
	
	public void deleteService(int theId);

	
}
