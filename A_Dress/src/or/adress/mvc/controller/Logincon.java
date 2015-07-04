package or.adress.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Logincon {
	
	@RequestMapping(value="/bon_login")
	public ModelAndView bon_login(){
		ModelAndView mav = new ModelAndView("login/bon_login");
		return mav;
	}
	
	@RequestMapping(value="/sh_login")
	public ModelAndView sh_login(){
		ModelAndView mav = new ModelAndView("login/sh_login");
		return mav;
	}
}
