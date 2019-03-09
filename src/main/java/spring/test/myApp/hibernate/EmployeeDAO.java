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
	
	public List<Employee> getEmployees (){
		Session session = sessionFactory.getCurrentSession();
		Query<Employee> query = session.createQuery("from Employee order by surname", Employee.class);
		List <Employee> employees = query.getResultList();
		return employees;
	}

	public void saveEmployee(Employee theEmployee) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(theEmployee);
	}

	public Employee getEmployee(int employeeId) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Employee.class, employeeId);
	}

	public void deleteEmployee(int employeeId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete from Employee where id=:employeeId");
		query.setParameter("employeeId", employeeId);
		query.executeUpdate();
	}

	public List<Employee> searchForEmployees(String searchName) {
		Session session = sessionFactory.getCurrentSession();
		Query query;
		if (searchName != null && searchName.trim().length()>0) {
			query = session.createQuery("from Employee where lower(name) like lower(:theName) or lower(surname) like lower(:theName)", Employee.class);
            query.setParameter("theName", "%" + searchName.toLowerCase() + "%");
		}
		else {
			query =session.createQuery("from Employee", Employee.class);
		}
		List<Employee> employees = query.getResultList();
		return employees;
	}
}
