package spring.test.myApp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.test.myApp.Person;
import spring.test.myApp.hibernate.Employee;
import spring.test.myApp.hibernate.EmployeeDAO;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeDAO employeeDao;
	
	@RequestMapping("employeeList")
	public String showEmployeeList(Model theModel) {
		List<Employee> employees = employeeDao.getEmployees();
		theModel.addAttribute("employees", employees);
		return "listEmployees";
	}
}
