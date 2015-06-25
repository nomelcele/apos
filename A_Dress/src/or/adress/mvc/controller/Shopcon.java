package or.adress.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Shopcon {
	@RequestMapping(value = "/sh_index")
	public String index() {
		return "shop/sh_index";
	}
}
