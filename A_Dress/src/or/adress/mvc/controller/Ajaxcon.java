package or.adress.mvc.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mail.SendFindIdMail;
import mail.SendFindPwdMail;
import mail.SendRecommendProductMail;
import or.adress.mvc.dao.BonsaDao;
import or.adress.mvc.dao.ChatDao;
import or.adress.mvc.dao.MemberDao;
import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.SalesCheckDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.SmangDao;
import or.adress.mvc.dao.StaffDao;
import or.adress.mvc.service.BonsaService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vo.CalendarVO;
import vo.ChaVO;
import vo.MemVO;
import vo.ProductVO;
import vo.SalesCheckVO;
import vo.ShopHotkeyVO;
import vo.ShopVO;
import vo.SmangVO;
import vo.StaffVO;

@Controller
public class Ajaxcon {
	@Autowired
	private ProductDao pdao;
	@Autowired
	private SmangDao smdao;
	@Autowired
	private ShopDao shdao;
	@Autowired
	private BonsaDao bdao;
	@Autowired
	private SalesCheckDao skdao;
	@Autowired
	private ChatDao chdao;
	@Autowired
	private BonsaService bservice;
	@Autowired
	private MemberDao memdao;
	@Autowired
	private StaffDao sfdao;

	// 메일 전송을 위한 클래스
	@Autowired
	private SendRecommendProductMail sendRecommendProductMail;
	@Autowired
	private SendFindIdMail sendFindIdMail;
	@Autowired
	private SendFindPwdMail sendFindPwdMail;

	// 성별 물건 검색 ajax
	@RequestMapping(value = "sh_AjaxProductSearch")
	public ModelAndView sh_AjaxProductSearch(String shop_num, String key) {
		ModelAndView mav = new ModelAndView("ajax/sh_AjaxProductSearch");

		System.out.println("ajax Test");
		System.out.println("=================");
		System.out.println("shopNum:" + shop_num + "key:" + key);
		HashMap<String, String> map = new HashMap<>();
		map.put("pro_check", key);
		map.put("shop_num", shop_num);

		List<ProductVO> list = pdao.getListProductGender(map);
		String strString = makeNewHtmlCodes(list.iterator(), "productsByGender");
		
		System.out.println(strString);
		// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
		mav.addObject("strString", strString);

		return mav;

	}

	// 판매등록 고객검색콜백
	@RequestMapping(value = "sh_smang_callback", method = RequestMethod.POST)
	public ModelAndView sh_smang_callback(String name) {
		System.out.println(name);
		List<MemVO> list = shdao.getListMember(name);
		String str = makeNewHtmlCodes(list.iterator(), "membersForSalesRegister");
		
		System.out.println(str);
		ModelAndView mav = new ModelAndView("ajax/sh_smang_callback");
		mav.addObject("cuscont", str);
		return mav;
		
	}

	// 판매등록 상품검색 콜백
	@RequestMapping(value = "sh_smang_callback2", method = RequestMethod.POST)
	public ModelAndView sh_smang_callback2(String pname, HttpSession session) {
		String shop_num = session.getAttribute("shop_num").toString();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("pname", pname);
		map.put("shop_num", shop_num);
		List<SmangVO> list = smdao.getListProduct(map);
		String str2 = makeNewHtmlCodes(list.iterator(), "productsForSalesRegister");
		
		ModelAndView mav = new ModelAndView("ajax/sh_smang_callback2");
		mav.addObject("procont", str2);
		return mav;
		
	}

	// 본사로그인 캡챠 (로그인)
	@RequestMapping(value = "bon_checkcaptcha", method = RequestMethod.POST)
	public ModelAndView bon_checkcaptcha(String id, String pwd) {
		ModelAndView mav = new ModelAndView("ajax/bon_checkcaptcha");
		// String id = request.getParameter("id");
		// String pwd = request.getParameter("pwd");

		System.out.println("-----------bon_checkcaptcha---------");
		System.out.println("Request ID : " + id);
		System.out.println("Request PWD : " + pwd);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		String resid = bdao.logincheck(map);
		boolean res = false;
		if (id.equals(resid)) {
			res = true;
		}
		System.out.println("Request RES : " + res);
		mav.addObject("res", res);
		return mav;
	}

	// 아이디찾기 (디비)
	@RequestMapping(value = "bon_findid", method = RequestMethod.POST)
	public ModelAndView bon_findid(String name, String tel1, String tel2,
			String tel3) {
		ModelAndView mav = new ModelAndView("ajax/bon_findid");
		String tel = tel1 + "-" + tel2 + "-" + tel3;

		System.out.println("-----------bon_findid.jsp---------");
		System.out.println("Request NAME : " + name);
		System.out.println("Request TEL : " + tel);

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("tel", tel);
		String res = bdao.findid(map);
		System.out.println("Request RES : " + res);
		mav.addObject("res", res);
		return mav;
	}

	// 아이디 찾기 메일발송
	@RequestMapping(value = "bon_findid2", method = RequestMethod.POST)
	public void bon_findid2(@RequestParam HashMap<String, String> params) {
		// 메일 관련 정보
//		String mail = request.getParameter("mail");
//		String name = request.getParameter("name");
//		String id = request.getParameter("id");
		

		System.out.println("에이젝스 컨트롤러!!!!!!!!!!!!!!!!!!!!!!!!!!!!1");

		sendFindIdMail.mailSend(params);
		
	}

