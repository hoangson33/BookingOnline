package com.demo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.demo.models.Account;
import com.demo.models.InfoRoom;
import com.demo.models.Roles;
import com.demo.repositories.AccountRepository;
import com.demo.repositories.RoomRepository;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	private AccountRepository accountRepository;

	@Override
	public Iterable<Account> findAllAccount() {
		return accountRepository.findAll();
	}
	
	@Override
	public Account save(Account account) {
		return accountRepository.save(account);
	}

	@Override
	public Account find(int id) {
		return accountRepository.findById(id).get();
	}
	
	@Override
	public void delete(int id) {
		accountRepository.deleteById(id);
	}
	
	@Autowired
	private AccountRepository accountRepositor;
	
	

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = accountRepositor.findByUsername(username);
		if(account == null) {
			throw new UsernameNotFoundException("Username Not Found");
		}else {
			List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
			for(Roles role : account.getRoleses()) {
				grantedAuthorities.add(new SimpleGrantedAuthority(role.getNameRole()));
			}
			return new User(account.getUsername(), account.getPassword(), grantedAuthorities);
		}
		
	}


}
