package spring.test.myApp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.test.myApp.hibernate.User;
import spring.test.myApp.hibernate.UserDetailsDao;

@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService{
	
	@Autowired
	private UserDetailsDao userDetailsDao;
	
	@Transactional(readOnly = true)
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

	    User user = userDetailsDao.findUserByUsername(username);
	    UserBuilder builder = null;
	    if (user != null) {
	      
	      builder = org.springframework.security.core.userdetails.User.withUsername(username);
	      builder.disabled(!user.isEnabled());
	      builder.password(user.getPassword());
	      String[] authorities = user.getAuthorities()
	    		  .stream().map(a -> a.getAuthority()).toArray(String[]::new);

	      builder.authorities(authorities);
	    } else {
	      throw new UsernameNotFoundException("User not found.");
	    }
	    return builder.build();
	  }

}
