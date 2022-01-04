package com.demo.configruations;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.demo.services.AccountService;





@Configuration
@EnableWebSecurity
public class SeciurityConfigruation extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private AccountService accountService;

	// dùng để chặn đường dẫn truy xuất
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.cors().and().csrf().disable();
		http.authorizeRequests()
		.antMatchers("/customer/**").access("hasRole('ROLE_CUSTOMER') or hasRole('ROLE_ENTERPRISE ') or hasRole('ROLE_SUPERADMIN ')") 
		.antMatchers("/enterprise/**").access("hasRole('ROLE_ENTERPRISE') or hasRole('ROLE_SUPERADMIN ')")
		.antMatchers("/admin/**").access("hasRole('ROLE_SUPERADMIN')") 
		
		.and()
		.formLogin().loginPage("/login/index")
		.loginProcessingUrl("/login/process-login")
		.defaultSuccessUrl("/login/welcome")
		.failureUrl("/login/index?error")
		.usernameParameter("username")
		.passwordParameter("password")
		.and()
		.logout().logoutUrl("/login/logout")
		.logoutSuccessUrl("/login/index?logout")
		.and()
		.exceptionHandling().accessDeniedPage("/login/accessDenied")
		;
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder builder) throws Exception {
		builder.userDetailsService(accountService);
	}
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}


	
}
