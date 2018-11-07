package spring.test.myApp;
import java.util.LinkedList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import spring.test.myApp.validationRules.NameChecker;

@Entity
@Table(name="people")
public class Person {
	
	@Id
	@Column(name="id")
	private int id;
	
	@NotNull(message="required")
	@Size(min=1, message="required")
	@NameChecker()
	@Column(name="name")
	private String name;
	
	@NotNull(message="required")
	@Size(min=1, message="required")
	@Column(name="surname")
	private String surname;
	
	@NotNull(message="required")
	@Min(value=1, message="minimum value equals 1")
	@Max(value=130, message="maximum value equals 130")
	@Column(name="age")
	private Integer age;
	
	@NotNull(message="required")
	@DecimalMin(value="0.1", message="minimum value equals 0.1")
	@Column(name="height")
	private Double height;
	
	@Column(name="education")
	private String education;
	
	@Transient
	private LinkedList <String> educationOptions;
	
	@Column(name="robot_checker")
	private boolean robotChecker;
	
	public Person () {
		educationOptions=new LinkedList<>();
		educationOptions.add("none");
		educationOptions.add("primary");
		educationOptions.add("secondary");
		educationOptions.add("tertiary");
	}
	
	public Person(String name, String surname, Integer age, Double height,
			String education, boolean robotChecker) {
		super();
		this.name = name;
		this.surname = surname;
		this.age = age;
		this.height = height;
		this.education = education;
		this.robotChecker = robotChecker;
	}

	//getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	//toString for testing purposes
	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", surname=" + surname + ", age=" + age + ", height=" + height
				+ ", education=" + education + ", robotChecker=" + robotChecker + "]";
	}
	
	
}
