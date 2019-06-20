package spring.test.myApp.aspect;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import java.util.logging.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import spring.test.myApp.hibernate.LogMessage;
import spring.test.myApp.service.LogMessageService;

@Aspect
@Component
public class LoggingAspect {
	
	@Autowired
	private LogMessageService logMessageService;
	private Logger logger = Logger.getLogger(getClass().getName());
 
	@Pointcut("execution(* spring.test.myApp.controller.*.*(..))")
	public void controllerLogger () {}
	
	@Pointcut("execution(* spring.test.myApp.service.*.*(..))")
	public void serviceLogger () {}
	
	@Pointcut("execution(* spring.test.myApp.hibernate.*.*(..))")
	public void hibernateLogger () {}
	
	@Pointcut("controllerLogger() || serviceLogger() || hibernateLogger()")
	public void appLogger () {}
	
	@Pointcut("execution(* spring.test.myApp.controller.HomeController.showStartPage())")
	public void beforeStartPage () {}
	
	@Before("appLogger()")
	public void before(JoinPoint theJoinPoint) {
		logger.info("***** Before method call: " + theJoinPoint.getSignature().toShortString());
		Object [] args = theJoinPoint.getArgs();
		for (Object tempObject: args){
			logger.info("***** Argument: " + tempObject.toString());
		}
	}
	
	@AfterReturning(pointcut="appLogger()", returning="theResult")
	public void afterReturning(JoinPoint theJoinPoint, Object theResult) {
		logger.info("***** After method call: " + theJoinPoint.getSignature().toShortString());
		logger.info("***** Result: " + theResult);
	}
	
	@Before("beforeStartPage()")
	public void beforeStart (JoinPoint theJoinPoint) {
		SimpleDateFormat isoFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		isoFormat.setTimeZone(TimeZone.getTimeZone("Europe/Warsaw"));
		Date date = new Date();
		String message = "Main page visit!";
		LogMessage log = new LogMessage (date, message);
		logMessageService.saveLog(log);
	}


}
