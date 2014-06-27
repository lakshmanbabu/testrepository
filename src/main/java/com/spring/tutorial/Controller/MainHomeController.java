package com.spring.tutorial.Controller;

import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tutorial.Common.CommonController;

@Controller
@RequestMapping("/u")
public class MainHomeController extends CommonController {

	private static final Logger LOGGER = Logger.getLogger(MainHomeController.class);

	@RequestMapping("/mainHome")
	public String signup(Locale locale,Model model) {

		System.out.println("main home page");
		
		return "mainHome";
	}
	
	
}
