package spring.test.myApp.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Bean
	  public PasswordEncoder passwordEncoder() {
	    return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	  };

	@Override
	  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	    auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	  }

	@Override
	protected void configure(HttpSecurity http) throws Exception {
	    String[] staticResources  =  {
	            "/resources/img/**",
	            "/resources/css/**"
	        };
		
		http.authorizeRequests()
		.antMatchers(staticResources).permitAll()
		.antMatchers("/").hasRole("user")
		.antMatchers("/logsList").hasRole("admin")
		.and()
		.formLogin().loginPage("/showLoginPage")
		.loginProcessingUrl("/authenticateUser").permitAll()
		.and().logout().permitAll();
	}

	
}
