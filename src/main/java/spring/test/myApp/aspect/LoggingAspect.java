package spring.test.myApp.aspect;

import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {
	private Logger logger = Logger.getLogger(getClass().getName());
 
	@Pointcut("execution(* spring.test.myApp.controller.*.*(..))")
	public void controllerLogger () {}
	
	@Pointcut("execution(* spring.test.myApp.service.*.*(..))")
	public void serviceLogger () {}
	
	@Pointcut("execution(* spring.test.myApp.hibernate.*.*(..))")
	public void hibernateLogger () {}
	
	@Pointcut("controllerLogger() || serviceLogger() || hibernateLogger()")
	public void appLogger () {}
	
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


}
