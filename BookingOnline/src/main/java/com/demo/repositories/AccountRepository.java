package com.demo.repositories;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demo.models.Account;
import com.demo.models.InfoRoom;

@Repository
public interface AccountRepository extends CrudRepository<Account, Integer>{
	@Query("from Account where username = :username")
	public Account findByUsername(@Param("username") String username);
	
	@Query("from Account where idAcc = :idAcc")
	public Account findIdAcc(@Param("idAcc") String idAcc);
	
	
	
	@Transactional
	@Modifying
	@Query("delete from Account where idAcc =:idAcc")
	public void deleteById(@Param("idAcc") String idAcc);
}
