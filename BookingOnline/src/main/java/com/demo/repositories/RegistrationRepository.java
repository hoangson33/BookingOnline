package com.demo.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.demo.models.Account;
import com.demo.models.InfoRoom;

@Repository
public interface RegistrationRepository extends CrudRepository<Account, Integer>{
	
}
