package or.adress.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Shopcon {
	@RequestMapping(value = "/sh_index")
	public String index() {
		return "shop/sh_index";
	}
	@RequestMapping(value="/sh_memdetail_change")
	public ModelAndView memdetail_change(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_index");
		return mav;
	}
	@RequestMapping(value="/sh_workNotice")
	public ModelAndView sh_workNotice(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workNotice");
		return mav;
	}
}
