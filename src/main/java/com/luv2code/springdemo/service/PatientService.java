package com.luv2code.springdemo.service;

import java.util.List;

import com.luv2code.springdemo.entity.Patient;
import com.luv2code.springdemo.entity.Service;
import com.luv2code.springdemo.entity.Visit;

public interface PatientService {
	
	public List<Patient> getPatients();

	public void savePatient(Patient thePatient);

	public Patient getPatient(int theId);
	
	public Patient getPatient(String patientName) ;

	public void deletePatient(int theId);

	public void addVisit(Visit p ,int patientID);
	
	public List<Integer> getPaymentAndPayedAmounts(int patientId);
	
	//Services
	
	public List<Service> getServices();
	
	public void saveService(Service theService);
	
	public Service getService(int theId);
	
	public void deleteService(int theId) ;


	
}
