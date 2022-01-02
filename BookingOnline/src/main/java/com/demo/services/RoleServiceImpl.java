package com.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.Account;
import com.demo.models.Roles;
import com.demo.repositories.RegistrationRepository;
import com.demo.repositories.RoleRepository;



@Service
public class RoleServiceImpl implements RoleService {
	
	@Autowired
	private RoleRepository roleRepository;

	@Override
	public String findRoleByNameRole(String nameRole) {
		return roleRepository.findRoleByNameRole(nameRole);
	}
	
	

}
