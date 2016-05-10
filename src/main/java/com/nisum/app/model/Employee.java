package com.nisum.app.model;

import org.springframework.data.annotation.Id;

public class Employee {

	public String getEmpid() {
		return empid;
	}

	public void setEmpid(String empid) {
		this.empid = empid;
	}

	public String getEmpname() {
		return empname;
	}

	public void setEmpname(String empname) {
		this.empname = empname;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	@Id
	String empid;
	String empname;
	String designation;
	String project;
	
	public Employee(String empid,String empname, String designation, String project) {
		this.empid=empid;
		this.empname = empname;
		this.designation = designation;
		this.project = project;
	}

}
