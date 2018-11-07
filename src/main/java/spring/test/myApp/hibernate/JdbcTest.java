package spring.test.myApp.hibernate;

import java.sql.Connection;
import java.sql.DriverManager;

public class JdbcTest {
	public static void main(String[] args) {
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/myappdb?useSSL=false&serverTimezone=UTC";
		String user = "vnskln";
		String password = "vnskln";
		try {
			System.out.println("Database: " + jdbcUrl);
			Connection theConnection = DriverManager.getConnection(jdbcUrl, user, password);
			System.out.println("Connection successful");
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
