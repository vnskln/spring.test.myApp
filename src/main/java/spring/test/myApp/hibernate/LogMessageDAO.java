package spring.test.myApp.hibernate;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class LogMessageDAO {
	
	@Autowired
	public SessionFactory factory;
	
	public List<LogMessage> getLogs () {
		Session session = factory.getCurrentSession();
		Query <LogMessage> query = session.createQuery("from LogMessage");
		List<LogMessage> logs = query.getResultList();
		return logs;
	}

	public void saveLog(LogMessage logMessage) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(logMessage);
		
	}
	
}
