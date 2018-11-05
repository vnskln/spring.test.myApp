package spring.test.myApp;

import java.util.LinkedList;

public class Person {
	private String name;
	private String surname;
	private int age;
	private double height;
	private String education;
	private LinkedList <String> educationOptions;
	private boolean robotChecker;
	
	public Person () {
		educationOptions=new LinkedList<>();
		educationOptions.add("none");
		educationOptions.add("primary");
		educationOptions.add("secondary");
		educationOptions.add("tertiary");
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public LinkedList<String> getEducationOptions() {
		return educationOptions;
	}

	public boolean isRobotChecker() {
		return robotChecker;
	}

	public void setRobotChecker(boolean robotChecker) {
		this.robotChecker = robotChecker;
	}
}
