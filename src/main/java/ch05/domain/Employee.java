package ch05.domain;

import java.time.LocalDate;

public class Employee {
	private int empId;
	private String empName;
	private LocalDate hireDate;
	
	public Employee(int empId, String empName, LocalDate hireDate) {
		this.empId = empId;
		this.empName = empName;
		this.hireDate = hireDate;
	}

	@Override
	public String toString() {
		return empId + ", " + empName + ", " + hireDate;
	}
}
