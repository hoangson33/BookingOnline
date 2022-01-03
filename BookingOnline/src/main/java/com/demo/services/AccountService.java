package com.demo.services;


import org.springframework.security.core.userdetails.UserDetailsService;

import com.demo.models.Account;
import com.demo.models.Roles;

public interface AccountService extends UserDetailsService {
	
	public Iterable<Account> findAllAccount();
	
	public Account save(Account account);
	
	public Account find(int id);
	
	public void delete(int id);

}
