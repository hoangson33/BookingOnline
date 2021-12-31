package com.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "blog")
public class BlogController {
	@RequestMapping(value = {"","blog"}, method = RequestMethod.GET)
	public String index() {
		
		return "users/news/blog";
	}
}
