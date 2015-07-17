package or.adress.mvc.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
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
		Iterator<ProductVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		// res.append("<tr>");
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
			res.append("<td>").append(v.getPro_salerate()).append("</td>");
			res.append("<td><img src='product/" + v.getPro_img()
					+ "' style=\"width: 100px;\"></td>");// 추후 세일추가
			res.append("<td><img src='barcode/" + v.getPro_barcode()
					+ "' style=\"width: 100px;\"></td>");
			res.append("</tr>");

		}

		// res.append("</tr>");
		String strString = res.toString();
		System.out.println(strString);
		// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
		mav.addObject("strString", strString);

		return mav;
	}

	// 판매등록 고객검색콜백
	@RequestMapping(value = "sh_smang_callback", method = RequestMethod.POST)
	public ModelAndView sh_smang_callback(String name) {
		// String name = request.getParameter("name");
		System.out.println(name);
		List<MemVO> list = shdao.getListMember(name);
		Iterator<MemVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while (it.hasNext()) {
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
			res.append("href=\"javascript:ckcustomer('")
					.append(v.getMem_name()).append("', '");
			res.append(v.getMem_tel()).append("', '");
			res.append(v.getMem_mileage()).append(
					"', '" + v.getMem_num() + "')\">");
			res.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
			res.append("</td>");
			res.append("</tr>");

		}
		String str = res.toString();
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
		Iterator<SmangVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		int i = 0;
		while (it.hasNext()) {
			i++;
			SmangVO v = new SmangVO();
			v = it.next();
			res.append("<tr>");
			res.append("<td>" + i + "</td>");
			res.append("<td>").append(v.getShop_name()).append("</td>");
			res.append("<td>").append(v.getPro_code()).append("</td>");
			res.append("<td>").append(v.getSto_size()).append("</td>");
			res.append("<td style=\"width:20%; \">")
					.append("<input type=\"number\" style=\"width:100%;\" class=\"form-control\" id=\"p_num"
							+ i
							+ "\" value=\"1\" max=\""
							+ v.getSto_amount()
							+ "\">").append("</td>");
			res.append("<td>").append(v.getSto_amount()).append("</td>");
			res.append("<td>").append(v.getPro_price()).append("</td>");
			res.append("<td>").append(v.getPro_salerate()).append("</td>");
			res.append("<td><img src='product/" + v.getPro_img()
					+ "' style=\"width: 100px;\"></td>");// 추후 세일추가
			res.append("<td><img src='barcode/" + v.getPro_barcode()
					+ "' style=\"width: 100px;\"></td>");
			res.append("<td>");
			res.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
			res.append("href=\"javascript:insertproduct('")
					.append(v.getPro_code()).append("', '");
			res.append(v.getSto_size()).append("', '")
					.append(v.getSto_amount()).append("', '");
			res.append(v.getPro_price()).append(
					"', '" + i + "','" + v.getPro_salerate() + "')\">");
			res.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
			res.append("</td>");
			res.append("</tr>");

		}
		String str2 = res.toString();
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
		// String name = request.getParameter("name");
		// String tel1 = request.getParameter("tel1");
		// String tel2 = request.getParameter("tel2");
		// String tel3 = request.getParameter("tel3");
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
	public void bon_findid2(HttpServletRequest request) {
		// 메일 관련 정보
		String mail = request.getParameter("mail");
		String name = request.getParameter("name");
		String id = request.getParameter("id");

		System.out.println("--------여기는 FIND ID 메일 보내는 곳--------");
		System.out.println("MAIL : " + mail);
		System.out.println("NAME : " + name);
		System.out.println("ID : " + id);

		String host = "smtp.naver.com";
		final String username = "ama949@naver.com"; // 보내는 사람 네이버 ID
		final String password = "skdltm11a"; // 비밀번호
		int port = 465;

		// 메일 내용
		String recipient = mail; // 받는 사람 E-Mail
		String subject = "APOS - ID 찾기 결과입니다.";
		String body = "\"" + name + "\"님의" + "\n\r" + "ID는 : " + id + "\n\r"
				+ "감사합니다";

		Properties props = System.getProperties();

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					String un = username;
					String pw = password;

					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(un, pw);
					}
				});
		session.setDebug(true); // for debug

		Message msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress(username));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(
					recipient));
			msg.setSubject(subject);
			msg.setSentDate(new Date());
			// 파일 첨부시에는 BodyPart를 사용
			// msg.setText(body);

			// 파일첨부를 위한 Multipart
			Multipart multipart = new MimeMultipart();

			// BodyPart를 생성
			BodyPart bodyPart = new MimeBodyPart();
			bodyPart.setText(body);

			// 1. Multipart에 BodyPart를 붙인다.
			multipart.addBodyPart(bodyPart);

			// 이메일 메시지의 내용에 Multipart를 붙인다.
			msg.setContent(multipart);
			Transport.send(msg);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 비밀번호찾기 (디비)
	@RequestMapping(value = "bon_findpwd", method = RequestMethod.POST)
	public ModelAndView bon_findpwd(String name, String id) {
		// String name = request.getParameter("name");
		// String id = request.getParameter("id");

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
	public void bon_findpwd2(String name, String mail, String pwd) {
		// 메일 관련 정보
		// String mail = request.getParameter("mail");
		// String name = request.getParameter("name");
		// String pwd = request.getParameter("pwd");

		System.out.println("--------여기는 FIND ID 메일 보내는 곳--------");
		System.out.println("MAIL : " + mail);
		System.out.println("NAME : " + name);
		System.out.println("PWD : " + pwd);

		String host = "smtp.naver.com";
		final String username = "ama949@naver.com"; // 보내는 사람 네이버 ID
		final String password = "skdltm11a"; // 비밀번호
		int port = 465;

		// 메일 내용
		String recipient = mail; // 받는 사람 E-Mail
		String subject = "APOS - PASS WORD 찾기 결과입니다.";
		String body = "\"" + name + "\"님의" + "\n\r" + "PWD는 : " + pwd + "\n\r"
				+ "감사합니다";

		Properties props = System.getProperties();

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					String un = username;
					String pw = password;

					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(un, pw);
					}
				});
		session.setDebug(true); // for debug

		Message msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress(username));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(
					recipient));
			msg.setSubject(subject);
			msg.setSentDate(new Date());
			// 파일 첨부시에는 BodyPart를 사용
			// msg.setText(body);

			// 파일첨부를 위한 Multipart
			Multipart multipart = new MimeMultipart();

			// BodyPart를 생성
			BodyPart bodyPart = new MimeBodyPart();
			bodyPart.setText(body);

			// 1. Multipart에 BodyPart를 붙인다.
			multipart.addBodyPart(bodyPart);

			// 이메일 메시지의 내용에 Multipart를 붙인다.
			msg.setContent(multipart);
			Transport.send(msg);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
	public ModelAndView sh_shopjoincheck(String id) {
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

		Iterator<SmangVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		int i = 0;
		while (it.hasNext()) {
			i++;
			SmangVO v = new SmangVO();
			v = it.next();
			res.append("<tr>");
			res.append("<td>" + i + "</td>");
			// res.append("<td>").append(v.getShop_name()).append("</td>");
			res.append("<td>").append(v.getPro_code()).append("</td>");
			res.append("<td>").append(v.getSto_size()).append("</td>");
			res.append("<td>").append(v.getSto_amount()).append("</td>");
			res.append("<td>").append(v.getPro_price()).append("</td>");
			res.append("<td><img src='product/" + v.getPro_img()
					+ "' style=\"width: 100px;\"></td>");// 추후 세일추가
			res.append("<td><img src='barcode/" + v.getPro_barcode()
					+ "' style=\"width: 100px;\"></td>");
			res.append("<td>");
			res.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
			res.append("href=\"javascript:proset('");
			res.append(v.getPro_code()).append("', '").append(v.getSto_size());
			res.append("')\">");
			res.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
			res.append("</td>");
			res.append("</tr>");

		}
		String str2 = res.toString();
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
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("<tr>");
			res.append("<th>").append(v.getSell_date()).append("</th>");
			res.append("<th>").append(v.getSell_pronum()).append("</th>");
			res.append("<th><img src='product/").append(v.getSell_proimg())
					.append("' style=\"width: 100px;\"></td>");
			res.append("<th>").append(v.getSell_cash()).append("</th>");
			res.append("<th>").append(v.getSell_many()).append("</th>");
			res.append("<th>").append(v.getSell_memnum()).append("</th>");
			res.append("<th>").append(v.getSell_sell()).append("</th>");
			res.append("</tr>");

		}
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
			u_id = URLDecoder.decode(
					session.getAttribute("shop_id").toString(), "utf-8");
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
				outs.append("<div class=\"avatar pull-right\"><img src=\"resources/img/user22.png\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
				outs.append(e.getCdate());
				outs.append("<span class=\"pull-right\">");
				outs.append(e.getU_id());
				outs.append("</span></div>");
				outs.append(e.getChat());
				outs.append("<div class=\"clearfix\"></div></div></li>");

			} else {
				outs.append("<li class=\"by-me\">");
				outs.append("<div class=\"avatar pull-left\"><img src=\"resources/img/user.jpg\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
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
		String id = (String) session.getAttribute("shop_id");
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
				outs.append("<div class=\"avatar pull-right\"><img src=\"resources/img/user22.png\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
				outs.append(e.getCdate());
				outs.append("<span class=\"pull-right\">");
				outs.append(e.getU_id());
				outs.append("</span></div>");
				outs.append(e.getChat());
				outs.append("<div class=\"clearfix\"></div></div></li>");
			} else {
				outs.append("<li class=\"by-me\">");
				outs.append("<div class=\"avatar pull-left\"><img src=\"resources/img/user.jpg\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
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
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("<tr>");
			res.append("<th>").append(v.getSell_date()).append("</th>");
			res.append("<th>").append(v.getSell_shopname()).append("</th>");
			res.append("<th>").append(v.getSell_cash()).append("</th>");
			res.append("<th>").append(v.getCount()).append("</th>");
			res.append("</tr>");

		}
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
		StringBuffer res = new StringBuffer();
		res.append("[ ['Month', '판매 금액', '판매량' ],");
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("['");
			res.append(v.getSell_date()).append("',");
			res.append(v.getSell_cash()).append(",");
			;
			res.append(v.getCount()).append(",");
			res.append("],");

		}
		res.append("]");
		String strString = res.toString();
		System.out.println(strString);

		mav.addObject("res", res);
		return mav;
	}

	// 본사 - 정산관리 - 품목별 매출순위 - 테이블 검색
	@RequestMapping(value = "bon_ajaxproductsale", method = RequestMethod.POST)
	public ModelAndView bon_ajaxproductsale(String pro_code, String startdate,
			String enddate) {
		System.out.println(pro_code + startdate + enddate);
		List<SalesCheckVO> list = skdao.getProductList(pro_code, startdate,
				enddate);
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("<tr>");
			res.append("<th>").append(v.getSell_date()).append("</th>");
			res.append("<th>").append(v.getSell_proname()).append("</th>");
			res.append("<th>").append(v.getSell_cash()).append("</th>");
			res.append("<th>").append(v.getCount()).append("</th>");
			res.append("</tr>");
			System.out.println(v.getDate());
		}
		// res.append("</tr>");
		String strString = res.toString();
		System.out.println(strString);
		// ----
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
		StringBuffer res = new StringBuffer();
		res.append("[ ['Month', '판매 금액'],");
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("['");
			;
			res.append(v.getSell_date()).append("',");
			// res.append(v.getSell_proname()).append(",");
			res.append(v.getSell_cash()).append(",");
			;
			res.append("],");
			System.out.println("========================" + "ttest"
					+ v.getDate() + v.getSell_cash());

		}
		res.append("]");
		// res.append("</tr>");
		String strString = res.toString();
		System.out.println(strString);
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
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("<tr>");
			res.append("<th>").append(v.getSell_date()).append("</th>");
			res.append("<th>").append(v.getSell_shopname()).append("</th>");
			res.append("<th>").append(v.getSell_cash()).append("</th>");
			res.append("<th>").append(v.getCount()).append("</th>");
			res.append("</tr>");

		}
		// res.append("</tr>");
		String strString = res.toString();
		System.out.println(strString);
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
		StringBuffer res = new StringBuffer();
		res.append("[ ['Month', '판매 금액', '판매량' ],");
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("['");
			res.append(v.getSell_date()).append("',");
			res.append(v.getSell_cash()).append(",");
			;
			res.append(v.getCount()).append(",");
			res.append("],");

		}
		res.append("]");
		String strString = res.toString();
		System.out.println(strString);

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
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("<tr>");
			res.append("<th>").append(v.getSell_num()).append("</th>");
			res.append("<th>").append(v.getSell_memname()).append("</th>");
			res.append("<th>").append(v.getSell_pronum()).append("</th>");
			res.append("<th>").append(v.getSell_cash()).append("</th>");
			res.append("<th>").append(v.getSell_many()).append("</th>");
			res.append("<th>")
					.append("<a class=\"btn btn-warning\" data-toggle=\"modal\" href=\"#myModal2\"  onclick=\"sh_managEx("
							+ v.getSell_num() + ")\">환불 </a></th>");
			res.append("</tr>");

		}
		// res.append("</tr>");
		String strString = res.toString();
		System.out.println(strString);
		ModelAndView mav = new ModelAndView("ajax/sh_ajaxsmangexc");
		mav.addObject("list", res);
		return mav;
	}

	// 본사 세일 - 상품조회
	@RequestMapping(value = "bpd_chk", method = RequestMethod.POST)
	public ModelAndView bpd_chk(int pro_code) {
		List<ProductVO> list = pdao.getListProduct_bon3(pro_code);
		Iterator<ProductVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		int i = 1;
		while (it.hasNext()) {
			ProductVO vo = new ProductVO();
			vo = it.next();
			res.append("<tr>");
			res.append("<td>").append(vo.getPro_num()).append("</td>");
			res.append("<td>").append(vo.getPro_name()).append("</td>");
			res.append("<td>").append(vo.getPro_code()).append("</td>");
			res.append("<td>").append(vo.getPro_price()).append("</td>");
			res.append("<td><img src='product/").append(vo.getPro_img())
					.append("' style=\"width: 100px;\"></td>");
			res.append("<td><img src='barcode/").append(vo.getPro_barcode())
					.append("' style=\"width: 100px;\"></td>");
			res.append("<td>").append(vo.getPro_salerate()).append("%</td>");
			res.append("</tr>");
		}
		String str = res.toString();
		ModelAndView mav = new ModelAndView("ajax/bpd_chk_callback");
		mav.addObject("str", str);
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
		Iterator<ProductVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		int i = 1;
		while (it.hasNext()) {
			ProductVO vo = new ProductVO();
			vo = it.next();
			res.append("<tr>");
			res.append("<td>").append(vo.getPro_num()).append("</td>");
			res.append("<td>").append(vo.getPro_name()).append("</td>");
			res.append("<td>").append(vo.getPro_code()).append("</td>");
			res.append("<td>").append(vo.getPro_price()).append("</td>");
			res.append("<td><img src='product/").append(vo.getPro_img())
					.append("' style=\"width: 100px;\"></td>");
			res.append("<td><img src='barcode/").append(vo.getPro_barcode())
					.append("' style=\"width: 100px;\"></td>");
			res.append("<td><div class=\"btn-group\"><a class=\"btn btn-success\" ");
			res.append("href=\"javascript:pro_chk('").append(vo.getPro_num())
					.append("', '");
			res.append(vo.getPro_code()).append("', '");
			res.append(vo.getPro_name()).append(
					"', '" + vo.getPro_price() + "', '" + vo.getPro_img()
							+ "')\">");
			res.append("<i class=\"icon_check_alt2\"\"></i></a></div></td>");
			res.append("</tr>");
		}
		String str = res.toString();
		ModelAndView mav = new ModelAndView("ajax/bpd_chk_callback");
		mav.addObject("str", str);
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
		StringBuffer res = new StringBuffer();
		map.put("pre_code", "___" + select);
		List<MemVO> list = memdao.presearchmem(map);
		Iterator<MemVO> it = list.iterator();
		while (it.hasNext()) {
			MemVO vo = new MemVO();
			vo = it.next();
			res.append("<tr>");
			res.append("<td>").append(vo.getMem_num()).append("</td>");
			res.append("<td>").append(vo.getMem_name()).append("</td>");
			res.append("<td>").append(vo.getMem_email()).append("</td>");
			res.append("<td>").append(vo.getMem_tel()).append("</td>");

			res.append("<td><div class=\"btn-group\"><a class=\"btn btn-success\" ");
			res.append("href=\"javascript:pro_chkmail('");

			res.append(vo.getMem_email()).append(
					"', '" + vo.getMem_name() + "')\">");
			res.append("<i class=\"icon_check_alt2\"\"></i></a></div></td>");
			res.append("</tr>");

		}
		mav.addObject("res", res);

		return mav;
	}

	@RequestMapping(value = "/bon_precommandsearchmail")
	public void bon_precommandsearchmail(String mail, String name, String res,
			String img) {

		//
		System.out.println("--------여기는 YES 메일 보내는 곳--------");
		System.out.println("MAIL : " + mail);
		System.out.println("NAME : " + name);
		System.out.println("HOTKEY : " + res);

		String host = "smtp.naver.com";
		final String username = "ama949@naver.com"; // 보내는 사람 네이버 ID
		final String password = "skdltm11a"; // 비밀번호
		int port = 465;
		String m = "Yes";
		// 메일 내용
		String recipient = mail; // 받는 사람 E-Mail
		String subject = "ADRESS-맞춤  추천";
		String body = "<h1>" + name + "님" + "안녕하세요~" + "</h1>" + "<h3>" + res
				+ "</h3>";

		Properties props = System.getProperties();

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					String un = username;
					String pw = password;

					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(un, pw);
					}
				});
		session.setDebug(true); // for debug

		Message msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress(username));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(
					recipient));
			msg.setSubject(subject);
			msg.setSentDate(new Date());
			// 파일 첨부시에는 BodyPart를 사용
			// msg.setText(body);

			// 파일첨부를 위한 Multipart
			Multipart multipart = new MimeMultipart();

			// BodyPart를 생성
			BodyPart bodyPart = new MimeBodyPart();
			bodyPart.setText(body);
			bodyPart.setContent("<h1>" + name + "\"님" + "안녕하세요~" + "</h1>"
					+ "<h3>" + res + "</h3>"
					+ "<img src='http://localhost/A_Dress/product/" + img
					+ "' style=\"width: 100px;\">", "text/html; charset=EUC-KR");

			// 1. Multipart에 BodyPart를 붙인다.
			multipart.addBodyPart(bodyPart);
			// 이메일 메시지의 내용에 Multipart를 붙인다.
			msg.setContent(multipart);

			Transport.send(msg);
		} catch (MessagingException e) {
			e.printStackTrace();
		}

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

	// 급여 계산
	@RequestMapping(value = "sh_ajax_workPay")
	public ModelAndView sh_ajax_workPay(int staff_num, String date_ps,
			String date_ps2) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("staff_num", String.valueOf(staff_num));
		map.put("date_ps", date_ps);
		map.put("date_ps2", date_ps2);
		List<StaffVO> list = sfdao.get_pay(map);
		StringBuffer res = new StringBuffer();
		Iterator<StaffVO> it = list.iterator();
		
		//합계 급액과 근무 시간을 위한 변수
		int timeres = 0,payres=0;
		while (it.hasNext()) {
			StaffVO vo = it.next();
			res.append("<tr>");
			res.append("<td>").append(vo.getStaff_name()).append("</td>");
			res.append("<td>").append(vo.getWork_login()).append("</td>");
			res.append("<td>").append(vo.getWork_logout()).append("</td>");
			res.append("<td>").append(vo.getWork_time()).append(" 시간").append("</td>");
			res.append("<td>").append(vo.getWork_time() * 10000).append(" 원")
					.append("</td>");
			res.append("</tr>");
			timeres+=vo.getWork_time();
			payres+=vo.getWork_time() * 10000;
			
		}
		res.append("<tr><th>합계</th>");
		res.append("<th>-</th>");
		res.append("<th>-</th>");
		res.append("<th>"+timeres+" 시간</th>");
		res.append("<th>"+payres+" 원</th>");
		res.append("</tr>");

		mav.setViewName("ajax/sh_ajax_sh_workPay");
		mav.addObject("res", res.toString());
		return mav;
	}
}
