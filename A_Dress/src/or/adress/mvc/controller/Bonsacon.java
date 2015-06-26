package or.adress.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Bonsacon {
@RequestMapping(value="/bon_index")
public ModelAndView bon_index(){
	ModelAndView mav= new ModelAndView();
	mav.setViewName("bonsa/bon_index");
	return mav;
}
}
