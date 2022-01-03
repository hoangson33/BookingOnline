package com.demo.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.models.Account;
import com.demo.models.Roles;
import com.demo.services.RoleService;
import com.demo.services.RoomService;

@Controller
@RequestMapping(value = {"","admin"})
public class AdminController {
	
	@Autowired
	private RoleService roleService;


	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		return "admin/index";
	}
	
	@RequestMapping(value = {"","room-list"}, method = RequestMethod.GET)
	public String roomList(ModelMap modelMap) {
		return "admin/room_list";
	}
	
	@RequestMapping(value = {"","account-management"}, method = RequestMethod.GET)
	public String accountManagement(ModelMap modelMap) {
		return "admin/account_management";
	}
	
	@RequestMapping(value = {"","role-management"}, method = RequestMethod.GET)
	public String roleManagement(ModelMap modelMap) {
		modelMap.put("roles", roleService.findAllRole());
		return "admin/role_management";
	}
	
	@RequestMapping(value = {"","room-edit"}, method = RequestMethod.GET)
	public String roomEdit(ModelMap modelMap) {
		return "admin/room_edit";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		Roles role = new Roles();
		modelMap.put("role", role);
		return "admin/role_add";
	}
	
	

	
	@RequestMapping(value = "add" , method = RequestMethod.POST)
	public String add(@ModelAttribute("role") Roles role) {
		System.out.println("asdsad : " + role.getNameRole());
		roleService.save(role);
		return "redirect:/admin/role-management";
	}
}
