package spring.test.myApp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.test.myApp.Person;
import spring.test.myApp.hibernate.Employee;
import spring.test.myApp.hibernate.EmployeeDAO;
import spring.test.myApp.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("employeeList")
	public String showEmployeeList(Model theModel) {
		List<Employee> employees = employeeService.getEmployeeList();
		theModel.addAttribute("employees", employees);
		return "listEmployees";
	}
	
	@GetMapping("showFormForNewEmployee")
	public String showFormForNewEmployee (Model model) {
		Employee theEmployee = new Employee ();
		model.addAttribute("employee", theEmployee);
		return "employeeForm";
	}
	
	@PostMapping("saveEmployee")
	public String saveEmployee (@ModelAttribute("employee") Employee theEmployee) {
		employeeService.saveEmployee(theEmployee);
		return "redirect:/employeeList";
	}
	
	@GetMapping("showEmployeeUpdateForm")
	public String showUpdateForm(@RequestParam("employeeId") int employeeId, Model model) {
		Employee theEmployee = employeeService.getEmployee(employeeId);
		model.addAttribute("employee",theEmployee);
		return "employeeForm";
	}
}
