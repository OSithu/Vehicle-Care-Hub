package com.vehiclehub.bean;

//Create Variables
public class Employee {
	
	private int employeeID ;
	private String employeeName;
	private String DOB;
	private String phoneNo;
	private String address;  
	private String positon;
	private String department;
	private String salary;
	
	//Create Constructor with id
	public Employee(int employeeID, String employeeName, String DOB, String phoneNo, String address, String positon,
			String department, String salary) {
		super();
		this.employeeID = employeeID;
		this.employeeName = employeeName;
		this.DOB = DOB;
		this.phoneNo = phoneNo;
		this.address = address;
		this.positon = positon;
		this.department = department;
		this.salary = salary;
	}
	
	//Create Constructor without id
	public Employee(String employeeName, String DOB, String phoneNo, String address, String positon, String department,
			String salary) {
		super();
		this.employeeName = employeeName;
		this.DOB = DOB;
		this.phoneNo = phoneNo;
		this.address = address;
		this.positon = positon;
		this.department = department;
		this.salary = salary;
	}


	//Create Getters and Setters
	public int getEmployeeID() {
		return employeeID;
	}
	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String DOB) {
		this.DOB = DOB;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPositon() {
		return positon;
	}
	public void setPositon(String positon) {
		this.positon = positon;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	} 
	
	

}
