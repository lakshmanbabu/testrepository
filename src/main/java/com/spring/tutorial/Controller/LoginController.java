package com.spring.tutorial.Controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.tutorial.Common.CommonController;
import com.spring.tutorial.Common.EmailSender;
import com.spring.tutorial.Model.User;

@Controller
public class LoginController extends CommonController{
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	   @RequestMapping(value="/login", method = RequestMethod.GET)  
	    public String login(Model model,HttpServletRequest request,Locale locale) {
		   
			model.addAttribute("user", new User());
			EmailSender.host=request.getHeader("host")+request.getContextPath();
			HttpSession session=request.getSession(true);
			
	        return "Login";
	    }
	 
	    @RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	    public String loginerror(Model model) {
	        model.addAttribute("error", "true");
	        
	        return "Login";
	    }	    
	  

}
