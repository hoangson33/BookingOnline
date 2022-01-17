package com.demo.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.models.Account;
import com.demo.services.AccountService;

@Controller
@RequestMapping(value = "contact")
public class ContactController {
	
	
	
	@Autowired
	JavaMailSender javaMailSender;
	@Autowired
	private AccountService accountService;
	@RequestMapping(value = {"","contact"}, method = RequestMethod.GET)
	public String index() {
//		System.out.println("username " + authentication.getName());
//		String name = authentication.getName();
//
//		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/contact/index";
	}
	
	@RequestMapping(value = "welcome", method = RequestMethod.GET)
	public String index2(Authentication authentication	,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/contact/index";
	}
	
	@RequestMapping(value = "welcomeCustomer", method = RequestMethod.GET)
	public String welcomeCustomer(Authentication authentication	,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/contact/indexCustomer";
	}
	

	@RequestMapping(value = "send", method = RequestMethod.POST)
	public String sendMail(Authentication authentication	,ModelMap modelMap,@RequestParam("subject") String subject,
			@RequestParam("content") String content) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		Account account = accountService.findByUsername2(name);
	System.out.println("email " + account.getEmail());
		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setTo(account.getEmail());
		msg.setSubject("subject :" +subject);
		msg.setText("Content : " + content);
	
		javaMailSender.send(msg);
		
		return "redirect:/contact/welcomecontact";
	}
			
		

	
}
