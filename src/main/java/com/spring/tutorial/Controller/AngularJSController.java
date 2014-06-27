package com.spring.tutorial.Controller;

import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tutorial.Common.CommonController;

@Controller
@RequestMapping("/u")
public class AngularJSController extends CommonController{
	
	private static final Logger logger = Logger.getLogger(AngularJSController.class);
	
	@RequestMapping(value="/angularJs")
	public String angularJs(Locale locale,Model model) {

		logger.info(" ========== Ajaxs types =========== ");
		
		return "Angular/angularJs";
	}

}
