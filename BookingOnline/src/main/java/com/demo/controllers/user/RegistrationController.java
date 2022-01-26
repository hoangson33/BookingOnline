
package com.demo.controllers.user;

import java.util.Date;
import java.util.HashMap;

import javax.validation.Valid;

import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.models.Account;
import com.demo.services.AccountService;
import com.demo.services.RegistrationService;
import com.demo.services.RoleService;
import com.demo.services.RoomService;
import com.demo.validators.AccountValidator;

@Controller
@RequestMapping(value = {"","registration"})
public class RegistrationController {
	
	@Autowired
	private AccountValidator accountValidator;
	
	@Autowired
	private RegistrationService registrationService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private AccountService accountService;
	
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
	public String add(@ModelAttribute("account")@Valid Account account, BindingResult bindingResult 
			,ModelMap modelMap ,@RequestParam("email") String email,@RequestParam("phone") int phone, @RequestParam("username") String username) {
		accountValidator.validate(account, bindingResult);
		if(bindingResult.hasErrors()) {
			return "registration/add";
		}
		if(phone < 0) {
			modelMap.put("errorphone", "You cannot enter negative numbers!?"); 
			return "registration/add";
		}
		System.out.println("email :" + email);
		String idacc = accountService.findIdAccs(email);
		System.out.println("idAcc : " + idacc);
		System.out.println("Username : " + username);
		String idaccuser = accountService.findIdAccUser(username);
		
			if(idacc == null && idaccuser == null) {
			String idRole = roleService.findRoleByNameRole(account.getIdRole());
			int idRole2 = Integer.parseInt(roleService.findRoleByNameRole(account.getIdRole()));
			account.setIdAcc(account.getIdRole() + account.getName().replace(" ", ""));
			account.setIdRole(idRole);
			account.setStatus(true);
			account.getRoleses().add(roleService.find(idRole2));
			account.setDatecreated(new Date());
			String hash  = new BCryptPasswordEncoder().encode(account.getPassword());
			System.out.println(hash);
			account.setPassword(hash);
			account.setAvatar("anhmacdinh.png");
			
			registrationService.save(account);
			}else {
				modelMap.put("error", "Username or Email already registered !");
			
				return "registration/add";
			}
			return "redirect:/registration/index";
		
		
	}
	
	
	

}
