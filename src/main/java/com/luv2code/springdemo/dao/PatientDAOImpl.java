package com.luv2code.springdemo.dao;

import java.util.Arrays;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.luv2code.springdemo.entity.Patient;
import com.luv2code.springdemo.entity.Visit;

@Repository
public class PatientDAOImpl implements PatientDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
			
	@Override
	public List<Patient> getPatients() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query  ... sort by last name
		Query<Patient> theQuery = 
				currentSession.createQuery("from Patient ",
						Patient.class);
		
		// execute query and get result list
		List<Patient> patients = theQuery.getResultList();
				
		// return the results		
		return patients;
	}

	@Override
	public void savePatient(Patient thePatient) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/upate the customer ... finally LOL
		currentSession.saveOrUpdate(thePatient);
		
	}

	@Override
	public Patient getPatient(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		Patient thePatient = currentSession.get(Patient.class, theId);
		
		return thePatient;
	}
	
	@Override
	public Patient getPatient(String patientName) {
		
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = 
				currentSession.createQuery("from Patient where fullName like :name ",
						Patient.class);
		theQuery.setParameter("name", patientName);
		// execute query and get result list
		try {
		Patient patient = (Patient) theQuery.getSingleResult();
		
			return patient;
		}
		catch(Exception e) {
			System.out.println("Not Founnd");
			return null;
		}
	}


	@Override
	public void deletePatient(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Patient where id=:patientId");
		theQuery.setParameter("patientId", theId);
		
		theQuery.executeUpdate();		
	}

	@Override
	public void addVisit(Visit v , int patientID) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		Patient thePatient = currentSession.get(Patient.class, patientID);
		
		int totalPayment=0 , totalPayed=0;
		
		if(thePatient.getVisits().size()>0) {
				totalPayment=thePatient.getVisits().get(thePatient.getVisits().size()-1).getPayment();
				totalPayed=thePatient.getVisits().get(thePatient.getVisits().size()-1).getPayed();
		}
		 System.out.println(totalPayment + " "+totalPayed );
		 
		 v.setPayed(totalPayed+ v.getPayed());
		 v.setPayment(totalPayment+v.getPayment());
		 
		System.out.println(thePatient.getVisits().size());
		thePatient.addVisit(v);
		System.out.println(thePatient.getVisits().size());
		currentSession.saveOrUpdate(thePatient);
		System.out.println(thePatient.getVisits().size());
		
	}

	@Override
	public List<Integer> getPaymentAndPayedAmounts(int patientId) {
		Patient patient = getPatient(patientId);
		
		int totalPayment=0 , totalPayed=0;
		 totalPayment= patient.getVisits().stream().map(p -> p.getPayment()).reduce(Integer::sum).get();
		 totalPayed= patient.getVisits().stream().map(p -> p.getPayed()).reduce(Integer::sum).get();
		
		List<Integer> amounts = Arrays.asList(totalPayment,totalPayed);
		
		return amounts;
		
		
	}


}