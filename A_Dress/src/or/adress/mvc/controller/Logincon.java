package or.adress.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.servlet.ModelAndView;

import vo.BonsaVO;
import vo.JoinVO;
import vo.ShopHotkeyVO;
import vo.ShopVO;
import vo.StaffVO;

@Controller
public class Logincon {
	@Autowired
	private BonsaDao bdao;
	@Autowired
	private LogTimeDao ldao;
	@Autowired
	private ShopDao sdao;
	@Autowired
	private StaffDao stdao;
	@Autowired
	private LoginService lservice;

	@RequestMapping(value = "login")
	public String login() {
		return "login/new_login";
	}

	// ���̵�,��� �ȸ��� ���
	@RequestMapping(value = "/denied")
	public String denied() {
		System.out.println("�ź�?");
		return "login/denied";
	}

	// ���ٺҰ����
	@RequestMapping(value = "/error")
	public String denied1() {
		System.out.println("����");
		return "login/denied";
	}
	//���ٺҰ��� �̹���
	@RequestMapping(value="/return_denied")
	public String return_2(){
		return "login/new_login";
	}

	@RequestMapping(value = "/home")
	public ModelAndView home(Locale locale, HttpServletRequest request,
			HttpSession session) {
		System.out.println("����� ������");
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

	// ����ȸ������ ���̵��ߺ�üũ
		@RequestMapping(value = "/bo_idchk")
		public ModelAndView bo_idchk(String id) {
			System.out.println("ȣ��Ȯ��");
			boolean res = bdao.chkid(id);
			System.out.println("Request ID : " + id);
			ModelAndView mav = new ModelAndView("ajax/bon_sawonidcheck");

			if (res) {
				mav.addObject("res", "false");

			} else {
				mav.addObject("res", "true");

			}
			return mav;
		}
		
	// ���α���ȭ�鿡�� ����Ű���â����
	@RequestMapping(value = "/sh_gethotkey")
	public ModelAndView sh_gethotkey() {
		ModelAndView mav = new ModelAndView("login/sh_gethotkey");
		return mav;
	}

	// ��Ű�߱޽�û
	@RequestMapping(value = "/requesthot", method = RequestMethod.POST)
	public String sh_requesthot(ShopHotkeyVO vo) {
		// hotkey �߱޽�
		System.out.println("��Ű��ý");
		sdao.shoprequesthotkey(vo);
		// ModelAndView mav = new ModelAndView("/login");
		return login();
	}

	// �� ȸ������ insert
	@RequestMapping(value = "/shopinsert", method = RequestMethod.POST)
	public String sh_shopinsert(@Valid @ModelAttribute("joinForm") ShopVO vo,
			BindingResult result, Map<String, Object> model, HttpSession session) {
		if (result.hasErrors()) {
			return "login/sh_shopjoin";
		} else {
			ShopVO shop = new ShopVO();
			model.put("joinForm", shop);
			System.out.println("Ȯ��");
			// ���� ȸ�� ����- DB�� ����
			String path = session.getServletContext().getRealPath("/upload/")
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
	//error ������ ó�� 400,500 �� ����� �� 
	@RequestMapping(value="/spring_security")
	public String spring_security(){
		return "login/denied";
	}
	// �α��μ���
	// transactio
	@RequestMapping(value = "/sh_loginok", method = RequestMethod.POST)
	public ModelAndView sh_loginok(String id, String radio, HttpSession session) {
		ModelAndView mav = new ModelAndView("shop/sh_index");
		String name = ""; // �����
		String master = ""; // ���������̸�
		// String radio = request.getParameter("radio"); // master or staff?
		System.out.println("---Radio--- : " + radio);
		// String id = request.getParameter("id"); // ���� ID
		int shop_num = 0;
		if (radio.equals("master")) {
			shop_num = sdao.getshopno(id);// shop_num;
			System.out.println(shop_num);
			ShopVO vo = sdao.getshopname(id);
			
				name = vo.getShop_name();
				master = vo.getShop_master();
		    session.setAttribute("shop_img", vo.getShop_img());
			session.setAttribute("shop_master", master); // ������ �̸�
		} else if (radio.equals("staff")) {
			StaffVO vo = new StaffVO();
			vo = sdao.getshopno_staff(id);
			shop_num = vo.getStaff_shopnum();
			name = sdao.getshopnameone(shop_num);
			session.setAttribute("shop_master", vo.getStaff_name());
			session.setAttribute("shop_img", "staff.JPG");
		}
		System.out.println(name);
		System.out.println(master);
		// HttpSession session = request.getSession();
		session.setAttribute("shop_num", shop_num); // ���� NUM
		session.setAttribute("shop_id", id); // ���� ID
		session.setAttribute("shop_name", name); // �����
		session.setAttribute("radio", radio); // master or staff?
		return mav;
	}

	// ���α׾ƿ�
	@RequestMapping(value = "/sh_logout")
	public String sh_logout() {
		return "/j_spring_security_logout";
	}

	// joinForm �߰�
	// joinForm : valid ���� ����
	@RequestMapping(value = "/submithot", method = RequestMethod.POST)
	public ModelAndView submithot() {
		ModelAndView mav = new ModelAndView("login/sh_shopjoin");
		return mav;
	}

	// ���̵�ã��
	@RequestMapping(value = "findid_sh", method = RequestMethod.POST)
	public ModelAndView findid_sh(String email, String name, String tel) {
		System.out.println("-----------SHOP_findid.jsp---------");
		System.out.println("Request NAME : " + name);
		System.out.println("Request TEL : " + tel);
		String id = null;

		System.out.println("MASTER FIND ID");
		id = sdao.findid(name, tel);

		System.out.println("���̵�� " + id);
		String chk = "false";
		if (id == null) {
			System.out.println("����Ȯ��");
			chk = "false";
		} else {
			chk = "true";
			String subject = "APOS - ID ã�� ����Դϴ�.";
			String body = "\"" + name + "\"����" + "\n\r" + "ID�� : " + id
					+ "\n\r" + "�����մϴ�";
			mail(email, name, id, subject, body);
		}
		ModelAndView mav = new ModelAndView("ajax/sh_findid");
		mav.addObject("data", chk);
		return mav;
	}

	@RequestMapping(value = "findpwd_sh", method = RequestMethod.POST)
	public ModelAndView findpwd_sh(String name, String id, String email) {

		System.out.println("-----------SHOP_findpwd.jsp---------");
		System.out.println("Request NAME : " + name);
		System.out.println("Request ID : " + id);
		String res = null;
		String chk = "false";
		res = sdao.findpwd(name, id);
		System.out.println(res);
		if (res == null) {
			System.out.println("����Ȯ��");
			chk = "false";
		} else {
			chk = "true";
			String subject = "APOS - PWD ã�� ����Դϴ�.";
			String body = "\"" + name + "\"����" + "\n\r" + "PWD�� : " + res
					+ "\n\r" + "�����մϴ�";
			mail(email, name, id, subject, body);
			System.out.println("Request RES : " + res);
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

	// ���� - ��� ����
	@RequestMapping(value = "/sawonjoin", method = RequestMethod.POST)
	public String bon_sawonjoin(@Valid @ModelAttribute("BonsaVO") BonsaVO bvo,
			BindingResult result) {
		if (result.hasErrors()) {
			return "login/bon_bonJoin";
		} else {

			// �̸� ,��й�ȣ, ��й�ȣ Ȯ��, ����, ����ó

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

	// ����α��� (ȭ����ȯ, ��������) (���̵�/���üũ�� ĸí����)
	// transaction
	@RequestMapping(value = "/bon_sawonlogin", method = RequestMethod.POST)
	public ModelAndView bon_sawonlogin(String bon_login_id, HttpSession session) {
		// String id =request.getParameter("bon_login_id");
		String id = bon_login_id;
		String bon_name = bdao.getbonname(id);
		ldao.logintime(bdao.getbonnum(id)); // �α��� �ð� DB�� ����
		// HttpSession session = request.getSession();
		session.setAttribute("bon_id", id);
		session.setAttribute("bon_name", bon_name);
		ModelAndView mav = new ModelAndView("bonsa/bon_index");
		return mav;
	}

	// ����α׾ƿ�
	@RequestMapping(value = "/bon_sawonlogout")
	public String bon_sawonlogout(HttpSession session) {
		// ���� ��� �α� �ƿ�
		String bon_id = (String) session.getAttribute("bon_id");
		ldao.logouttime(bdao.getbonnum(bon_id));
		session.invalidate(); // ��� ���ǻ���
		return "/j_spring_security_logout";
	}

	// ��Ű�߱�������
	@RequestMapping(value = "/gethotkey")
	public String gethotkey() {
		return "login/login_hotkey";
	}

	// ���Ϲ߼۸޼���
	public void mail(String mail, String name, String id, String subject,
			String body) {
		// ���� ���� ����

		System.out.println("--------����� FIND ID ���� ������ ��--------");
		System.out.println("MAIL : " + mail);
		System.out.println("NAME : " + name);
		System.out.println("ID : " + id);

		String host = "smtp.naver.com";
		final String username = "ama949@naver.com"; // ������ ��� ���̹� ID
		final String password = "skdltm11a"; // ��й�ȣ
		int port = 465;

		// ���� ����
		String recipient = mail; // �޴� ��� E-Mail
		// String subject = "APOS - ID ã�� ����Դϴ�.";
		// String body = "\""+name+"\"����" +"\n\r"+"ID�� : "+id+"\n\r"+"�����մϴ�";

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
			// ���� ÷�νÿ��� BodyPart�� ���
			// msg.setText(body);

			// ����÷�θ� ���� Multipart
			Multipart multipart = new MimeMultipart();

			// BodyPart�� ����
			BodyPart bodyPart = new MimeBodyPart();
			bodyPart.setText(body);

			// 1. Multipart�� BodyPart�� ���δ�.
			multipart.addBodyPart(bodyPart);

			// �̸��� �޽����� ���뿡 Multipart�� ���δ�.
			msg.setContent(multipart);
			Transport.send(msg);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	// ���� ��� ȸ�� ����
	@RequestMapping(value = "/submitJoin", method = RequestMethod.POST)
	public ModelAndView bon_bonJoin(Map<String, Object> model) {
		ModelAndView mav = new ModelAndView("login/bon_bonJoin");
		BonsaVO bvo = new BonsaVO();
		model.put("BonsaVO", bvo);
		System.out.println("�α��� ��Ʈ�ѷ� Ȯ��");
		return mav;
	}
}
