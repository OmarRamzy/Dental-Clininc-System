package com.luv2code.springdemo.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="visit")

public class Visit {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id ;
	
	@Column(name="diagnosis")
	private String diagnosis  ;
	
	@Column(name="payment")
	private int payment ;
	
	@Column(name="payed")
	private int payed ;
	
	
	@ManyToOne( fetch=FetchType.LAZY)
	@JoinColumn(name="patient_id")
	Patient patient ;
	
	@Column(name="date")
	String date ;
	
	
	
	public Visit() {
		
	}
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
	public String getDiagnosis() {
		return diagnosis;
	}

	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public int getPayed() {
		return payed;
	}

	public void setPayed(int payed) {
		this.payed = payed;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}


	@Override
	public String toString() {
		return "Visit [id=" + id + ", diagnosis=" + diagnosis + ", payment=" + payment + ", payed=" + payed
				+ ", date=" + date + "]";
	}


}


