package com.luv2code.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.luv2code.springdemo.entity.Service;
import com.luv2code.springdemo.service.PatientService;

@Controller
@RequestMapping("/service")
public class ServiceController {

	@Autowired
	PatientService service ;
	
	@GetMapping("/list")
	public String listPatients(Model theModel) {

		List<Service> theServices = service.getServices();

		theModel.addAttribute("services", theServices);

		return "service-list";
	}

	
	@GetMapping("/serviceForm")
	public String addService(Model theModel) {
		
		theModel.addAttribute("service", new Service());
		return "service-form";
	}
	
	@PostMapping("/saveService")
	public String saveService(@ModelAttribute("service") Service theService, Model theModel) {

		System.out.println("service >>>>>>>>>>>>>>>>>>>" + theService);
		// save the customer using our service
		 service.saveService(theService);

		return "redirect:/service/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String UpdateService(@RequestParam("serviceId") int theId, Model theModel) {

		// get the customer from our service
		Service theService = service.getService(theId) ;

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("service", theService);

		// send over to our form
		return "service-form";
	}

	@GetMapping("/delete")
	public String deleteService(@RequestParam("serviceId") int theId) {

		// delete the customer
		service.deletePatient(theId);

		return "redirect:/service/list";
	}



}
