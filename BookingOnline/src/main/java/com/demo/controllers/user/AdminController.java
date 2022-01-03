package com.demo.controllers.user;

import java.util.Date;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.models.Account;
import com.demo.models.Roles;
import com.demo.services.AccountService;
import com.demo.services.RoleService;
import com.demo.services.RoomService;

@Controller
@RequestMapping(value = {"","admin"})
public class AdminController {
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private AccountService accountService;


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
		
		modelMap.put("accounts", accountService.findAllAccount());
		
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
	
	
	@RequestMapping(value = "addAcc", method = RequestMethod.GET)
	public String addAcc(ModelMap modelMap) {
		Account account = new Account();
		modelMap.put("account", account);
		return "admin/account_add";
	}

	
	@RequestMapping(value = "addAcc" , method = RequestMethod.POST)
	public String addAcc(@ModelAttribute("account") Account account) {
		String idRole = roleService.findRoleByNameRole(account.getIdRole());
		account.setIdAcc(account.getIdRole() + account.getName().replace(" ", ""));
		account.setIdRole(idRole);
		account.setStatus(true);
		account.setDatecreated(new Date());
		String hash  = new BCryptPasswordEncoder().encode(account.getPassword());
		System.out.println(hash);
		account.setPassword(hash);
		account.setAvatar("abc1.png");
		accountService.save(account);
		return "redirect:/admin/account-management";
	}
	
	
	@RequestMapping(value =  "edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id,ModelMap modelMap) {
		modelMap.put("role", roleService.find(id));
		return "admin/role_edit";
	}
	
	@RequestMapping(value = "edit", method = RequestMethod.POST )
	public String edit(@ModelAttribute("role") Roles role) {
		roleService.save(role);
		return "redirect:/admin/role-management";
	}
	
	@RequestMapping(value =  "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		roleService.delete(id);
		return "redirect:/admin/role-management";
	}
}
