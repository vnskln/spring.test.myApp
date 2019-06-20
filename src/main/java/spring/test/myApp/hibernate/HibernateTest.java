package spring.test.myApp.hibernate;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class HibernateTest {
	
	@Autowired
	public SessionFactory sessionFactory;
		
	@Transactional
	public void testingHibernate() {
		Person [] peopleToSave = new Person [5];
		peopleToSave[0] = new Person ("Thomas", "Doe", 21, 1.65, "none", true);
		peopleToSave[1] = new Person ("Thomas", "Newton", 29, 1.9, "tertiary", true);
		peopleToSave[2] = new Person ("Thomas", "Jefferson", 23, 1.6, "secondary", false);
		peopleToSave[3] = new Person ("Tennis", "Rocket", 5, 0.75, "none", false);
		peopleToSave[4] = new Person ("Topics", "Chosen", 56, 1.8, "secondary", true);
		try {
			//save 5 new sample records 
			System.out.println("\n------Saving sample records\n");
			Session session = sessionFactory.getCurrentSession();
			for (int i=0;i<peopleToSave.length;i++) {
				System.out.println(i);
				session.saveOrUpdate(peopleToSave[i]);
			}
			System.out.println("\n------Saving done\n");
			
			//read record with id=3
			System.out.println("\n------Reading and printing record with id=3\n");
			Person personRead = session.get(Person.class, 3);
			System.out.println(personRead);
			System.out.println("\n------Reading and printing record done\n");
			
			//read all records and print them
			System.out.println("\n------Reading and printing all records\n");
			List<Person> people = (List<Person>)session.createQuery("from Person").getResultList();
			displayList(people);
			System.out.println("\n------Reading and printing done\n");
			
			//read and print records with "secondary" education
			System.out.println("\n------Reading and printing records where education=secondary\n");
			people = (List<Person>)session.createQuery("from Person p where p.education='secondary' ").getResultList();
			displayList(people);
			System.out.println("\n------Reading and printing records done\n");
			
			//updating records
			System.out.println("\n------Updating records with robotChecker = true\n");
			session.createQuery("update Person p set education='none' where p.robotChecker=true").executeUpdate();
			displayList(people);
			System.out.println("\n------Updating records done\n");
			
			//read all records and print them again
			System.out.println("\n------Reading and printing all records\n");
			people = (List<Person>)session.createQuery("from Person").getResultList();
			displayList(people);
			System.out.println("\n------Reading and printing done\n");
			
			//cleaning table contents
			System.out.println("\n------Cleaning table contents\n");
			Query query = session.createSQLQuery("truncate table people");
			query.executeUpdate();
			System.out.println("\n------Cleaning table contents done\n");
			
		} finally {
		}
	}

	private void displayList(List<Person> listToDisplay) {
		for (int i=0; i<listToDisplay.size();i++) {
			System.out.println(listToDisplay.get(i));
		}
	}
}
