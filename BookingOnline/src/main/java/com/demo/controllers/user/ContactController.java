package com.demo.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "contact")
public class ContactController {
	
	@Autowired
	JavaMailSender javaMailSender;
	
	@RequestMapping(value = {"","contact"}, method = RequestMethod.GET)
	public String index() {
		
		return "users/contact/index";
	}
	
	
	
//	@RequestMapping(value = {"","send"}, method = RequestMethod.GET)
//	public String sendMail(@RequestParam("to") String to ,@RequestParam("subject") String subject 
//			,@RequestParam("content") String content ) {
//		SimpleMailMessage msg = new SimpleMailMessage();
//		msg.setTo(to);
//		msg.setSubject(subject);
//		msg.setText(content);
//		javaMailSender.send(msg);
//		return "redirect:/contact/index";
//	}
	@RequestMapping(value = "send", method = RequestMethod.POST)
	public String sendMail(ModelMap modelMap,@RequestParam("to") String to ,@RequestParam("subject") String subject,
			@RequestParam("content") String content) {

		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setTo(to);
		msg.setSubject(subject);
		msg.setText(content);
		javaMailSender.send(msg);
		return "redirect:/contact";
	}
}
