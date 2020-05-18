package com.luv2code.springdemo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.luv2code.springdemo.entity.Patient;
import com.luv2code.springdemo.entity.Service;
import com.luv2code.springdemo.entity.Visit;
import com.luv2code.springdemo.service.PatientService;

@Controller
@RequestMapping("/patient")
public class PatientController {

	// need to inject our customer service
	@Autowired
	private PatientService patientService;

	@GetMapping("/list")
	public String listPatients(Model theModel) {

		List<Patient> thePatients = patientService.getPatients();
		System.out.println(thePatients.size());
		theModel.addAttribute("patients", thePatients);

		return "list-patients";
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {

		Patient thePatient = new Patient();

		theModel.addAttribute("patient", thePatient);

		return "patient-form";
	}

	@PostMapping("/savePatient")
	public String savePatient(@ModelAttribute("patient") Patient thePatient, Model theModel) {

		// save the customer using our service
		patientService.savePatient(thePatient);

		theModel.addAttribute("patient", thePatient);
		theModel.addAttribute("visits", thePatient.getVisits());
		return "patient-visits";
	}

	// Search For Patient
	@GetMapping("/searchForm")
	public String searchForPatient(Model theModel) {

		theModel.addAttribute("patientName", new String());
		return "search-form";
	}

	@PostMapping("/searchForPatient")
	public String getPatient(@ModelAttribute("patientName") String name, Model theModel) {
		System.out.println(name);
		Patient patient = patientService.getPatient(name);

		System.out.println(patient);

		if (patient == null) {
			theModel.addAttribute("NotFound", true);
			return "search-form";
		} else {
			return "redirect:/patient/viewVisits/"+patient.getId();
		}
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("patientId") int theId, Model theModel) {

		// get the customer from our service
		Patient thePatient = patientService.getPatient(theId);

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("patient", thePatient);

		// send over to our form
		return "patient-form";
	}

	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("patientId") int theId) {

		// delete the customer
		patientService.deletePatient(theId);

		return "redirect:/patient/list";
	}


	@GetMapping("/viewVisits/{patientId}")
	public String patientVisits(Model theModel , @PathVariable int patientId) {

		Patient patient = patientService.getPatient(patientId);
		theModel.addAttribute("patient", patient);
		theModel.addAttribute("visits", patient.getVisits());

		return "patient-visits";
	}
	
	@GetMapping("/addVisit")
	public String addVisit(Model model, @RequestParam("patientId") int id) {
		Visit v = new Visit();
		Patient thePatient = patientService.getPatient(id);
		v.setPatient(thePatient);
		
		List<Service> services= patientService.getServices();

		model.addAttribute("visit", v);
		model.addAttribute("patient", thePatient);
		model.addAttribute("services", services);
		
		System.out.println(services);
		
		Date now = new Date();
		String pattern = "EEEEE dd-MM-yyyy";
		SimpleDateFormat formatter = new SimpleDateFormat(pattern);
		String mysqlDateString = formatter.format(now);
		model.addAttribute("date", mysqlDateString);

		return "visit-form";
	}

	@PostMapping("/saveVisit/{patientId}")
	public String saveVisit(@ModelAttribute("visit") Visit visit, @PathVariable int patientId) {
		
		
		patientService.addVisit(visit, patientId);


		return "redirect:/patient/viewVisits/"+patientId;
	}
	
	
	
}