package spring.test.myApp;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.test.myApp.hibernate.Person;
import spring.test.myApp.service.PersonService;

@Controller
@RequestMapping("form")
public class FormTestController {
	
	@Autowired
	public SessionFactory sessionFactory;
	@Autowired
	public PersonService personService;
	
	@RequestMapping("show")
	public String showTestForm (Model model) {
		Person person = new Person();
		model.addAttribute("person", person);
		List<Person> people = personService.getPeople();
		model.addAttribute("people", people);
		return "testForm";
	}
	
	@Transactional
	@RequestMapping("process")
	public String processTestForm(@Valid @ModelAttribute("person") Person person, BindingResult theBindingResult) {
		if (theBindingResult.hasErrors()) {
			return "testForm";
		}
		else {
			Session session = sessionFactory.getCurrentSession();
			try {
				session.save(person);
			} finally {
			}
			return "testProcessForm";
		}
	}
	
	@RequestMapping("index")
	public String showStartPage() {
		return "redirect:/index";
	}
	
	@RequestMapping("employeeList")
	public String goBackToEmployeeList () {
		return "redirect:/employeeList";
	}
	
	@RequestMapping("hibernateTest")
	public String showHibernateTestRoutine() {
		return "redirect:/hibernateTest";
	}
	
	@InitBinder
	public void initBinder (WebDataBinder webDataBinder) {
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
}
