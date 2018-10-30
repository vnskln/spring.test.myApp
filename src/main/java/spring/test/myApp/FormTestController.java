package spring.test.myApp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FormTestController {
	
	@RequestMapping("/testForm")
	public String showTestForm () {
		return "testForm";
	}
	
	@RequestMapping("/processTestForm")
	public String processTestForm(@RequestParam("sampleText") String text, Model model ) {
		String textAdded = "</br>(text was tested and approved by admin)";
		text =  text + textAdded.toUpperCase();
		model.addAttribute("upgradedSampleText", text);
		return "testProcessForm";
	}

}
