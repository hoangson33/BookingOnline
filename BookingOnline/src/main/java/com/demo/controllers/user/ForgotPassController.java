package com.demo.controllers.user;

import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.models.Account;
import com.demo.services.AccountService;


@Controller
@RequestMapping(value = {"","forgotpass"})
public class ForgotPassController {
	@Autowired
	JavaMailSender javaMailSender;
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String i() {
		
		return "forgotpass/index";
	}
	
	
	@RequestMapping(value = {"","sendotp"}, method = RequestMethod.POST)
	public String sendotp(@RequestParam("email") String email, ModelMap modelMap) {
		System.out.println("Email : " + email);
		
		Random random = new Random(1000);
		UUID uuid = UUID.randomUUID();
		String otp = uuid.toString() ; 
//		int otp =  random.nextInt(999999);
		System.out.println(" OTP : " + otp);
		
		Account account = new Account();
		
	 	String emailacc = accountService.findEmail(email); 
		String idacc = accountService.findIdAccs(email);
		System.out.println("idAcc : " + idacc);
		Account accountOld = accountService.findIdAcc(idacc);
		
			
		
			
			
			if(accountOld == null) {
				return "forgotpass/accessDenied";
			}else {
				
				account.setIdAcc(idacc);
				account.setUsername(accountOld.getUsername());
				account.setPassword(otp);
				System.out.println("Pass : " + account.getPassword());
				account.setEmail(accountOld.getEmail());
				account.setName(accountOld.getName());
				account.setGender(accountOld.getGender());
				account.setLocation(accountOld.getLocation());
				account.setPhone(accountOld.getPhone());
				account.setStatus(accountOld.isStatus());
				account.setAvatar(accountOld.getAvatar());
				account.setDatecreated(accountOld.getDatecreated());
				account.setIdRole(accountOld.getIdRole());
				
				
				SimpleMailMessage msg = new SimpleMailMessage();
				msg.setTo(email);
				msg.setText("OTP : " + otp);
				
				javaMailSender.send(msg);	
				accountService.save(account);
				modelMap.put("successfully", "Change password successfully ! check your email !"); 
				return "forgotpass/index";
			}
			
			
		}
		

	

}
