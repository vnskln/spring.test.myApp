package spring.test.myApp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import spring.test.myApp.hibernate.HibernateTest;

@Controller
public class HomeController {
	@Autowired
	private HibernateTest hibernateTest;
	
	@RequestMapping("/")
	public String showStartPage() {
		return "index";
	}
	
	@RequestMapping("index")
	public String showStartPageAgain() {
		return "index";
	}
	
	@RequestMapping("hibernateTest")
	public String runHibernateTest() {
		hibernateTest.testingHibernate();
		return "testHibernateConnection";
	}

}
