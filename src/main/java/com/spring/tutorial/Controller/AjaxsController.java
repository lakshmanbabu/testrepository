package com.spring.tutorial.Controller;

import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tutorial.Common.CommonController;

@Controller
@RequestMapping("/u")
public class AjaxsController extends CommonController {
	
	private static final Logger logger = Logger.getLogger(AjaxsController.class);
	
	@RequestMapping(value="/ajaxsScreen")
	public String ajaxsScreen(Locale locale,Model model) {

		logger.info("Ajaxs Home page");
		
		return "Ajaxs/ajaxsSteps";
	}
	
	@RequestMapping(value="/ajaxsMeans")
	public String ajaxsMeans(Locale locale,Model model) {

		logger.info(" ajaxsMeans");
		
		return "Ajaxs/ajaxsMeans";
	}
	@RequestMapping(value="/ajaxsFeatures")
	public String ajaxsFeatures(Locale locale,Model model) {

		logger.info(" ========== Ajaxs Features =========== ");
		
		return "Ajaxs/ajaxsFeatures";
	}
	
	@RequestMapping(value="/ajaxsExamples")
	public String ajaxsExamples(Locale locale,Model model) {

		logger.info(" ========== Ajaxs Examples =========== ");
		
		return "Ajaxs/ajaxsExamples";
	}
	
	@RequestMapping(value="/ajaxsTypes")
	public String ajaxsTypes(Locale locale,Model model) {

		logger.info(" ========== Ajaxs types =========== ");
		
		return "Ajaxs/ajaxsTypes";
	}
	
	/*@RequestMapping(value="/ajaxsCalucation", method=RequestMethod.GET)
	public @ResponseBody  GenericResponse ajaxsCalucation(@RequestParam Integer num1,@RequestParam Integer num2, Locale locale,Model model) {

		logger.info(" ========== Ajaxs Examples =========== ");
		
		GenericResponse response=new GenericResponse();
		
		Integer totalVal=num1*num2;
		response.setTotalValue(totalVal);
		
		return response;
	}
	
	@RequestMapping(value="/ajaxsCalucation1", method=RequestMethod.GET)
	public @ResponseBody  String ajaxsCalucation2( Locale locale,Model model) {

		logger.info(" ========== Ajaxs Examples =========== ");
		
		
		return "";
	}
	*/
}
