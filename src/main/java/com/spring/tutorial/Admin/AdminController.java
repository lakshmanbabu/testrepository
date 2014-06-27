package com.spring.tutorial.Admin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tutorial.Common.CommonController;

@Controller
@RequestMapping("/admin")
public class AdminController extends CommonController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	  @RequestMapping(value="/login")
	    public String loginerror(Model model) {
	        
	        return "admin/adminLogin";
	    }	  
	
	@RequestMapping("/adminHome")
	public String signup(Locale locale,Model model) {

		System.out.println("main home page");
		
		return "admin/adminHome";
	}
	
}
