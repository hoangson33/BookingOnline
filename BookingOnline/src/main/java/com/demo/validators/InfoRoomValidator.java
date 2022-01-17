package com.demo.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.demo.models.Account;
import com.demo.models.InfoRoom;


@Component
public class InfoRoomValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return InfoRoom.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
//		Account employee = (Account) target;
//		if(employee.getUsername().equalsIgnoreCase("abc")) {
//			errors.rejectValue("username", "account.username.exists");
//		}
		
	}

	
	
}