	// 비밀번호찾기 (디비)
	@RequestMapping(value = "bon_findpwd", method = RequestMethod.POST)
	public ModelAndView bon_findpwd(String name, String id) {
		// String name = request.getParameter("name");
		// String id = request.getParameter("id");

		System.out.println("에이젝스 컨트롤러!!!!!!!!!!!!!!!!!!!!!!!!!!!!1");
		System.out.println("-----------bon_findpwd.jsp---------");
		System.out.println("Request NAME : " + name);
		System.out.println("Request ID : " + id);

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("id", id);
		String res = bdao.findpwd(map);
		System.out.println("Request RES : " + res);
		ModelAndView mav = new ModelAndView("ajax/bon_findpwd");
		mav.addObject("res", res);
		return mav;
	}

	// 비밀번호 찾기 메일발송
	@RequestMapping(value = "bon_findpwd2", method = RequestMethod.POST)
	public void bon_findpwd2(@RequestParam HashMap<String, String> params) {
		// 원래 파라미터
		// String name, String mail, String pwd
		

		System.out.println("에이젝스 컨트롤러!!!!!!!!!");
	}

	// 샵 회원가입 (ajax)
	@RequestMapping(value = "/NCRHOTcheck", method = RequestMethod.POST)
	public ModelAndView NCRHOTcheck(String email, int crnum, int hotkey) {
		System.out.println("핫키체크이후");
		List<ShopHotkeyVO> list = shdao.checkhotcrnumname(crnum);
		System.out.println("Request Email : " + email);
		System.out.println("Request Crnum : " + crnum);
		System.out.println("Request hotkey :" + hotkey);
		boolean res = false;

		for (ShopHotkeyVO e : list) {
			System.out.println("DB key_email :" + e.key_email);
			System.out.println("DB key_crnum :" + e.key_crnum);
			System.out.println("DB key_hotkey :" + e.key_hotkey);
			if ((e.key_email).equals(email)) {
				if (e.key_crnum == crnum) {
					if (e.key_hotkey == hotkey) {
						res = true;
						System.out.println("결과 :" + res);
					}
				}
			}
		}
		ModelAndView mav = new ModelAndView("ajax/sh_NCRHOTcheck");
		mav.addObject("res", res);
		return mav;
	}

	// 아이디중복체크
	@RequestMapping(value = "/shopjoincheck")
	public ModelAndView sh_shopjoincheck(String id, Map<String, Object> model) {
		ShopVO shopvo = new ShopVO();
		shopvo.setShop_id(id);
		model.put("joinForm", shopvo);

		ModelAndView mav = new ModelAndView("ajax/sh_shopjoincheck");
		System.out.println(id);
		boolean res = shdao.checkid(id);
		mav.addObject("res", res);
		return mav;
	}

	@RequestMapping(value = "sh_checkcaptcha", method = RequestMethod.POST)
	public ModelAndView sh_checkcaptcha(String id, String pwd, String radio) {
		// String id = request.getParameter("id");
		// String pwd = request.getParameter("pwd");
		// String radio = request.getParameter("radio");
		//
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		System.out.println("-----------sh_checkcaptcha---------");
		System.out.println("Request ID : " + id);
		System.out.println("Request PWD : " + pwd);
		System.out.println("Request checkBox : " + radio);
		boolean res = false;

		if (radio.equals("master")) {
			System.out.println("--------Master Table 검색중---------");
			res = shdao.checkMasteridpwd(map);
			System.out.println(res);
		} else {
			System.out.println("--------Staff Table 검색중---------");
			res = shdao.checkStaffidpwd(map);
		}
		ModelAndView mav = new ModelAndView("ajax/sh_checkcaptcha");
		mav.addObject("res", res);
		return mav;
	}

	// ---------재고상품조회-----하진하진---

	@RequestMapping(value = "/sh_productStock_callback", method = RequestMethod.POST)
	public ModelAndView sh_productStock_callback(String pcode, String shopnum) {
		ModelAndView mav = new ModelAndView("ajax/sh_productStock_callback");
		HashMap<String, String> map = new HashMap<>();
		map.put("pname", pcode);
		map.put("shop_num", shopnum);
		List<SmangVO> list = smdao.getListProduct(map);
		String str2 = makeNewHtmlCodes(list.iterator(), "productsForChangingAmountStock");

		mav.addObject("str2", str2);
		return mav;
	}

