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
	public void deleteById(String id) {
		accountRepository.deleteById(id);
	}
	

	
	

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = accountRepository.findByUsername2(username);
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

	@Override
	public Account findIdAcc(String idAcc) {
		return accountRepository.findIdAcc(idAcc);
	}

	@Override
	public String findAvatar(String idAcc) {
		return accountRepository.findAvatar(idAcc);
	}

	@Override
	public String findEmail(String idAcc) {
		return accountRepository.findEmail(idAcc);
	}

	@Override
	public Iterable<Account> findByUsername(String username) {
		return accountRepository.findByUsername(username);
	}




	@Override
	public Account findByUsername2(String username) {
		return accountRepository.findByUsername2(username);
	}

	@Override
	public String findIdAccs(String email) {
		
		return accountRepository.findIdAccs(email);
	}

	@Override
	public Iterable<Account> findAllAccEnterPrise() {
		return accountRepository.findAllAccEnterPrise();
	}

	@Override
	public String findPass(String username) {
		return accountRepository.findPass(username);
	}

	@Override
	public List<Account> findAllAccountList(String idAcc) {
		return accountRepository.findAllAccountList(idAcc);
	}

	@Override
	public String findIdAccUser(String username) {
		
		return accountRepository.findIdAccUser(username);
	}






}
