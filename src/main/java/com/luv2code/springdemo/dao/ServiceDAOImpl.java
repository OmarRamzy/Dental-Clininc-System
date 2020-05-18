package com.luv2code.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.luv2code.springdemo.entity.Service;

@Repository
public class ServiceDAOImpl implements ServiceDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Service> getServices() {
		
		Session session = sessionFactory.getCurrentSession();
		Query<Service> query = session.createQuery("from Service" , Service.class);
		
		List<Service> services = query.getResultList();
		
		return services;
	}

	@Override
	public void saveService(Service theService) {
		
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(theService);
	}

	@Override
	public Service getService(int theId) {
		
		Session session = sessionFactory.getCurrentSession();
		Service service = session.get(Service.class,theId);
		
		return service;
	}

	@Override
	public void deleteService(int theId) {

		
		Session currentSession = sessionFactory.getCurrentSession();

		// delete object with primary key
		Query<?> theQuery = 
				currentSession.createQuery("delete from Service where id=:theId");
		theQuery.setParameter("theId", theId);
		
		theQuery.executeUpdate();		

	}

}
