package com.spring.tutorial.Common;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.tutorial.Service.SpringService;
import com.spring.tutorial.Service.UserService;


public class CommonController {

	
	@Autowired
	public	UserService userService;
	
	@Autowired
	public SpringService springService;
	
	@Autowired
	protected EmailSender emailSender;
}
