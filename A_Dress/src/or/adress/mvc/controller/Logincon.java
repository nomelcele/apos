package or.adress.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.validation.Valid;

import mail.SendFindIdMail;
import mail.SendFindPwdMail;
import or.adress.mvc.dao.BonsaDao;
import or.adress.mvc.dao.LogTimeDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.StaffDao;
import or.adress.mvc.service.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vo.BonsaVO;
import vo.JoinVO;
import vo.ShopHotkeyVO;
import vo.ShopVO;
import vo.StaffVO;

@Controller
public class Logincon {
	@Autowired
	private BonsaDao bondao;
	@Autowired
	private LogTimeDao ldao;
	@Autowired
	private ShopDao shdao;
	@Autowired
	private StaffDao staffdao;
	@Autowired
	private LoginService lservice;
	@Autowired
	private SendFindIdMail sendFindIdMail;
	@Autowired
	private SendFindPwdMail sendFindPwdMail;

	@RequestMapping(value = "login")
	public String login() {
		return "login/new_login";
	}

	// 아이디,비번 안맞을 경우
	@RequestMapping(value = "/denied")
	public String denied() {
		System.out.println("거부?");
		return "login/denied";
	}

	// 접근불가경우
	@RequestMapping(value = "/error")
	public String denied1() {
		System.out.println("에러");
		return "login/denied";
	}
	//접근불가시 이미지
	@RequestMapping(value="/return_denied")
	public String return_2(){
		return "login/new_login";
	}

	@RequestMapping(value = "/home")
	public ModelAndView home(Locale locale, HttpServletRequest request,
			HttpSession session) {
		System.out.println("여기는 오는지");
		String id = request.getUserPrincipal().getName();
		if (id.startsWith("bon")) {
			return bon_sawonlogin(id, session);
		} else if (id.startsWith("sh")) {
			return sh_loginok(id, "master", session);
		} else {
			return sh_loginok(id, "staff", session);
		}
	}

	@RequestMapping(value = "/bon_login")
	public ModelAndView bon_login() {
		ModelAndView mav = new ModelAndView("login/bon_login");
		return mav;
	}

	@RequestMapping(value = "/sh_login")
	public ModelAndView sh_login() {
		ModelAndView mav = new ModelAndView("login/sh_login");
		return mav;
	}

	// 본사회원가입 아이디중복체크
		@RequestMapping(value = "/bo_idchk")
		public ModelAndView bo_idchk(String id) {
			System.out.println("호출확인");
			boolean res = bondao.chkid(id);
			System.out.println("Request ID : " + id);
			ModelAndView mav = new ModelAndView("ajax/bon_sawonidcheck");

			if (res) {
				mav.addObject("res", "false");

			} else {
				mav.addObject("res", "true");

			}
			return mav;
		}
		
	// 샵로그인화면에서 겟핫키모달창띄우기
	@RequestMapping(value = "/sh_gethotkey")
	public ModelAndView sh_gethotkey() {
		ModelAndView mav = new ModelAndView("login/sh_gethotkey");
		return mav;
	}

	// 핫키발급신청
	@RequestMapping(value = "/requesthot", method = RequestMethod.POST)
	public String sh_requesthot(ShopHotkeyVO vo) {
		// hotkey 발급시
		System.out.println("핫키컨첵");
		shdao.shoprequesthotkey(vo);
		// ModelAndView mav = new ModelAndView("/login");
		return login();
	}

