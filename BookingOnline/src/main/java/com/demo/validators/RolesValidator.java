package com.demo.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.demo.models.Account;
import com.demo.models.Roles;


@Component
public class RolesValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return Roles.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
//		Account employee = (Account) target;
//		if(employee.getUsername().equalsIgnoreCase("abc")) {
//			errors.rejectValue("username", "account.username.exists");
//		}
		
	}

	
	
}
