package spring.test.myApp.controller;

import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import spring.test.myApp.hibernate.Employee;
import spring.test.myApp.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("employeeList")
	public String showEmployeeList(Model theModel) {
		List<Employee> employees = employeeService.getEmployeeList();
		int numberOfEmployees = employees.size();
		theModel.addAttribute("employees", employees);
		theModel.addAttribute("numberOfEmployees", numberOfEmployees);
		return "listEmployees";
	}
	
	@GetMapping("showFormForNewEmployee")
	public String showFormForNewEmployee (Model model) {
		Employee theEmployee = new Employee ();
		model.addAttribute("employee", theEmployee);
		return "employeeForm";
	}
	
	@RequestMapping("saveEmployee")
	public String saveEmployee (@Valid @ModelAttribute("employee") Employee theEmployee, BindingResult theBindingResult) {
		if (theBindingResult.hasErrors()) {
			return "employeeForm";
		}
		else {
			try {
				employeeService.saveEmployee(theEmployee);
			} finally {
			}
			return "redirect:/employeeList";
		}
	}
	
	@GetMapping("showEmployeeUpdateForm")
	public String showUpdateForm(@RequestParam("employeeId") int employeeId, Model model) {
		Employee theEmployee = employeeService.getEmployee(employeeId);
		model.addAttribute("employee",theEmployee);
		return "employeeForm";
	}
	
	@GetMapping("deleteEmployee")
	public String deleteEmployee(@RequestParam("employeeId") int employeeId, Model model) {
		employeeService.deleteEmployee(employeeId);
		return "redirect:/employeeList";
	}
	
	@GetMapping("search")
	public String searchForEmployee (@RequestParam("searchName") String searchName, Model model) {
		List<Employee> employees = employeeService.searchForEmployees(searchName);
        model.addAttribute("employees", employees);
        return "listEmployees"; 
	}
}
