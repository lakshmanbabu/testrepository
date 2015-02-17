package com.spring.tutorial.Admin;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.tutorial.Common.CommonController;
import com.spring.tutorial.Common.ConstantClass;
import com.spring.tutorial.Model.User;

@Controller
@RequestMapping("/admin")
public class ManageUserController extends CommonController {
	
	private static final Logger logger = LoggerFactory.getLogger(ManageUserController.class);
	
	@RequestMapping(value=ConstantClass.MANAGE_USERS,method = RequestMethod.GET)
	public String signup(Locale locale,Model model) {

		logger.info("manageUsers ");
		List<User>  userList=userService.getUsersList();
		System.out.println("userList::"+userList.size());
		model.addAttribute("page", "manageUsers");
		model.addAttribute("userList", userList);
		
		model.addAttribute("manageUsersActive", true);
		
		return "admin/manageUsers";
	}

	@RequestMapping(value=ConstantClass.EDIT_USER,method = RequestMethod.GET)
	public @ResponseBody User editUserDetails(@RequestParam Integer userId,Model model) {

		logger.info("manageUsers ");
		User user=userService.getUserById(userId);
		model.addAttribute("manageUsersActive", true);
		return user;
	}
	
	@RequestMapping(value=ConstantClass.UPDATE_USER,method = RequestMethod.POST)
	public @ResponseBody String  updateUserDetails(@ModelAttribute User user,Model model) {

		logger.info("manageUsers ");
		
		User user1=null;
		if(user.getUserId()!=null){
			user1=userService.getUserById(user.getUserId());
			user.setCreatedDate(user1.getCreatedDate());
			userService.updateUserDetails(user);
		}
		model.addAttribute("manageUsersActive", true);
		return "admin/manageUsers";
	}
	
	@RequestMapping(value=ConstantClass.DELETE_USER,method=RequestMethod.GET)
	public @ResponseBody String deleteSelectedEducations(@PathVariable Integer userId, Model model,HttpServletRequest request){
		
		userService.deleteUserById(userId);
		
		return "admin/manageUsers";
	}
}
