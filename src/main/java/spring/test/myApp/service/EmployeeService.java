package spring.test.myApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.test.myApp.hibernate.Employee;
import spring.test.myApp.hibernate.EmployeeDAO;
import spring.test.myApp.hibernate.User;
import spring.test.myApp.hibernate.UserDetailsDao;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeDAO employeeDAO;
	@Autowired
	private UserDetailsDao userDetailsDao;
	
	@Transactional
	public List <Employee>  getEmployeeList () {
		return employeeDAO.getEmployees();
	}
	
	@Transactional
	public void saveEmployee(Employee theEmployee) {
		employeeDAO.saveEmployee(theEmployee);		
	}

	@Transactional
	public Employee getEmployee(int employeeId) {
		return employeeDAO.getEmployee(employeeId);
	}

	@Transactional
	public void deleteEmployee(int employeeId) {
		employeeDAO.deleteEmployee(employeeId);
	}

	@Transactional
	public List<Employee> searchForEmployees(String searchName) {
		return employeeDAO.searchForEmployees(searchName);
	}

}
