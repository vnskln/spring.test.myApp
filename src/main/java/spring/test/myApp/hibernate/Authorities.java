package spring.test.myApp.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "authorities")
public class Authorities {
	
	@Id
	@Column(name = "authority")
	private String authority;

	@ManyToOne
	@JoinColumn(name = "username")
	private User user;

	public String getAuthority() {
		return authority;
	}

	public User getUser() {
		return user;
	}

}
