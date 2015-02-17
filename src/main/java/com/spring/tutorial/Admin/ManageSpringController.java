package com.spring.tutorial.Admin;

import java.security.Principal;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.tutorial.Common.CommonController;
import com.spring.tutorial.Model.SpringMvc;
import com.spring.tutorial.Model.SpringTitles;

@Controller
@RequestMapping("/admin")
public class ManageSpringController extends CommonController{

	private static final Logger logger = LoggerFactory.getLogger(ManageSpringController.class);
	
	@RequestMapping("/manageSpringMvc")
	public String signup(Locale locale,Model model) {

		logger.info(" Manage Spring mvc Tutorial ");
		
		List<SpringMvc> springlist=springService.getSprigList();
		model.addAttribute("springlist", springlist);
		
		model.addAttribute("manageSpringActive", true);
		
		return "admin/manageSpringMvc";
	}
	
	
	@RequestMapping(value="/2014/002/addSpringContent",method=RequestMethod.GET)
	public String addSpringContent(Locale locale,Model model) {

		logger.info(" Manage Spring mvc Tutorial ");
		model.addAttribute("page", "manageSpringMvc");
		
		model.addAttribute("manageSpringActive", true);
		
		return "admin/addSpringContent";
	}
	
	@RequestMapping(value="/2014/002/saveSpringMvcProcess",method=RequestMethod.POST)
	public @ResponseBody String saveSpringMvcProcess( @ModelAttribute SpringMvc springMvc,Principal principal,Model model) {

	
		try {
		logger.info(" Manage Spring mvc Tutorial ");
		Set<SpringMvc> spring=new HashSet<>();
		SpringTitles springTitles=new SpringTitles();
	
		String loggedUser=principal.getName();
		System.err.println("loggedUser::"+loggedUser);
		springMvc.setCreatedDate(new Date());
		spring.add(springMvc);
		springMvc.setTitles(springTitles);

		springTitles.setTitleName(springMvc.getTopic());
		springTitles.setCreatedDate(new Date());
		springTitles.setSpringMvcs(spring);
		
		
		springService.saveSpringContent(springTitles);
		
		model.addAttribute("manageSpringActive", true);
		}catch (Exception e) {	
			logger.info("SignUp Exceptipon:"+e.getMessage());
			
		}
		return "admin/manageSpringMvc";
		
	}
	
	
}
