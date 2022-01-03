package com.demo.services;

import java.util.List;

import com.demo.models.Account;
import com.demo.models.InfoRoom;
import com.demo.models.Roles;

public interface RoleService {
	
	public String findRoleByNameRole(String nameRole);
	
	public Iterable<Roles> findAllRole();
	
	public Roles save(Roles role);

}
