package spring.test.myApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.test.myApp.hibernate.Employee;
import spring.test.myApp.hibernate.EmployeeDAO;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeDAO employeeDAO;
	
	@Transactional
	public List <Employee>  getEmployeeList () {
		return employeeDAO.getEmployees();
	}
	
	@Transactional
	public void saveEmployee(Employee theEmployee) {
		employeeDAO.saveEmployee(theEmployee);		
	}

}
