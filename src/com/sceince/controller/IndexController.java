package com.sceince.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sceince.service.UserService;


@Controller
public class IndexController extends BaseController{
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/")
	public String index() throws InterruptedException {
		
		userService.testAsync("sjdfhkjshfgsdhgjk");
		
		return "index";
	}
	
	
	
	

}