	@RequestMapping(value = "sh_ajaxsaletable")
	public ModelAndView sh_ajaxsaletable() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/sh_ajaxsaletable");
		return mav;

	}

	// 매장 정산관리 판매현황 -
	@RequestMapping(value = "sh_salesGetTable_ajax", method = RequestMethod.POST)
	public ModelAndView sh_ajaxsaletable(String shop_num, String date_ps) {
		List<SalesCheckVO> list = skdao.getonday(shop_num, date_ps);
		String res = makeNewHtmlCodes(list.iterator(), "SalesResults");
		
		System.out.println(res.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/sh_ajaxsaletable");
		mav.addObject("res", res);
		return mav;

	}

	// 본사채팅입력
	@RequestMapping(value = "bon_add_chat", method = RequestMethod.POST)
	public String bon_add_chat(HttpServletRequest request, HttpSession session) {
		String u_id = "";
		String chat = "";
		try {
			u_id = URLDecoder.decode(session.getAttribute("bon_id").toString(),
					"utf-8");
			chat = URLDecoder.decode(request.getParameter("chat"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String reip = request.getRemoteAddr();
		System.out.println("Log:" + u_id);
		System.out.println("Log:" + chat);
		System.out.println("Log:" + reip);
		ChaVO v = new ChaVO();
		v.setU_id(u_id);
		v.setChat(chat);
		v.setReip(reip);
		v.setImg("A-4.JPG");
		chdao.insertChat(v);
		System.out.println("체크3");
		return "ajax/NewFile";
	}

	// 샵채팅입력
	@RequestMapping(value = "sh_add_chat", method = RequestMethod.POST)
	public String sh_add_chat(HttpServletRequest request, HttpSession session) {
		String u_id = "";
		String chat = "";
		try {
			u_id = URLDecoder.decode(session.getAttribute("shop_name")
					.toString(), "utf-8");
			chat = URLDecoder.decode(request.getParameter("chat"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String reip = request.getRemoteAddr();
		System.out.println("Log:" + u_id);
		System.out.println("Log:" + chat);
		System.out.println("Log:" + reip);
		ChaVO v = new ChaVO();
		v.setU_id(u_id);
		v.setChat(chat);
		v.setReip(reip);
		v.setImg(session.getAttribute("shop_img").toString());
		chdao.insertChat(v);
		System.out.println("체크3");
		return "ajax/NewFile";
	}

	// 본사채팅로드
	@RequestMapping(value = "/bon_chatload")
	public ModelAndView bon_chatload(HttpServletResponse response,
			HttpSession session) {

		// response.setHeader("cache-control", "no-cache");
		// response.setContentType("text/event-stream");
		String id = (String) session.getAttribute("bon_id");
		List<ChaVO> list = chdao.getList();
		StringBuffer outs = new StringBuffer();
		// String id = request.getRemoteAddr();
		// outs.append("retry:2000\n");
		String iu = "";
		if (id.equals(list.get(0).getU_id())) {
			iu = "i";
		} else {
			iu = "you";
		}
		outs.append("data:");
		for (ChaVO e : list) {
			if (e.getU_id().equals(id)) {
				outs.append("<li class=\"by-other\">");
				// outs.append("<div class=\"avatar pull-right\">").append(e.getU_id()).append("<div class=\"chat-content\"><div class=\"chat-meta\">");
				outs.append(
						"<div class=\"avatar pull-right\"><img src=\"master/")
						.append(e.getImg())
						.append("\"style=\"width:40px; height: 40px;\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
				outs.append(e.getCdate());
				outs.append("<span class=\"pull-right\">");
				outs.append(e.getU_id());
				outs.append("</span></div>");
				outs.append(e.getChat());
				outs.append("<div class=\"clearfix\"></div></div></li>");

			} else {
				outs.append("<li class=\"by-me\">");
				outs.append(
						"<div class=\"avatar pull-left\"><img src=\"master/")
						.append(e.getImg())
						.append("\"style=\"width:40px; height: 40px;\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
				outs.append(e.getU_id());
				outs.append("<span class=\"pull-right\">");
				outs.append(e.getCdate());
				outs.append("</span></div>");
				outs.append(e.getChat());
				outs.append("<div class=\"clearfix\"></div></div></li>");

			}

		}
		outs.append("<@>" + iu + "\n\n");
		String str = outs.toString();
		ModelAndView mav = new ModelAndView("ajax/chatload");
		mav.addObject("str", str);
		return mav;
	}

	// 샵채팅로드
	@RequestMapping(value = "sh_chatload")
	public ModelAndView sh_chatload(HttpServletResponse response,
			HttpSession session) {

		// response.setHeader("cache-control", "no-cache");
		// response.setContentType("text/event-stream");
		String id = (String) session.getAttribute("shop_name");
		List<ChaVO> list = chdao.getList();
		StringBuffer outs = new StringBuffer();
		// String id = request.getRemoteAddr();
		// outs.append("retry:2000\n");
		String iu = "";
		if (id.equals(list.get(0).getU_id())) {
			iu = "i";
		} else {
			iu = "you";
		}
		outs.append("data:");
		for (ChaVO e : list) {
			if (e.getU_id().equals(id)) {
				outs.append("<li class=\"by-other\">");
				outs.append(
						"<div class=\"avatar pull-right\"><img src=\"master/")
						.append(e.getImg())
						.append("\"style=\"width:40px; height: 40px;\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
				outs.append(e.getCdate());
				outs.append("<span class=\"pull-right\">");
				outs.append(e.getU_id());
				outs.append("</span></div>");
				outs.append(e.getChat());
				outs.append("<div class=\"clearfix\"></div></div></li>");
			} else {
				outs.append("<li class=\"by-me\">");
				outs.append(
						"<div class=\"avatar pull-left\"><img src=\"master/")
						.append(e.getImg())
						.append("\"style=\"width:40px; height: 40px;\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
				outs.append(e.getU_id());
				outs.append("<span class=\"pull-right\">");
				outs.append(e.getCdate());
				outs.append("</span></div>");
				outs.append(e.getChat());
				outs.append("<div class=\"clearfix\"></div></div></li>");
			}

		}
		outs.append("<@>" + iu + "\n\n");
		String str = outs.toString();
		ModelAndView mav = new ModelAndView("ajax/chatload");
		mav.addObject("str", str);
		return mav;
	}

	// 매장 기간별 정산관리 ajax
	@RequestMapping(value = "sh_ajax_outletsale", method = RequestMethod.POST)
	public ModelAndView sh_ajaxoutletsale(String shop_num, String startdate,
			String enddate) {
		ModelAndView mav = new ModelAndView();
		System.out.println(shop_num + ":" + startdate + ":" + enddate);
		List<SalesCheckVO> list = skdao.getList(shop_num, startdate, enddate);
		String res = makeNewHtmlCodes(list.iterator(), "SalesResultsByDate");

		mav.setViewName("ajax/sh_ajaxoutletsale");
		mav.addObject("list", res);
		return mav;
	}

	// 매장 기간별 정산 관리 차트
	@RequestMapping(value = "sh_ajaxoutletChart")
	public ModelAndView sh_ajaxoutletChart(String shop_num, String date_ps,
			String date_ps2) {
		System.out.println("차트 확인" + shop_num);
		ModelAndView mav = new ModelAndView("ajax/sh_ajaxoutletChart");
		List<SalesCheckVO> list = skdao.getListChart(shop_num, date_ps,
				date_ps2);
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer date = new StringBuffer();
		StringBuffer rescash = new StringBuffer();
		StringBuffer resnum = new StringBuffer();
		date.append("[ ");
		rescash.append("[ ");
		resnum.append("[ ");
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();

			date.append("'" + v.getSell_date()).append("',");
			rescash.append(v.getSell_cash()).append(",");
			resnum.append(v.getCount()).append(",");

		}
		date.append("]");
		rescash.append("]");
		resnum.append("]");
		String res = date.toString() + "@" + rescash.toString() + "@"
				+ resnum.toString();
		System.out.println(res);

		mav.addObject("res", res);
		return mav;
	}

	// 본사 - 정산관리 - 품목별 매출순위 - 테이블 검색
	@RequestMapping(value = "bon_ajaxproductsmang", method = RequestMethod.POST)
	public ModelAndView bon_ajaxproductsale(String pro_code, String startdate,
			String enddate) {
		System.out.println(pro_code + startdate + enddate);
		List<SalesCheckVO> list = skdao.getProductList(pro_code, startdate,
				enddate);
		String res = makeNewHtmlCodes(list.iterator(), "SalesResultsByProduct");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/bon_ajaxproductsale");
		mav.addObject("list", res);
		return mav;
	}

	// 본사 - 정산관리 - 품목별 매출순위 - 차트
	@RequestMapping(value = "bon_ajaxproductChart", method = RequestMethod.POST)
	public ModelAndView bon_ajaxproductChart(String pro_code, String startdate,
			String enddate) {
		System.out.println(pro_code + startdate + enddate);
		List<SalesCheckVO> list = skdao.getProductList(pro_code, startdate,
				enddate);
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer date = new StringBuffer();
		StringBuffer rescash = new StringBuffer();
		StringBuffer resnum = new StringBuffer();
		date.append("[ ");
		rescash.append("[ ");
		resnum.append("[ ");
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();

			date.append("'" + v.getSell_date()).append("',");
			rescash.append(v.getSell_cash()).append(",");
			resnum.append(v.getCount()).append(",");

		}
		date.append("]");
		rescash.append("]");
		resnum.append("]");
		String res = date.toString() + "@" + rescash.toString() + "@"
				+ resnum.toString();
		System.out.println(res);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/bon_ajaxproductChart");
		mav.addObject("res", res);
		return mav;
	}

	// 본사 - 정산관리 - 대리점별 매출순위 - 검색
	@RequestMapping(value = "bon_ajaxoutletsale", method = RequestMethod.POST)
	public ModelAndView bon_ajaxoutletsale(String shop_name, String startdate,
			String enddate) {
		System.out.println(shop_name + startdate + enddate);
		List<SalesCheckVO> list = skdao.get_shopList(shop_name, startdate,
				enddate);
		String res = makeNewHtmlCodes(list.iterator(), "SalesResultsByShop");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/bon_ajaxoutletsale");
		mav.addObject("res", res);
		return mav;
	}

	// 본사 - 정산관리 - 대리점별 매출순위 -챠트
	// bon_ajaxoutletChart
	@RequestMapping(value = "bon_ajaxoutletChart", method = RequestMethod.POST)
	public ModelAndView bon_ajaxoutletChart(String shop_name, String startdate,
			String enddate) {
		System.out.println("챠트" + shop_name + startdate + enddate);
		List<SalesCheckVO> list = skdao.get_shopList(shop_name, startdate,
				enddate);
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer date = new StringBuffer();
		StringBuffer rescash = new StringBuffer();
		StringBuffer resnum = new StringBuffer();
		date.append("[ ");
		rescash.append("[ ");
		resnum.append("[ ");
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();

			date.append("'" + v.getSell_date()).append("',");
			rescash.append(v.getSell_cash()).append(",");
			resnum.append(v.getCount()).append(",");

		}
		date.append("]");
		rescash.append("]");
		resnum.append("]");
		String res = date.toString() + "@" + rescash.toString() + "@"
				+ resnum.toString();
		System.out.println(res);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/bon_ajaxoutletChart");
		mav.addObject("res", res);
		return mav;
	}

	// 본사 매장조회 상세보기
	@RequestMapping(value = "bon_shopdetailmap", method = RequestMethod.POST)
	public ModelAndView bon_shopdetailmap(int shop_num) {
		// int shop_num = Integer.parseInt(request.getParameter("shop_num"));
		System.out.println("-----------bon_shopdetailmaps.jsp---------");
		System.out.println("Request SHOP_NUM : " + shop_num);

		ShopVO res = bdao.detailmap(shop_num);

		// System.out.println("Request RES1 : " + res.getName());
		// System.out.println("Request RES2 : " + res.getMaster());
		// System.out.println("Request RES3 : " + res.getAdr());
		String result = res.getShop_name() + "/" + res.getShop_master() + "/"
				+ res.getShop_adr();
		ModelAndView mav = new ModelAndView("ajax/bon_shopdetailmap");
		mav.addObject("result", result);
		return mav;
	}

	// 매장 - 판매등록 -환불 교환
	@RequestMapping(value = "sh_ajaxsmangexc")
	public ModelAndView sh_ajaxsmangexc(int sell_sell) {
		System.out.println(sell_sell);
		List<SalesCheckVO> list = smdao.get_selltable(sell_sell);
		String res = makeNewHtmlCodes(list.iterator(), "SalesResultsByReceiptNumber");
		
		ModelAndView mav = new ModelAndView("ajax/sh_ajaxsmangexc");
		mav.addObject("list", res);
		return mav;
	}

	// 본사 세일 - 상품조회
	@RequestMapping(value = "bpd_chk", method = RequestMethod.POST)
	public ModelAndView bpd_chk(int pro_code) {
		List<ProductVO> list = pdao.getListProduct_bon3(pro_code);
		String res = makeNewHtmlCodes(list.iterator(), "productsForChangingSaleRate");
		
		ModelAndView mav = new ModelAndView("ajax/bpd_chk_callback");
		mav.addObject("str", res);
		return mav;
	}

	// 본사 - Full Calendar
	@RequestMapping(value = "bon_ajaxcalendar", method = RequestMethod.POST)
	public ModelAndView bon_ajaxfullcalendar(CalendarVO vo) {
		ModelAndView mav = new ModelAndView();
		System.out.println("START :: " + vo.getCalen_start());
		System.out.println("END:: " + vo.getCalen_end());
		bdao.insertfullcalendar(vo);
		mav.setViewName("ajax/bon_ajaxfullcalendar");
		mav.addObject("res", "Success");
		return mav;
	}

	// 샵 - 엑셀
	@RequestMapping(value = "sh_excel", method = RequestMethod.POST)
	public ModelAndView sh_excel(String shop_num, String excel_date) {
		ModelAndView mav = new ModelAndView("sh_excel");
		List<SalesCheckVO> list = skdao.getonday(shop_num, excel_date);
		mav.addObject("list", list);
		mav.addObject("excel_date", excel_date);
		return mav;
	}

	@RequestMapping(value = "sh_excel2", method = RequestMethod.POST)
	public ModelAndView sh_excel2(int ex_staff_num, String ex_date_ps,
			String ex_date_ps2, HttpSession session) {

		ModelAndView mav = new ModelAndView("sh_excel2");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("staff_num", String.valueOf(ex_staff_num));
		map.put("date_ps", ex_date_ps);
		map.put("date_ps2", ex_date_ps2);
		map.put("shop_num", session.getAttribute("shop_num").toString());
		System.out.println(session.getAttribute("shop_num").toString());
		List<StaffVO> list = sfdao.get_pay(map);
		mav.addObject("list", list);
		mav.addObject("staff_num", ex_staff_num);
		mav.addObject("date_ps", ex_date_ps);
		mav.addObject("date_ps2", ex_date_ps2);
		return mav;
	}

	// bon_deletecalendar
	@RequestMapping(value = "bon_ajaxdeletecalendar", method = RequestMethod.POST)
	public ModelAndView bon_ajaxdeletecalendar(CalendarVO vo) {
		ModelAndView mav = new ModelAndView("bonsa/bon_fullcalendar");
		bservice.bon_deletecalendar(vo);
		return mav;
	}

	// 본사 추천 - 상품추천 - 상품 검색
	@RequestMapping(value = "bon_precommand", method = RequestMethod.POST)
	public ModelAndView bon_precommand(int pro_code) {
		List<ProductVO> list = pdao.getListProduct_bon3(pro_code);
		String res = makeNewHtmlCodes(list.iterator(), "productsForRecommendationToMember");
		
		ModelAndView mav = new ModelAndView("ajax/bpd_chk_callback");
		mav.addObject("str", res);
		return mav;
	}

	// 본사 추천 - 상품 추천 - 맴버 찾기
	@RequestMapping(value = "bon_precommandsearchmem")
	public ModelAndView bon_precommandsearchmem(String pro_code) {
		ModelAndView mav = new ModelAndView("ajax/bon_precommandsearchmem");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("pro_code", pro_code);
		String select = pro_code.substring(4, 5);
		System.out.println("잘라낸 코드 넘버:" + select);
		System.out.println("상품 추천-멤버 찾기");
		map.put("pre_code", "___" + select);

		List<MemVO> list = memdao.presearchmem(map);
		String res = makeNewHtmlCodes(list.iterator(), "membersForProductRecommendation");
		
		mav.addObject("res", res);
		return mav;
	}

	// 고객에게 상품 추천 메일 전송
	@RequestMapping(value = "/bon_precommandsearchmail")
	public void bon_precommandsearchmail(@RequestParam HashMap<String, String> params) {
		// 원래 파라미터
		// String mail, String name, String res, String img
		System.out.println("에이젝스 컨트롤러!!!!!!!!!!!!!!!!");	
		sendRecommendProductMail.mailSend(params);
	}

	// 출결 출근
	@RequestMapping(value = "sh_ajax_sh_workData")
	public ModelAndView sh_ajax_sh_workData(int staff_num, String staff_name) {
		int login = sfdao.get_login(staff_num);
		int work_staffnum = staff_num;
		String login_time = "-1";
		if (login == 0) {
			login_time = "0";
			sfdao.insert_login(work_staffnum);
		} else if (login == 1) {
			login_time = sfdao.get_logintime(work_staffnum);
			System.out.println();
		}

		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/sh_ajax_sh_workData");
		mav.addObject("res", login_time);
		return mav;
	}

	// 출결 퇴근
	@RequestMapping(value = "sh_ajax_sh_workDataend")
	public ModelAndView sh_ajax_sh_workDataend(int staff_num) {
		ModelAndView mav = new ModelAndView();
		int login = sfdao.get_login(staff_num);
		int work_staffnum = staff_num;
		String login_time = "-1";
		if (login == 0) {
			login_time = "0";

		} else if (login == 1) {
			sfdao.set_logout(work_staffnum);
			login_time = "1";
		}
		mav.setViewName("ajax/sh_ajax_sh_workData");
		mav.addObject("res", login_time);
		return mav;

	}

	// 직원 급여 계산
	@RequestMapping(value = "sh_ajax_workPay")
	public ModelAndView sh_ajax_workPay(int staff_num, String date_ps,
			String date_ps2, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("staff_num", String.valueOf(staff_num));
		map.put("date_ps", date_ps);
		map.put("date_ps2", date_ps2);
		map.put("shop_num", session.getAttribute("shop_num").toString());
		
		List<StaffVO> list = sfdao.get_pay(map);
		String res = makeNewHtmlCodes(list.iterator(), "staffForPayManagement");
		
		mav.setViewName("ajax/sh_ajax_sh_workPay");
		mav.addObject("res", res);
		return mav;
	}

	// 상품 추가 상품 코드 유효성 검사
	@RequestMapping(value = "bo_codechk")
	public ModelAndView bo_codechk(String pro_code) {
		ModelAndView mav = new ModelAndView("ajax/bon_codechk");
		System.out.println(pro_code);
		int count = pdao.pro_codechk(pro_code);
		mav.addObject("res", count);
		return mav;
	}

	// HOTKEY신청 부분에서의 CRNUM 확인
	@RequestMapping(value = "crnumchk")
	public ModelAndView crnumchk(int key_crnum) {
		ModelAndView mav = new ModelAndView("ajax/crnumchk");
		System.out.println(key_crnum);
		int res = shdao.chkcrnum(key_crnum);
		boolean result = false;
		if (res == 1) {
			result = true; // 값이 존재
		} else {
			result = false;
		}
		mav.addObject("result", result);
		return mav;
	}
	
	// html 코드를 작성하여 리턴하는 메서드
	public String makeNewHtmlCodes(Iterator searchRes,String searchType){
		// searchRes: DB 검색 결과가 담긴 List 내부의 VO들을 읽기 위한 Iterator
		// searchType: html 코드가 어떤 내용인지를 의미하는 키워드
		StringBuffer newHtmlCodes = new StringBuffer();
		
		switch(searchType){
		case "productsByGender":
			int numberOfProduct = 0;
			while (searchRes.hasNext()) {
				numberOfProduct++;
				ProductVO productInfo = new ProductVO();
				productInfo = (ProductVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<td>" + numberOfProduct + "</td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_name()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_code()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getSto_size()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getSto_amount()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_price()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_salerate()).append("</td>");

				newHtmlCodes.append("<td>");
				newHtmlCodes.append("<a href=\"javascript:open_win('product/"
						+ productInfo.getPro_img() + "')\">");
				newHtmlCodes.append("<img src='product/" + productInfo.getPro_img()
						+ "' style=\"width: 100px; cursor: hand; \"></a></td>");
				newHtmlCodes.append("<td>");
				newHtmlCodes.append("<a href=\"javascript:open_win1('barcode/"
						+ productInfo.getPro_barcode() + "')\">");
				newHtmlCodes.append("<img src='barcode/" + productInfo.getPro_barcode()
						+ "' style=\"width: 100px;\"></a></td>");
				newHtmlCodes.append("</tr>");

			}
			break;
		case "membersForSalesRegister":
			while (searchRes.hasNext()) {
				MemVO memberInfo = new MemVO();
				memberInfo = (MemVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<td>").append(memberInfo.getMem_num()).append("</td>");
				newHtmlCodes.append("<td>").append(memberInfo.getMem_name()).append("</td>");
				newHtmlCodes.append("<td>").append(memberInfo.getMem_addr()).append("</td>");
				newHtmlCodes.append("<td>").append(memberInfo.getMem_tel()).append("</td>");
				newHtmlCodes.append("<td>").append(memberInfo.getMem_mileage()).append("</td>");
				newHtmlCodes.append("<td>");
				newHtmlCodes.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
				newHtmlCodes.append("href=\"javascript:ckcustomer('")
						.append(memberInfo.getMem_name()).append("', '");
				newHtmlCodes.append(memberInfo.getMem_tel()).append("', '");
				newHtmlCodes.append(memberInfo.getMem_mileage()).append(
						"', '" + memberInfo.getMem_num() + "')\">");
				newHtmlCodes.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
				newHtmlCodes.append("</td>");
				newHtmlCodes.append("</tr>");
			}
			break;
		case "productsForSalesRegister":
			int numberOfProductForSaleRegister = 0;
			while (searchRes.hasNext()) {
				numberOfProductForSaleRegister++;
				SmangVO purchaseInfo = new SmangVO();
				purchaseInfo = (SmangVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<td>" + numberOfProductForSaleRegister + "</td>");
				newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">")
						.append(purchaseInfo.getShop_name()).append("</td>");
				newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">")
						.append(purchaseInfo.getPro_code()).append("</td>");
				newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">")
						.append(purchaseInfo.getSto_size()).append("</td>");
				newHtmlCodes.append("<td style=\"width:20%; font-family: '210 나무고딕'; \">")
						.append("<input type=\"number\" style=\"width:100%;\" class=\"form-control\" id=\"p_num"
								+ numberOfProductForSaleRegister
								+ "\" value=\"1\" max=\""
								+ purchaseInfo.getSto_amount()
								+ "\">").append("</td>");
				newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">").append("<input type=\"number\" id=\"p_orinum"+numberOfProductForSaleRegister+"\" readonly=\"readonly\" class=\"form-control\" value=\""+purchaseInfo.getSto_amount()+"\"").append("</td>");
				newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">")
						.append(purchaseInfo.getPro_price()).append("</td>");
				newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">")
						.append(purchaseInfo.getPro_salerate()).append("</td>");
				newHtmlCodes.append("<td><img src='product/" + purchaseInfo.getPro_img()
						+ "' style=\"width: 50px;\"></td>");
				newHtmlCodes.append("<td><img src='barcode/" + purchaseInfo.getPro_barcode()
						+ "' style=\"width: 50px;\"></td>");
				newHtmlCodes.append("<td>");
				newHtmlCodes.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
				newHtmlCodes.append("href=\"javascript:insertproduct('")
						.append(purchaseInfo.getPro_code()).append("', '");
				newHtmlCodes.append(purchaseInfo.getSto_size()).append("', '");
				newHtmlCodes.append(purchaseInfo.getPro_price()).append(
						"', '" + numberOfProductForSaleRegister + "','" + purchaseInfo.getPro_salerate() + "')\">");
				newHtmlCodes.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
				newHtmlCodes.append("</td>");
				newHtmlCodes.append("</tr>");
			}
			break;
		case "productsForChangingAmountStock":
			int numberOfProductForChangingAmountStock = 0;
			while (searchRes.hasNext()) {
				numberOfProductForChangingAmountStock++;
				SmangVO purchaseInfo = new SmangVO();
				purchaseInfo = (SmangVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<td>" + numberOfProductForChangingAmountStock + "</td>");
				newHtmlCodes.append("<td>").append(purchaseInfo.getPro_code()).append("</td>");
				newHtmlCodes.append("<td>").append(purchaseInfo.getSto_size()).append("</td>");
				newHtmlCodes.append("<td>").append(purchaseInfo.getSto_amount()).append("</td>");
				newHtmlCodes.append("<td>").append(purchaseInfo.getPro_price()).append("</td>");
				newHtmlCodes.append("<td><img src='product/" + purchaseInfo.getPro_img()
						+ "' style=\"width: 100px;\"></td>");
				newHtmlCodes.append("<td><img src='barcode/" + purchaseInfo.getPro_barcode()
						+ "' style=\"width: 100px;\"></td>");
				newHtmlCodes.append("<td>");
				newHtmlCodes.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
				newHtmlCodes.append("href=\"javascript:proset('");
				newHtmlCodes.append(purchaseInfo.getPro_code()).append("', '").append(purchaseInfo.getSto_size());
				newHtmlCodes.append("')\">");
				newHtmlCodes.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
				newHtmlCodes.append("</td>");
				newHtmlCodes.append("</tr>");
			}
			break;
		case "SalesResults":
			while (searchRes.hasNext()) {
				SalesCheckVO salesInfo = new SalesCheckVO();
				salesInfo = (SalesCheckVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_date()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_pronum()).append("</th>");
				newHtmlCodes.append("<th><img src='product/").append(salesInfo.getSell_proimg())
						.append("' style=\"width: 100px;\"></td>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_cash()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_many()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_memnum()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_sell()).append("</th>");
				newHtmlCodes.append("</tr>");

			}
			break;
		case "SalesResultsByDate":
			while (searchRes.hasNext()) {
				SalesCheckVO salesInfo = new SalesCheckVO();
				salesInfo = (SalesCheckVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_date()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_shopname()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_cash()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getCount()).append("</th>");
				newHtmlCodes.append("</tr>");

			}
			break;
		case "SalesResultsByProduct":
			while (searchRes.hasNext()) {
				SalesCheckVO salesInfo = new SalesCheckVO();
				salesInfo = (SalesCheckVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_date()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_proname()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_cash()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getCount()).append("</th>");
				newHtmlCodes.append("</tr>");
			}
			break;
		case "SalesResultsByShop":
			while (searchRes.hasNext()) {
				SalesCheckVO salesInfo = new SalesCheckVO();
				salesInfo = (SalesCheckVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_date()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_shopname()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_cash()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getCount()).append("</th>");
				newHtmlCodes.append("</tr>");
			}
			break;
		case "SalesResultsByReceiptNumber":
			while (searchRes.hasNext()) {
				SalesCheckVO salesInfo = new SalesCheckVO();
				salesInfo = (SalesCheckVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_num()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_memname()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_pronum()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_cash()).append("</th>");
				newHtmlCodes.append("<th>").append(salesInfo.getSell_many()).append("</th>");
				newHtmlCodes.append("<th>")
						.append("<a class=\"btn btn-warning\" data-toggle=\"modal\" href=\"#myModal2\"  onclick=\"sh_managEx("
								+ salesInfo.getSell_num() + ")\">환불 </a></th>");
				newHtmlCodes.append("</tr>");

			}
			break;
		case "productsForChangingSaleRate":
			while (searchRes.hasNext()) {
				ProductVO productInfo = new ProductVO();
				productInfo = (ProductVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_num()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_name()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_code()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_price()).append("</td>");
				newHtmlCodes.append("<td><img src='product/").append(productInfo.getPro_img())
						.append("' style=\"width: 100px;\"></td>");
				newHtmlCodes.append("<td><img src='barcode/").append(productInfo.getPro_barcode())
						.append("' style=\"width: 100px;\"></td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_salerate()).append("%</td>");
				newHtmlCodes.append("</tr>");
			}
			break;
		case "productsForRecommendationToMember":
			while (searchRes.hasNext()) {
				ProductVO productInfo = new ProductVO();
				productInfo = (ProductVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_num()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_name()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_code()).append("</td>");
				newHtmlCodes.append("<td>").append(productInfo.getPro_price()).append("</td>");
				newHtmlCodes.append("<td><img src='product/").append(productInfo.getPro_img())
						.append("' style=\"width: 100px;\"></td>");
				newHtmlCodes.append("<td><img src='barcode/").append(productInfo.getPro_barcode())
						.append("' style=\"width: 100px;\"></td>");
				newHtmlCodes.append("<td><div class=\"btn-group\"><a class=\"btn btn-success\" ");
				newHtmlCodes.append("href=\"javascript:pro_chk('").append(productInfo.getPro_num())
						.append("', '");
				newHtmlCodes.append(productInfo.getPro_code()).append("', '");
				newHtmlCodes.append(productInfo.getPro_name()).append(
						"', '" + productInfo.getPro_price() + "', '" + productInfo.getPro_img()
								+ "')\">");
				newHtmlCodes.append("<i class=\"icon_check_alt2\"\"></i></a></div></td>");
				newHtmlCodes.append("</tr>");
			}
			break;
		case "membersForProductRecommendation":
			while (searchRes.hasNext()) {
				MemVO memberInfo = new MemVO();
				memberInfo = (MemVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<td>").append(memberInfo.getMem_num()).append("</td>");
				newHtmlCodes.append("<td>").append(memberInfo.getMem_name()).append("</td>");
				newHtmlCodes.append("<td>").append(memberInfo.getMem_email()).append("</td>");
				newHtmlCodes.append("<td>").append(memberInfo.getMem_tel()).append("</td>");

				newHtmlCodes.append("<td><div class=\"btn-group\"><a class=\"btn btn-success\" ");
				newHtmlCodes.append("href=\"javascript:pro_chkmail('");

				newHtmlCodes.append(memberInfo.getMem_email()).append(
						"', '" + memberInfo.getMem_name() + "')\">");
				newHtmlCodes.append("<i class=\"icon_check_alt2\"\"></i></a></div></td>");
				newHtmlCodes.append("</tr>");
			}
			break;
		case "staffForPayManagement":
			// 합계 급액과 근무 시간을 위한 변수
			int workingHours = 0, totalPay = 0;
			while (searchRes.hasNext()) {
				StaffVO staffInfo = new StaffVO();
				staffInfo = (StaffVO)searchRes.next();
				newHtmlCodes.append("<tr>");
				newHtmlCodes.append("<td>").append(staffInfo.getStaff_name()).append("</td>");
				newHtmlCodes.append("<td>").append(staffInfo.getWork_login()).append("</td>");
				newHtmlCodes.append("<td>").append(staffInfo.getWork_logout()).append("</td>");
				newHtmlCodes.append("<td>").append(staffInfo.getWork_time()).append(" 시간")
						.append("</td>");
				newHtmlCodes.append("<td>").append(staffInfo.getWork_time() * 10000).append(" 원")
						.append("</td>");
				newHtmlCodes.append("</tr>");
				workingHours += staffInfo.getWork_time();
				totalPay += staffInfo.getWork_time() * 10000;

			}
			newHtmlCodes.append("<tr><th>합계</th>");
			newHtmlCodes.append("<th>-</th>");
			newHtmlCodes.append("<th>-</th>");
			newHtmlCodes.append("<th>" + workingHours + " 시간</th>");
			newHtmlCodes.append("<th>" + totalPay + " 원</th>");
			newHtmlCodes.append("</tr>");
			break;
		}
		
		return newHtmlCodes.toString();
		
	}
	
}
