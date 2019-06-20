package spring.test.myApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import spring.test.myApp.hibernate.LogMessage;
import spring.test.myApp.service.LogMessageService;

@Controller
public class LogsController {
	
	@Autowired
	private LogMessageService logMessageService;
	
	@GetMapping("logsList")
	public String showLogs(Model theModel) {
		List<LogMessage> logs = logMessageService.getLogs();
		theModel.addAttribute("logs", logs);
		return "listLogs";
	}

}
