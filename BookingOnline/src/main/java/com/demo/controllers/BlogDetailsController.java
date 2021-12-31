package com.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "blogdetails")
public class BlogDetailsController {
	@RequestMapping(value = {"","blogdetails"}, method = RequestMethod.GET)
	public String index() {
		
		return "users/news/blogdetails";
	}
}
