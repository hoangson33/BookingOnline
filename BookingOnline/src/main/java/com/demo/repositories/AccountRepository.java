package com.demo.repositories;

import java.util.List;

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
	public Iterable<Account> findByUsername(@Param("username") String username);
	
	@Query("from Account where idRole = 2")
	public Iterable<Account> findAllAccEnterPrise();
	
	@Query("from Account where username = :username")
	public Account findByUsername2(@Param("username") String username);
	
	@Query("from Account where status = true and idAcc != :idAcc")
	public List<Account> findAllAccountList(@Param("idAcc") String idAcc);
	
	@Query("from Account where idAcc = :idAcc")
	public Account findIdAcc(@Param("idAcc") String idAcc);
	
	@Query("select avatar from Account where idAcc = :idAcc")
	public String findAvatar(@Param("idAcc") String idAcc);
	
	
	@Query("select email from Account where idAcc = :idAcc")
	public String findEmail(@Param("idAcc") String idAcc);
	
	@Query("select idAcc from Account where email =:email")
	public String findIdAccs(@Param("email") String email); 
	
	@Query("select password from Account where username = :username")
	public String findPass(@Param("username") String username);
	
	@Query("select email from Account where email =:email")
	public String finadllemail(@Param("email") String email);
	
	@Transactional
	@Modifying
	@Query("delete from Account where idAcc =:idAcc")
	public void deleteById(@Param("idAcc") String idAcc);
}
