package spring.test.myApp.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		UserBuilder users = User.withDefaultPasswordEncoder();
		auth.inMemoryAuthentication().withUser(users.username("test").password("test").roles("guest"));
		auth.inMemoryAuthentication().withUser(users.username("admin").password("admin").roles("admin"));
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
	    String[] staticResources  =  {
	            "/resources/img/**",
	            "/resources/css/**"
	        };
		
		http.authorizeRequests().antMatchers(staticResources).permitAll().
		anyRequest().authenticated().and()
		.formLogin().loginPage("/showLoginPage")
		.loginProcessingUrl("/authenticateUser").permitAll().and().logout().permitAll();
	}

	
}
