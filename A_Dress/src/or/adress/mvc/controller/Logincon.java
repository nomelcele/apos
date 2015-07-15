package or.adress.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import or.adress.mvc.dao.BonsaDao;
import or.adress.mvc.dao.LogTimeDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.service.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	private LoginService lservice;
	
	@RequestMapping(value="login")
	public String login(){
		return "login/new_login";
	}
	//���̵�,��� �ȸ��� ���
	@RequestMapping(value="/denied")
	public String denied(){
		System.out.println("�ź�?");
		return "login/denied";
	}
	//���ٺҰ����
	@RequestMapping(value="/error")
	public String denied1(){
		System.out.println("����");
		return "login/denied";
	}
	
	@RequestMapping(value="/home")
	public ModelAndView home(Locale locale, HttpServletRequest request, HttpSession session){
		System.out.println("����� ������");
		String id = request.getUserPrincipal().getName();
		if(id.startsWith("bon")){
			return bon_sawonlogin(id, session);
		}else if(id.startsWith("sh")){
			return sh_loginok(id, "master", session);
		}else{
			return sh_loginok(id, "staff", session);
		}
	}
	
	@RequestMapping(value="/bon_login")
	public ModelAndView bon_login(){
		ModelAndView mav = new ModelAndView("login/bon_login");
		return mav;
	}
	
	@RequestMapping(value="/sh_login")
	public ModelAndView sh_login(){
		ModelAndView mav = new ModelAndView("login/sh_login");
		return mav;
	}
	
	//����ȸ������ ���̵��ߺ�üũ
	@RequestMapping(value="/bo_idchk")
	public ModelAndView bo_idchk(String id){
		System.out.println("ȣ��Ȯ��");
		boolean res = bdao.chkid(id);
		System.out.println("Request ID : "+id);
		ModelAndView mav = new ModelAndView("ajax/bon_sawonidcheck");
		
		if(res){
			mav.addObject("res", "<p style=\"color:red;\">�̹� �����ϴ� ���̵��Դϴ�</p>");
		
		}else{
			mav.addObject("res", "<p style=\"color:green;\">��밡���� ���̵��Դϴ�</p>");
			
		}
		return mav;
	}
	
	
	//���α���ȭ�鿡�� ����Ű���â����
	@RequestMapping(value="/sh_gethotkey")
	public ModelAndView sh_gethotkey(){
		ModelAndView mav = new ModelAndView("login/sh_gethotkey");
		return mav;
	}
	
	//��Ű�߱޽�û
	@RequestMapping(value="/sh_requesthot", method=RequestMethod.POST)
	public ModelAndView sh_requesthot(ShopHotkeyVO vo){
		// hotkey �߱޽� 
		sdao.shoprequesthotkey(vo);
		ModelAndView mav = new ModelAndView("login/sh_login");
		return mav;
	}
	
	//�� ȸ������ insert
	@RequestMapping(value="/sh_shopinsert", method=RequestMethod.POST)
	public ModelAndView sh_shopinsert(@ModelAttribute ShopVO vo, HttpSession session){
		System.out.println("Ȯ��");
		// ���� ȸ�� ����- DB�� ����
					String path = 
							session.getServletContext()
							.getRealPath("/upload/")+vo.getSelfimg().getOriginalFilename();
					       
					System.out.println(path);
					File f = new File(path);
					try{
						vo.getSelfimg().transferTo(f);
						
					}catch(IllegalStateException | IOException e) {
							e.printStackTrace();
					}
					vo.setShop_img(vo.getSelfimg().getOriginalFilename());
					lservice.shopjoinservice(vo);
		ModelAndView mav = new ModelAndView("login/sh_login");
		return mav;
	}
	
	
	//�α��μ���
	//transactio
	@RequestMapping(value="/sh_loginok", method=RequestMethod.POST)
	public ModelAndView sh_loginok(String id, String radio, HttpSession session){
		ModelAndView mav = new ModelAndView("shop/sh_index");
		String name = "";  // �����
		String master =""; // ���������̸�
		//String radio = request.getParameter("radio"); // master or staff?
		System.out.println("---Radio--- : "+ radio);
		//String id = request.getParameter("id"); // ���� ID
		int shop_num=0;
		if(radio.equals("master")){
			shop_num =  sdao.getshopno(id);// shop_num;
			System.out.println(shop_num);
			List<ShopVO> list =  sdao.getshopname(id);
			for(ShopVO e : list){
				name= e.getShop_name();
				master = e.getShop_master();
			}
			session.setAttribute("shop_master", master); // ������ �̸�
		}else if(radio.equals("staff")){
			StaffVO vo = new StaffVO();
			vo = sdao.getshopno_staff(id);
			shop_num = vo.getStaff_shopnum();
			name = sdao.getshopnameone(shop_num);
			session.setAttribute("shop_master", vo.getStaff_name());
		}
		System.out.println(name);
		System.out.println(master);
		//HttpSession session = request.getSession();
		session.setAttribute("shop_num", shop_num); // ���� NUM
		session.setAttribute("shop_id", id); // ���� ID
		session.setAttribute("shop_name", name); // �����
		session.setAttribute("radio", radio); // master or staff?
		return mav;
	}
	
	//���α׾ƿ�
	@RequestMapping(value="/sh_logout")
	public String sh_logout(){
		return "/j_spring_security_logout";
	}
	
	
	@RequestMapping(value="/submithot", method=RequestMethod.POST)
	public ModelAndView submithot(){
		ModelAndView mav = new ModelAndView("login/sh_shopjoin");
		return mav;
	}
	
	
	
		
	
	@RequestMapping(value="/bon_findidform", method=RequestMethod.POST)
	public ModelAndView bon_findidform(){
		
		return bon_login();
	}
	
	@RequestMapping(value="/bon_findpwdform", method=RequestMethod.POST)
	public ModelAndView bon_findpwdform(){
		
		return bon_login();
	}
	
	// ���� - ��� ����
	@RequestMapping(value="/bon_sawonjoin", method=RequestMethod.POST)
	public String bon_sawonjoin(HttpServletRequest request){
		
				// �̸� ,��й�ȣ, ��й�ȣ Ȯ��, ����, ����ó
				
				String bon_id = "bon_"+request.getParameter("bon_id");
				String bon_name = request.getParameter("bon_name");
				String bon_pwd = request.getParameter("bon_pwd");
				String tel1 = request.getParameter("bon_tel1");
				String tel2 = request.getParameter("bon_tel2");
				String tel3 = request.getParameter("bon_tel3");
				String bon_tel = tel1 +"-"+ tel2+"-"+tel3;
				
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
	
	
	//����α��� (ȭ����ȯ, ��������) (���̵�/���üũ�� ĸí����)
	//transaction
	@RequestMapping(value="/bon_sawonlogin", method=RequestMethod.POST)
	public ModelAndView bon_sawonlogin(String bon_login_id, HttpSession session){
		//String id =request.getParameter("bon_login_id");
		String id = bon_login_id;
		String bon_name = bdao.getbonname(id);
		ldao.logintime(bdao.getbonnum(id)); // �α��� �ð� DB�� ����
		//HttpSession session = request.getSession();
		session.setAttribute("bon_id", id);
		session.setAttribute("bon_name", bon_name);
		ModelAndView mav = new ModelAndView("bonsa/bon_index");
		return mav;
	}
	
	//����α׾ƿ�
	@RequestMapping(value="/bon_sawonlogout")
	public String bon_sawonlogout(HttpSession session){
		// ���� ��� �α� �ƿ�
					String bon_id =(String) session.getAttribute("bon_id");
					ldao.logouttime(bdao.getbonnum(bon_id));
					session.invalidate(); //��� ���ǻ���
					return "/j_spring_security_logout";
	}
	
	//��Ű�߱�������
	@RequestMapping(value="/gethotkey")
	public String gethotkey(){
		return "login/login_hotkey";
	}
	
	
}
