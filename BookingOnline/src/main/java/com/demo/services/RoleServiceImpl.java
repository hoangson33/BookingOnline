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

	@Override
	public Iterable<Roles> findAllRole() {
		return roleRepository.findAll();
	}

	@Override
	public Roles save(Roles role) {
		return roleRepository.save(role);
	}

	@Override
	public Roles find(int id) {
		return roleRepository.findById(id).get();
	}
	
	@Override
	public void delete(int id) {
		roleRepository.deleteById(id);
	}
	
	

}
