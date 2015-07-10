package or.adress.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
	
	//샵로그인화면에서 겟핫키모달창띄우기
	@RequestMapping(value="/sh_gethotkey")
	public ModelAndView sh_gethotkey(){
		ModelAndView mav = new ModelAndView("login/sh_gethotkey");
		return mav;
	}
	
	//핫키발급신청
	@RequestMapping(value="/sh_requesthot", method=RequestMethod.POST)
	public ModelAndView sh_requesthot(ShopHotkeyVO vo){
		// hotkey 발급시 
		sdao.shoprequesthotkey(vo);
		ModelAndView mav = new ModelAndView("login/sh_login");
		return mav;
	}
	
	//샵 회원가입 insert
	@RequestMapping(value="/sh_shopinsert", method=RequestMethod.POST)
	public ModelAndView sh_shopinsert(@ModelAttribute ShopVO vo, HttpSession session){
		System.out.println("확인");
		// 매장 회원 가입- DB에 저장
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
	
	
	//로그인성공
	//transaction
	@RequestMapping(value="/sh_loginok", method=RequestMethod.POST)
	public ModelAndView sh_loginok(String id, String radio, HttpSession session){
		ModelAndView mav = new ModelAndView("shop/sh_index");
		String name = "";  // 매장명
		String master =""; // 매장주인이름
		//String radio = request.getParameter("radio"); // master or staff?
		System.out.println("---Radio--- : "+ radio);
		//String id = request.getParameter("id"); // 접속 ID
		int shop_num=0;
		if(radio.equals("master")){
			shop_num =  sdao.getshopno(id);// shop_num;
			System.out.println(shop_num);
			List<ShopVO> list =  sdao.getshopname(id);
			for(ShopVO e : list){
				name= e.getShop_name();
				master = e.getShop_master();
			}
			session.setAttribute("shop_master", master); // 매장주 이름
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
		session.setAttribute("shop_num", shop_num); // 매장 NUM
		session.setAttribute("shop_id", id); // 접속 ID
		session.setAttribute("shop_name", name); // 매장명
		session.setAttribute("radio", radio); // master or staff?
		return mav;
	}
	
	//샵로그아웃
	@RequestMapping(value="/sh_logout")
	public ModelAndView sh_logout(HttpSession session){
		session.invalidate(); //모든 세션삭제
		return sh_login();
	}
	
	
	@RequestMapping(value="/submithot", method=RequestMethod.POST)
	public ModelAndView submithot(){
		ModelAndView mav = new ModelAndView("login/sh_shopjoin");
		return mav;
	}
	
	
	
		
	
	@RequestMapping(value="bon_findidform", method=RequestMethod.POST)
	public ModelAndView bon_findidform(){
		
		return bon_login();
	}
	
	@RequestMapping(value="bon_findpwdform", method=RequestMethod.POST)
	public ModelAndView bon_findpwdform(){
		
		return bon_login();
	}
	
	// 본사 - 사원 가입
	@RequestMapping(value="bon_sawonjoin", method=RequestMethod.POST)
	public ModelAndView bon_sawonjoin(HttpServletRequest request){
		
				// 이름 ,비밀번호, 비밀번호 확인, 성명, 연락처
				
				String bon_id = request.getParameter("bon_id");
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
				bdao.sawonjoin(vo);
		return bon_login();
	}
	
	
	//본사로그인 (화면전환, 세션저장) (아이디/비번체크는 캡챠에서)
	//transaction
	@RequestMapping(value="bon_sawonlogin", method=RequestMethod.POST)
	public ModelAndView bon_sawonlogin(String bon_login_id, HttpSession session){
		//String id =request.getParameter("bon_login_id");
		String id = bon_login_id;
		String bon_name = bdao.getbonname(id);
		ldao.logintime(bdao.getbonnum(id)); // 로그인 시간 DB에 저장
		//HttpSession session = request.getSession();
		session.setAttribute("bon_id", id);
		session.setAttribute("bon_name", bon_name);
		ModelAndView mav = new ModelAndView("bonsa/bon_index");
		return mav;
	}
	
	//본사로그아웃
	@RequestMapping(value="bon_sawonlogout")
	public ModelAndView bon_sawonlogout(HttpSession session){
		// 본사 사원 로그 아웃
					String bon_id =(String) session.getAttribute("bon_id");
					ldao.logouttime(bdao.getbonnum(bon_id));
					session.invalidate(); //모든 세션삭제
					return bon_login();
	}
	
	
	
}
