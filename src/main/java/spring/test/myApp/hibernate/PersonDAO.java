package spring.test.myApp.hibernate;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PersonDAO {
	
	@Autowired
	public SessionFactory sessionFactory;
	
	public List<Person> getPeople () {
		Session session = sessionFactory.getCurrentSession();
		Query <Person> query = session.createQuery("from Person", Person.class);
		List<Person> people = query.getResultList();
		return people; 
	}
}
