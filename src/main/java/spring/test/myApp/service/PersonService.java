package spring.test.myApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.test.myApp.hibernate.Person;
import spring.test.myApp.hibernate.PersonDAO;

@Service
public class PersonService {
	
	@Autowired
	private PersonDAO personDAO;
	
	@Transactional
	public List<Person> getPeople (){
		return personDAO.getPeople();
	}
	
	

}
