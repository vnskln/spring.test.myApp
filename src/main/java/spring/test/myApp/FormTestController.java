package spring.test.myApp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String processTestForm(@ModelAttribute("person") Person person) {
		return "testProcessForm";
	}
	
	@RequestMapping("index")
	public String showStartPage() {
		return "redirect:/index";
	}

}
