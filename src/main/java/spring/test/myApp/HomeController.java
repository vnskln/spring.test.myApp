package spring.test.myApp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showStartPage() {
		return "index";
	}
	
	@RequestMapping("index")
	public String showStartPageAgain() {
		return "index";
	}

}
