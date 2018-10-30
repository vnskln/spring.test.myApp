package spring.test.myApp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormTestController {
	
	@RequestMapping("/testForm")
	public String showTestForm () {
		return "testForm";
	}
	
	@RequestMapping("/processTestForm")
	public String processTestForm() {
		return "testProcessForm";
	}

}
