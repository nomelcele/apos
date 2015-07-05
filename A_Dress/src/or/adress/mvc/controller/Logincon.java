package or.adress.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import or.adress.mvc.dao.BonsaDao;
import or.adress.mvc.dao.LogTimeDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;




import vo.BonsaVO;

@Controller
public class Logincon {
	@Autowired
	private BonsaDao bdao;
	@Autowired
	private LogTimeDao ldao;
	
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
	
	@RequestMapping(value="bon_findidform", method=RequestMethod.POST)
	public ModelAndView bon_findidform(){
		
		return bon_login();
	}
	
	@RequestMapping(value="bon_findpwdform", method=RequestMethod.POST)
	public ModelAndView bon_findpwdform(){
		
		return bon_login();
	}
	
	// ���� - ��� ����
	@RequestMapping(value="bon_sawonjoin", method=RequestMethod.POST)
	public ModelAndView bon_sawonjoin(HttpServletRequest request){
		
				// �̸� ,��й�ȣ, ��й�ȣ Ȯ��, ����, ����ó
				
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
	
	
	//����α��� (ȭ����ȯ, ��������) (���̵�/���üũ�� ĸí����)
	@RequestMapping(value="bon_sawonlogin", method=RequestMethod.POST)
	public ModelAndView bon_sawonlogin(HttpServletRequest request){
		String id =request.getParameter("bon_login_id");
		String bon_name = bdao.getbonname(id);
		ldao.logintime(bdao.getbonnum(id)); // �α��� �ð� DB�� ����
		HttpSession session = request.getSession();
		session.setAttribute("bon_id", id);
		session.setAttribute("bon_name", bon_name);
		ModelAndView mav = new ModelAndView("bonsa/bon_index");
		return mav;
	}
	
	//����α׾ƿ�
	@RequestMapping(value="bon_sawonlogout")
	public ModelAndView bon_sawonlogout(HttpSession session){
		// ���� ��� �α� �ƿ�
					String bon_id =(String) session.getAttribute("bon_id");
					ldao.logouttime(bdao.getbonnum(bon_id));
					session.invalidate(); //��� ���ǻ���
					return bon_login();
	}
	
	
	
}
