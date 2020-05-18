package com.luv2code.springdemo.dao;

import java.util.List;

import com.luv2code.springdemo.entity.Patient;
import com.luv2code.springdemo.entity.Visit;

public interface PatientDAO {

	public List<Patient> getPatients();

	public void savePatient(Patient thePatient);

	public Patient getPatient(int theId);
	
	public Patient getPatient(String patientName);

	public void deletePatient(int theId);

	public void addVisit(Visit p ,int patientID);
	
	public List<Integer> getPaymentAndPayedAmounts(int patientId);
}
