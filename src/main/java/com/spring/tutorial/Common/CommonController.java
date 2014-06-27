package com.spring.tutorial.Common;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.tutorial.Service.UserService;


public class CommonController {

	
	@Autowired
	public	UserService userService;
	
	
	
}
