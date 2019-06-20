package spring.test.myApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.test.myApp.hibernate.LogMessage;
import spring.test.myApp.hibernate.LogMessageDAO;

@Service
public class LogMessageService {
	
	@Autowired
	public LogMessageDAO logMessageDAO;
	
	@Transactional
	public List<LogMessage> getLogs () {
		return logMessageDAO.getLogs();
	}
	
	@Transactional
	public void saveLog (LogMessage log) {
		logMessageDAO.saveLog(log);
	}
}
