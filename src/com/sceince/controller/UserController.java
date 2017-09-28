package com.sceince.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sceince.model.UserToken;
import com.sceince.service.UserService;
import com.sceince.service.UserTokenService;

@Controller
@RequestMapping("user")
public class UserController  extends BaseController{
	
	@Autowired
	private UserTokenService userTokenService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("save")
	@ResponseBody
	public String saveUserToken(UserToken userToken) {
		
		return "save ok : "+userTokenService.saveUserToken(userToken);
	}
	
	@RequestMapping("update")
	@ResponseBody
	public String updateUser() {
		
		return "update ok : "+userService.updateUser();
	}

}
