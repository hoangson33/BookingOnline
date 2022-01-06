package com.demo.controllers.user;


import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.helpers.UploadHelper;
import com.demo.models.Account;
import com.demo.services.AccountService;
import com.demo.services.RoleService;



@Controller
@RequestMapping(value = "enterprise")
public class EnterpriseController implements ServletContextAware {
	
	private ServletContext servletContext;
	
	@Autowired
	private RoleService roleService;

	@Autowired
	private AccountService accountService;
	
	
	@RequestMapping(value = {"","enterprise"}, method = RequestMethod.GET)
	public String index() {
		
		return "users/enterprise/addroom";
	}
	
	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public String profile(Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/enterprise/profile";
	}
	
	
	@RequestMapping(value =  "editAcc/{id}", method = RequestMethod.GET)
	public String editAcc(@PathVariable("id") String id,ModelMap modelMap) {
		modelMap.put("account", accountService.findIdAcc(id));
		modelMap.addAttribute("avatar", accountService.findAvatar(id));
		String avatar = accountService.findAvatar(id);
		System.out.println("avatar  : " + avatar);
		return "users/enterprise/profile_edit";
	}
	
	@RequestMapping(value = "editAcc", method = RequestMethod.POST )
	public String editAcc(@ModelAttribute("account") Account account,
			@RequestParam(value = "file") MultipartFile file , RedirectAttributes redirectAttributes) {
		Account accountOld = accountService.findIdAcc(account.getIdAcc());
		
		
		account.setDatecreated(new Date());
		account.setGender(accountOld.getGender());
		account.setPassword(accountOld.getPassword());
		String idRole =  account.getIdRole();
		account.setIdRole(idRole);
		account.setStatus(true);
		
		account.getRoleses().add(roleService.find(Integer.parseInt(account.getIdRole())));
		
		
		String fileName = UUID.randomUUID().toString().replace("-", "");
		String fileNameUpload = UploadHelper.upload(servletContext, file);
		redirectAttributes.addFlashAttribute("fileName", fileNameUpload);
		if(fileNameUpload != null) {
			account.setAvatar(fileNameUpload);
		}else {
			account.setAvatar(accountOld.getAvatar());
		}
		accountService.save(account);
		return "redirect:/enterprise/profile";
	}
	
	
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
