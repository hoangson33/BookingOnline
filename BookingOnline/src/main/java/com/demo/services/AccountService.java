package com.demo.services;


import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.demo.models.Account;
import com.demo.models.Roles;

public interface AccountService extends UserDetailsService {
	
	public Iterable<Account> findAllAccount();
	
	public Account save(Account account);
	
	public Account findIdAcc(String idAcc);
	
	public void deleteById(String id);
	
	public String findAvatar(String idAcc);
	
	public String findEmail (String idAcc);

}
