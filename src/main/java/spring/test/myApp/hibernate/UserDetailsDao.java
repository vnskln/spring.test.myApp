package spring.test.myApp.hibernate;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDetailsDao {
	
	@Autowired
	public SessionFactory sessionFactory;
	
	public User findUserByUsername(String username) {
	  return sessionFactory.getCurrentSession().get(User.class, username);
	}

}