	// 샵 회원가입 insert
	@RequestMapping(value = "/shopinsert", method = RequestMethod.POST)
	public String sh_shopinsert(@Valid @ModelAttribute("joinForm") ShopVO vo,
			BindingResult result, Map<String, Object> model, HttpSession session) {
		if (result.hasErrors()) {
			return "login/sh_shopjoin";
		} else {
			ShopVO shop = new ShopVO();
			model.put("joinForm", shop);
			System.out.println("확인");
			// 매장 회원 가입- DB에 저장
			String path = session.getServletContext().getRealPath("/master/")
					+ vo.getSelfimg().getOriginalFilename();

			System.out.println(path);
			File f = new File(path);
			try {
				vo.getSelfimg().transferTo(f);

			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			vo.setShop_img(vo.getSelfimg().getOriginalFilename());
			String username = "sh_" + vo.getShop_id();
			vo.setShop_id(username);
			JoinVO jvo = new JoinVO();
			jvo.setUsername(username);
			jvo.setPassword(vo.getShop_pwd());
			jvo.setRole("shop");
			lservice.shopjoinservice(vo, jvo);

			return "login/new_login";
		}

	}
	//error 페이지 처리 400,500 다 여기로 옴 
	@RequestMapping(value="/spring_security")
	public String spring_security(){
		return "login/denied";
	}
	// 로그인성공
	// transactio
	@RequestMapping(value = "/sh_loginok", method = RequestMethod.POST)
	public ModelAndView sh_loginok(String id, String radio, HttpSession session) {
		ModelAndView mav = new ModelAndView("shop/sh_index");
		String name = ""; // 매장명
		String master = ""; // 매장주인이름
		// String radio = request.getParameter("radio"); // master or staff?
		System.out.println("---Radio--- : " + radio);
		// String id = request.getParameter("id"); // 접속 ID
		int shop_num = 0;
		if (radio.equals("master")) {
			shop_num = shdao.getshopno(id);// shop_num;
			System.out.println(shop_num);
			ShopVO vo = shdao.getshopname(id);
			
				name = vo.getShop_name();
				master = vo.getShop_master();
		    session.setAttribute("shop_img", vo.getShop_img());
			session.setAttribute("shop_master", master); // 매장주 이름
		} else if (radio.equals("staff")) {
			StaffVO vo = new StaffVO();
			vo = shdao.getshopno_staff(id);
			shop_num = vo.getStaff_shopnum();
			name = shdao.getshopnameone(shop_num);
			session.setAttribute("shop_master", vo.getStaff_name());
			session.setAttribute("shop_img", "staff.JPG");
		}
		System.out.println(name);
		System.out.println(master);
		// HttpSession session = request.getSession();
		session.setAttribute("shop_num", shop_num); // 매장 NUM
		session.setAttribute("shop_id", id); // 접속 ID
		session.setAttribute("shop_name", name); // 매장명
		session.setAttribute("radio", radio); // master or staff?
		return mav;
	}

	// 샵로그아웃
	@RequestMapping(value = "/sh_logout")
	public String sh_logout() {
		return "/j_spring_security_logout";
	}

	// joinForm 추가
	// joinForm : valid 쓰기 위함
	@RequestMapping(value = "/submithot", method = RequestMethod.POST)
	public ModelAndView submithot(Map<String,Object> model, int crnum, String email) {
		ShopVO vo = new ShopVO();
		ShopHotkeyVO hot = new ShopHotkeyVO();
		model.put("joinForm", vo);
		hot.setKey_crnum(crnum);
		hot.setKey_email(email);
		ModelAndView mav = new ModelAndView("login/sh_shopjoin");
		mav.addObject("hotkey",hot);
		return mav;
	}

	// 아이디찾기
	   @RequestMapping(value = "findid_sh", method = RequestMethod.POST)
	   public ModelAndView findid_sh(@RequestParam HashMap<String, String> params) {
	      
//	      System.out.println("-----------SHOP_findid.jsp---------");
//	      System.out.println("Request NAME : " + name);
//	      System.out.println("Request TEL : " + tel);
	      String id = null;
	      String recipientName = params.get("name");
	      String recipientTel = params.get("tel");
	      String recipientMailAddress = params.get("email");

	      System.out.println("MASTER FIND ID");
	      id = shdao.findid(recipientName, recipientTel);
	      params.put("recipientId", id);

	      System.out.println("아이디는 " + id);
	      String chk = "false";
	      if (id == null) {
	         System.out.println("실패확인");
	         chk = "false";
	      } else {
	         chk = "true";
	         
	         sendFindIdMail.sendMailProcess(params);
	         
	      }
	      ModelAndView mav = new ModelAndView("ajax/sh_findid");
	      mav.addObject("data", chk);
	      return mav;
	   }

	   @RequestMapping(value = "findpwd_sh", method = RequestMethod.POST)
	   public ModelAndView findpwd_sh(@RequestParam HashMap<String, String> params) {
	      String pwd = null;
	      String chk = "false";
	      
	      String recipientName = params.get("name");
	      String recipientId = params.get("id");
	      
	      pwd = shdao.findpwd(recipientName, recipientId);
	      params.put("recipientPwd", pwd);
	      
	      System.out.println(pwd);
	      if (pwd == null) {
	         System.out.println("실패확인");
	         chk = "false";
	      } else {
	         chk = "true";
	         sendFindPwdMail.sendMailProcess(params);
	         
	         System.out.println("Request RES : " + pwd);
	      }
	      ModelAndView mav = new ModelAndView("ajax/sh_findid");
	      mav.addObject("data", chk);
	      return mav;
	   }

	@RequestMapping(value = "/bon_findidform", method = RequestMethod.POST)
	public ModelAndView bon_findidform() {

		return bon_login();
	}

	@RequestMapping(value = "/bon_findpwdform", method = RequestMethod.POST)
	public ModelAndView bon_findpwdform() {

		return bon_login();
	}

	// 본사 - 사원 가입
	@RequestMapping(value = "/sawonjoin", method = RequestMethod.POST)
	public String bon_sawonjoin(@Valid @ModelAttribute("BonsaVO") BonsaVO bvo,
			BindingResult result) {
		if (result.hasErrors()) {
			return "login/bon_bonJoin";
		} else {

			// 이름 ,비밀번호, 비밀번호 확인, 성명, 연락처

			String bon_id = "bon_" + bvo.getBon_id();
			String bon_name = bvo.getBon_name();
			String bon_pwd = bvo.getBon_pwd();
			String bon_tel = bvo.getBon_tel();

			BonsaVO vo = new BonsaVO();
			vo.setBon_id(bon_id);
			vo.setBon_name(bon_name);
			vo.setBon_pwd(bon_pwd);
			vo.setBon_tel(bon_tel);
			JoinVO jvo = new JoinVO();
			jvo.setUsername(bon_id);
			jvo.setPassword(bon_pwd);
			jvo.setRole("bonsa");
			lservice.bonjoinservice(vo, jvo);

			return login();
		}
	}

	// 본사로그인 (화면전환, 세션저장) (아이디/비번체크는 캡챠에서)
	// transaction
	@RequestMapping(value = "/bon_sawonlogin", method = RequestMethod.POST)
	public ModelAndView bon_sawonlogin(String bon_login_id, HttpSession session) {
		// String id =request.getParameter("bon_login_id");
		String id = bon_login_id;
		String bon_name = bondao.getbonname(id);
		ldao.logintime(bondao.getbonnum(id)); // 로그인 시간 DB에 저장
		// HttpSession session = request.getSession();
		session.setAttribute("bon_id", id);
		session.setAttribute("bon_name", bon_name);
		ModelAndView mav = new ModelAndView("bonsa/bon_index");
		return mav;
	}

	// 본사로그아웃
	@RequestMapping(value = "/bon_sawonlogout")
	public String bon_sawonlogout(HttpSession session) {
		// 본사 사원 로그 아웃
		String bon_id = (String) session.getAttribute("bon_id");
		ldao.logouttime(bondao.getbonnum(bon_id));
		session.invalidate(); // 모든 세션삭제
		return "/j_spring_security_logout";
	}

	// 핫키발급페이지
	@RequestMapping(value = "/gethotkey")
	public String gethotkey() {
		return "login/login_hotkey";
	}

	// 메일발송메서드
	public void mail(String mail, String name, String id, String subject,
			String body) {
		// 메일 관련 정보

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
		// String subject = "APOS - ID 찾기 결과입니다.";
		// String body = "\""+name+"\"님의" +"\n\r"+"ID는 : "+id+"\n\r"+"감사합니다";

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
			e.printStackTrace();
		}
	}

