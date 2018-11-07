package spring.test.myApp;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/form")
public class FormTestController {
	
	@RequestMapping("/show")
	public String showTestForm (Model model) {
		Person person = new Person();
		model.addAttribute("person", person);
		return "testForm";
	}
	
	@RequestMapping("/process")
	public String processTestForm(@Valid @ModelAttribute("person") Person person, BindingResult theBindingResult) {
		if (theBindingResult.hasErrors()) {
			return "testForm";
		}
		else {
			SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Person.class).buildSessionFactory();
			Session session = factory.getCurrentSession();
			try {
				session.beginTransaction();
				session.save(person);
				session.getTransaction().commit();
				System.out.println("person id: " + person.getId());
			} finally {
				factory.close();
			}
			return "testProcessForm";
		}
	}
	
	@RequestMapping("index")
	public String showStartPage() {
		return "redirect:/index";
	}
		
	//no whitespace in requests
	@InitBinder
	public void initBinder (WebDataBinder webDataBinder) {
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
}
