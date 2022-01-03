package com.demo.controllers.user;

import java.util.Date;
import java.util.HashMap;

import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.models.Account;
import com.demo.services.RegistrationService;
import com.demo.services.RoleService;
import com.demo.services.RoomService;

@Controller
@RequestMapping(value = {"","registration"})
public class RegistrationController {
	
	@Autowired
	private RegistrationService registrationService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;


	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		return "login/index";
	}
	
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		Account account = new Account();
		modelMap.put("account", account);
		return "registration/add";
	}
	
	@RequestMapping(value = "add" , method = RequestMethod.POST)
	public String add(@ModelAttribute("account") Account account) {
		String idRole = roleService.findRoleByNameRole(account.getIdRole());
		account.setIdAcc(account.getIdRole() + account.getName().replace(" ", ""));
		account.setIdRole(idRole);
		account.setStatus(true);
		account.setDatecreated(new Date());
		String hash  = new BCryptPasswordEncoder().encode(account.getPassword());
		System.out.println(hash);
		account.setPassword(hash);
		account.setAvatar("abc1.png");
		registrationService.save(account);
		return "redirect:/registration/index";
	}
	

}
