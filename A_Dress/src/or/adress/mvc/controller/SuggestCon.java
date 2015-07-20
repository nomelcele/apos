package or.adress.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import or.adress.mvc.dao.SuggestDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import suggest.Suggest;
import xml.MakeXML;

@Controller
public class SuggestCon {
	@Autowired
	private SuggestDao sgdao;
	@Autowired
	private MakeXML makexml;

	@RequestMapping(value="sg_member")
	public ModelAndView sg_member(String key) {
		System.out.println("sugest Key:" + key);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/suggestmem");

		ArrayList<String> list = sgdao.getMember(key);
		makexml.shSeggest(list);
		// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
		StringBuffer res = new StringBuffer();
		res.append("[");
		String[] suggests = new Suggest().getSuggest(key);
		if (suggests != null) {
			for (int i = 0; i < suggests.length; i++) {
				res.append("\""+suggests[i]+"\"");
				if (!(i == suggests.length - 1)) {
					res.append(',');
				}
			}
		}
		res.append("]");
		mav.addObject("res", res);
		return mav;
	}
	
	@RequestMapping(value="sg_product")
	public ModelAndView sg_product(String key) {
		System.out.println("sugest Key:" + key);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/suggestmem");

		ArrayList<String> list = sgdao.getMember(key);
		makexml.shSeggest(list);
		// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
		StringBuffer res = new StringBuffer();
		res.append("[");
		String[] suggests = new Suggest().getSuggest(key);
		if (suggests != null) {
			for (int i = 0; i < suggests.length; i++) {
				res.append("\""+suggests[i]+"\"");
				if (!(i == suggests.length - 1)) {
					res.append(',');
				}
			}
		}
		res.append("]");
		mav.addObject("res", res);
		return mav;
	}
	
}
