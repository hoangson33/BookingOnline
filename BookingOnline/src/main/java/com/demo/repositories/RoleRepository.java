package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.Account;
import com.demo.models.InfoRoom;
import com.demo.models.Roles;

@Repository
public interface RoleRepository extends CrudRepository<Roles, Integer>{
	
	@Query("select idRole from Roles where nameRole = :nameRole")
	public String findRoleByNameRole(@Param("nameRole") String nameRole);
	
	
	@Query("select nameRole from Roles where idRole = :idRole")
	public String findRoleByNameRoles(@Param("idRole") int idRole);
}
