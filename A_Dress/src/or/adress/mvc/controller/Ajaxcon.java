package or.adress.mvc.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.SmangDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vo.MemVO;
import vo.ProductVO;

@Controller
public class Ajaxcon {
	@Autowired
	private ProductDao pdao; 
	@Autowired
	private SmangDao smdao;
	@Autowired
	private ShopDao shdao;
	//성별 물건 검색 ajax
	@RequestMapping(value = "sh_AjaxProductSearch")
	public ModelAndView sh_AjaxProductSearch(String shop_num,
			String key) {
		ModelAndView mav = new ModelAndView("sh_AjaxProductSearch");
		
		
		System.out.println("ajax Test");
		System.out.println("=================");
		System.out.println("shopNum:" + shop_num + "key:" + key);
		HashMap<String, String> map = new HashMap<>();
		map.put("pro_check", key);
		map.put("shop_num", shop_num);

		
		List<ProductVO> list = pdao.getListProductGender(map);
		Iterator<ProductVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		//res.append("<tr>");
		int i = 0;
		while (it.hasNext()) {
			i++;
			ProductVO v = new ProductVO();
			v = it.next();
			res.append("<tr>");
			res.append("<td>" + i + "</td>");
			res.append("<td>").append(v.getPro_name()).append("</td>");
			res.append("<td>").append(v.getPro_code()).append("</td>");
			res.append("<td>").append(v.getSto_size()).append("</td>");
			res.append("<td>").append(v.getSto_amount()).append("</td>");
			res.append("<td>").append(v.getPro_price()).append("</td>");
			res.append("<td><img src='upload/" + v.getPro_img()
					+ "' style=\"width: 100px;\"></td>");//추후 세일추가			
			res.append("<td><img src='upload/" + v.getPro_barcode()
					+ "' style=\"width: 100px;\"></td>");
			res.append("</tr>");

		}

		//res.append("</tr>");
		String strString = res.toString();
		System.out.println(strString);
		// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
		mav.addObject("strString", strString);
		
		return mav;
	}
	
	@RequestMapping(value="sh_smang_callback", method=RequestMethod.POST)
	public ModelAndView sh_smang_callback(String name){
		//String name = request.getParameter("name");
	    System.out.println(name);
		List<MemVO> list = shdao.getListMember(name);
		Iterator<MemVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while(it.hasNext()){
			MemVO v = new MemVO();
			v = it.next();
			res.append("<tr>");
			res.append("<td>").append(v.getMem_num()).append("</td>");
			res.append("<td>").append(v.getMem_name()).append("</td>");
			res.append("<td>").append(v.getMem_addr()).append("</td>");
			res.append("<td>").append(v.getMem_tel()).append("</td>");
			res.append("<td>").append(v.getMem_mileage()).append("</td>");
			res.append("<td>");
			res.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
			res.append("href=\"javascript:ckcustomer('").append(v.getMem_name()).append("', '");
			res.append(v.getMem_tel()).append("', '");
			res.append(v.getMem_mileage()).append("', '"+v.getMem_num()+"')\">");
			res.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
			res.append("</td>");
			res.append("</tr>");
			
		}
		String str = res.toString();
		System.out.println(str);
		ModelAndView mav = new ModelAndView("shop/sh_smang_callback");
		mav.addObject("cuscont", str);
		return mav;
	}
	
	
	
}