	// 본사 사원 회원 가입
	@RequestMapping(value = "/submitJoin", method = RequestMethod.POST)
	public ModelAndView bon_bonJoin(Map<String, Object> model) {
		ModelAndView mav = new ModelAndView("login/bon_bonJoin");
		BonsaVO bvo = new BonsaVO();
		model.put("BonsaVO", bvo);
		System.out.println("로그인 컨트롤러 확인");
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
			String resid = bondao.logincheck(map);
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
			String res = bondao.findid(map);
			System.out.println("Request RES : " + res);
			mav.addObject("res", res);
			return mav;
		}

		// 아이디 찾기 메일발송
		   @RequestMapping(value = "bon_findid2", method = RequestMethod.POST)
		   public void bon_findid2(@RequestParam HashMap<String, String> params) {
		      sendFindIdMail.sendMailProcess(params);
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
			String res = bondao.findpwd(map);
			System.out.println("Request RES : " + res);
			ModelAndView mav = new ModelAndView("ajax/bon_findpwd");
			mav.addObject("res", res);
			return mav;
		}

		// 비밀번호 찾기 메일발송
		   @RequestMapping(value = "bon_findpwd2", method = RequestMethod.POST)
		   public void bon_findpwd2(@RequestParam HashMap<String, String> params) {
		      sendFindPwdMail.sendMailProcess(params);
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
}
