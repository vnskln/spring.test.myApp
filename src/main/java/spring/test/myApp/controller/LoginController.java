package spring.test.myApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping("/showLoginPage")
	public String showLoginPage() {
		return "login-page";
	}

}
