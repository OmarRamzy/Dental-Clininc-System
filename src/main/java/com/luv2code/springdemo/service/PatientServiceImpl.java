package com.luv2code.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.dao.PatientDAO;
import com.luv2code.springdemo.dao.ServiceDAO;

import com.luv2code.springdemo.entity.Patient;
import com.luv2code.springdemo.entity.Visit;

@Service
public class PatientServiceImpl implements PatientService {

	// need to inject customer dao
	@Autowired
	private PatientDAO patientDAO;
	
	@Autowired
	private ServiceDAO serviceDAO;
	
	@Override
	@Transactional
	public List<Patient> getPatients() {
		return patientDAO.getPatients();
	}

	@Override
	@Transactional
	public void savePatient(Patient thePatient) {
		patientDAO.savePatient(thePatient);
	}
	
	@Override
	@Transactional
	public Patient getPatient(int theId) {
		return patientDAO.getPatient(theId);
	}

	
	@Override
	@Transactional
	public void deletePatient(int theId) {
		
		patientDAO.deletePatient(theId);
	}

	@Override
	@Transactional
	public void addVisit(Visit v, int patientId) {
		patientDAO.addVisit(v, patientId);
	}

	@Override
	@Transactional
	public Patient getPatient(String patientName) {
		return patientDAO.getPatient(patientName);
	}

	@Override
	@Transactional
	public List<Integer> getPaymentAndPayedAmounts(int patientId) {
		return patientDAO.getPaymentAndPayedAmounts(patientId);
	}

	@Override
	@Transactional
	public List<com.luv2code.springdemo.entity.Service> getServices() {
		return serviceDAO.getServices();
	}

	@Override
	@Transactional
	public void saveService(com.luv2code.springdemo.entity.Service theService) {
		serviceDAO.saveService(theService);
	}

	@Override
	@Transactional
	public com.luv2code.springdemo.entity.Service getService(int theId) {
		return serviceDAO.getService(theId);
	}

	@Override
	@Transactional
	public void deleteService(int theId) {
		serviceDAO.deleteService(theId);
	}




}





