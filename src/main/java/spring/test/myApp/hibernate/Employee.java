package spring.test.myApp.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="employees")
public class Employee {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="name")
	@NotNull(message="required")
	@Size(min=1, message="required")
	private String name;
	
	@Column(name="surname")
	@NotNull(message="required")
	@Size(min=1, message="required")
	private String surname;
	
	@Column(name="email")
	@NotNull(message="required")
	@Size(min=1, message="required")
	private String email;
	
	@Column(name="phone_number")
	@NotNull(message="required")
	@Size(min=1, message="required")
	private String phoneNumber;
	
	@Column(name="city")
	@NotNull(message="required")
	@Size(min=1, message="required")
	private String city;
	
	@Column(name="postal_code")
	@Size(min=1, message="required")
	@NotNull(message="required")
	private String postalCode;
	
	@Column(name="address")
	@NotNull(message="required")
	@Size(min=1, message="required")
	private String address;

	public Employee() {}

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", surname=" + surname + ", email=" + email + ", phoneNumber="
				+ phoneNumber + ", city=" + city + ", postalCode=" + postalCode + ", address=" + address + "]";
	}
}
