package spring.test.myApp;

import java.util.LinkedList;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import spring.test.myApp.validationRules.NameChecker;

public class Person {
	@NotNull(message="required")
	@Size(min=1, message="required")
	@NameChecker()
	private String name;
	
	@NotNull(message="required")
	@Size(min=1, message="required")
	private String surname;
	
	@NotNull(message="required")
	@Min(value=1, message="minimum value equals 1")
	@Max(value=130, message="maximum value equals 130")
	private Integer age;
	
	@NotNull(message="required")
	@DecimalMin(value="0.1", message="minimum value equals 0.1")
	private Double height;
	
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

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Double getHeight() {
		return height;
	}

	public void setHeight(Double height) {
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
