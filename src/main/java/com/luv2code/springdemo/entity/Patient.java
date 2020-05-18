package com.luv2code.springdemo.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Nationalized;
import org.springframework.cache.annotation.Cacheable;

@Entity
@Table(name="patient")
@Cacheable
public class Patient {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Nationalized
	@Column(name="full_name")
	private String fullName;
	
	@Column(name="phone")
	private String phone;

	@Nationalized
	@Column(name="city")
	private String city ;
	
	@OneToMany(mappedBy="patient" 
			,cascade=CascadeType.ALL
			,fetch=FetchType.EAGER)
	
	List<Visit> visits ;

	
	public Patient() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public List<Visit> getVisits() {
		return visits;
	}

	public void setVisits(List<Visit> visits) {
		this.visits = visits;
	}

	public void addVisit(Visit v) {
		if(visits == null)
			visits= new ArrayList<>();
		v.setPatient(this);
		visits.add(v);
		
		System.out.println("Entity: Size"+ visits.size() );
	}

	@Override
	public String toString() {
		return "Patient [id=" + id + ", fullName=" + fullName + ", phone=" + phone + ", city=" + city + ", visits="
				+ visits + "]";
	}
	
	


		
}





