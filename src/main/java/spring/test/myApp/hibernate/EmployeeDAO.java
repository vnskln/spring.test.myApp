package spring.test.myApp.hibernate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

@Repository
public class EmployeeDAO {
	
	@Autowired
	public SessionFactory sessionFactory;
	
	@Transactional
	public List<Employee> getEmployees (){
		Session session = sessionFactory.getCurrentSession();
		Query<Employee> query = session.createQuery("from Employee", Employee.class);
		List <Employee> employees = query.getResultList();
		for (int i=0;i<employees.size();i++) {
			System.out.println(employees.get(i));
		}
		return employees;
	}

}
