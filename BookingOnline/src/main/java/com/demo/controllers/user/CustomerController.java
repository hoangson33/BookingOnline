package com.demo.controllers.user;

import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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
import com.demo.models.Roles;
import com.demo.services.AccountService;
import com.demo.services.RoleService;
import com.demo.validators.AccountValidator;

@Controller
@RequestMapping(value = {"","customer"})
public class CustomerController implements ServletContextAware{
	private ServletContext servletContext;
	
	@Autowired
	private AccountValidator accountValidator;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value = {"","customer"}, method = RequestMethod.GET)
	public String index(Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/customer/profile";
	}
	@RequestMapping(value =  "editCus/{id}", method = RequestMethod.GET)
	public String editAcc(@PathVariable("id") String id,ModelMap modelMap) {
		modelMap.put("account", accountService.findIdAcc(id));
		System.out.println("id acc : " + id);
		modelMap.addAttribute("avatar", accountService.findAvatar(id));
		String avatar = accountService.findAvatar(id);
		System.out.println("avatar  : " + avatar);
		
		return "users/customer/profile_editcus";
	}
	
	@RequestMapping(value = "editAcc", method = RequestMethod.POST )
	public String editAcc(@ModelAttribute("account") Account account,
			@RequestParam(value = "file") MultipartFile file , RedirectAttributes redirectAttributes,Authentication authentication,ModelMap modelMap ) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accounts", accountService.findByUsername(name));
		
		
			Account accountOld = accountService.findIdAcc(account.getIdAcc());
			System.out.println("id acc : " + accountOld);
		
			
			account.setDatecreated(new Date());
			account.setGender(accountOld.getGender());
			account.setPassword(accountOld.getPassword());
			String idRole =  account.getIdRole();
			account.setIdRole(idRole);
			System.out.println("id role : " + idRole);
			account.getRoleses().add(roleService.find(Integer.parseInt(account.getIdRole())));
			account.setStatus(true);
			String fileName = UUID.randomUUID().toString().replace("-", "");
			String fileNameUpload = UploadHelper.upload(servletContext, file);
			redirectAttributes.addFlashAttribute("fileName", fileNameUpload);
			if(fileNameUpload != null) {
				account.setAvatar(fileNameUpload);
			}else {
				account.setAvatar(accountOld.getAvatar());
			}
			
			accountService.save(account);
			return "users/home/index";
		
	}
		

		
		
	
	
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
