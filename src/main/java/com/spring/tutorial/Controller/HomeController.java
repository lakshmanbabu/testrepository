package com.spring.tutorial.Controller;

import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.tutorial.Common.CommonController;
import com.spring.tutorial.Common.ConstantClass;
import com.spring.tutorial.Common.Email;
import com.spring.tutorial.Common.GenericResponse;
import com.spring.tutorial.Model.User;
import com.spring.tutorial.Model.UserRoles;


@Controller
public class HomeController extends CommonController{
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = ConstantClass.DEFAULT_HOMEPAGE, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
	
		return "home";
	}
	
	
	@RequestMapping(value=ConstantClass.USER_SIGNUP, method = RequestMethod.GET)
	public String signup(Locale locale,Model model) {

		System.out.println("signup page");
		
		return "Signup";
	}
	
	
	@RequestMapping(value=ConstantClass.USER_SIGNUP_PROCESS, method = RequestMethod.POST)
	public @ResponseBody GenericResponse signupProcess(@ModelAttribute User user,Model model, Locale locale,HttpServletRequest request,HttpServletResponse response1) {

		System.out.println("signup Process");
		
		
		GenericResponse response = new GenericResponse();
		try {
		user.setCreatedDate(new Date());
		user.setEnabled(true);
		user.setUserRole("ROLE_USER");
		int id=userService.saveUserDetails(user);
		
		UserRoles userRoles=new UserRoles();
		
		userRoles.setAuthority("ROLE_USER");
		user.setUserId(id);
		userRoles.setUser(user);		
		userService.saveUserRole(userRoles);
		
		Email email=new Email();
		
		if(user.getEmail()!=null)
			email.setMailto(user.getEmail());
		else
			email.setMailto("");
		
		emailSender.sendWelcomeEmail(user,email,request,response1);
		
		response.setError(false);
		response.setMessage("User Registration Successfully");
		
		return response;
		
		}catch (Exception e) {	
			
			response.setError(true);
			response.setMessage(e.getMessage());				
			logger.info("SignUp Exceptipon:"+e.getMessage());
			
			return response;
		}
	}
	
	
	
}
