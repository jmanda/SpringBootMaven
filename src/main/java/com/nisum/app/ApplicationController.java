package com.nisum.app;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.nisum.app.model.Employee;

@RestController
@PropertySource("classpath:application.properties")
public class ApplicationController {
	
	@Autowired
	EmployeeRepository empRepo;

	@Value("${hello}")
	String hello1;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getCustomerPage() {
		System.out.println("Property"+hello1);
		return new ModelAndView("Mainpage");
	}

	@RequestMapping(value = "/getDetails", method = RequestMethod.POST)
	public ModelAndView getFilePage(HttpServletRequest req,ModelMap m) {
		String project=req.getParameter("projectName");
		List<Employee> list=empRepo.findByProject(project);
		m.addAttribute("EmpList", list );
		return new ModelAndView("Details");
	}
	
	@RequestMapping(value = "/addPage", method = RequestMethod.POST)
	public ModelAndView addPage() {
		return new ModelAndView("AddEmp");
	}

	@RequestMapping(value = "/addEmployee" , method = RequestMethod.POST)
	public ModelAndView addEmployee(HttpServletRequest req){
		Employee employee= new Employee(req.getParameter("empid"),req.getParameter("empname"),req.getParameter("designation"),req.getParameter("project"));
		empRepo.save(employee);
		return new ModelAndView("Mainpage");
	}
}
