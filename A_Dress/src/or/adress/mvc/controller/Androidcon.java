package or.adress.mvc.controller;

import java.util.HashMap;

import or.adress.mvc.dao.BonsaDao;
import or.adress.mvc.dao.ShopDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Androidcon {
	@Autowired
	private ShopDao shdao;

	@RequestMapping(value = "androidlogin")
	public ModelAndView androidlogin(String id, String pwd) {
		ModelAndView mav = new ModelAndView("ajax/android_loginshop"
				);
		System.out.println("-----------androidlogin--------");
		System.out.println("Request ID : " + id);
		System.out.println("Request PWD : " + pwd);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		Boolean resid = shdao.checkMasteridpwd(map);
		String res = "로그인에 실패했습니다";
		String key = "false";
		if (resid) {
			res = "로그인 성공 "+id+"님 환영합니다.";
			key = "true";
		}
		System.out.println("Request RES : " + res);
		mav.addObject("res", res);
		mav.addObject("key", key);
		
		
		return mav;
	}
	
	@RequestMapping(value = "androidbarcode")
	public ModelAndView androidbarcode(String id, String barcode) {
		ModelAndView mav = new ModelAndView("ajax/android_loginshop"
				);
		System.out.println("-----------androidbarcode--------");
		System.out.println("Request ID : " + id);
		System.out.println("Request barcode : " + barcode);
		
		String key = "false";
		
		System.out.println("Request barcode : " +  barcode);
		mav.addObject("res",  barcode);
		mav.addObject("key", key);
		
		
		return mav;
	}
}
