package or.adress.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Shopcon {
	@RequestMapping(value = "/sh_index")
	public String index() {
		return "shop/sh_index";
	}
	@RequestMapping(value="/sh_memdetail_change")
	public ModelAndView memdetail_change(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_index");
		return mav;
	}
	// �������� - ��������
	@RequestMapping(value="/sh_workNotice")
	public ModelAndView sh_workNotice(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workNotice");
		return mav;
	}
	// �������� - ���α���
	@RequestMapping(value="/sh_workItr")
	public ModelAndView sh_workItr(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workItr");
		return mav;
	}
	// �������� - ���
	@RequestMapping(value="/sh_workTerm")
	public ModelAndView sh_workTerm(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTerm");
		return mav;
	}
	// �������� - ����ó
	@RequestMapping(value="/sh_workTel")
	public ModelAndView sh_workTel(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTel");
		return mav;
	}
	// ȸ������ - ȸ������
	@RequestMapping(value="/sh_memberJoin")
	public ModelAndView sh_memberJoin(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberJoin");
		return mav;
	}
	// ȸ������ - ȸ����ȸ/����
	@RequestMapping(value="/sh_memberCheck")
	public ModelAndView sh_memberDetail(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberCheck");
		return mav;
	}
	// ��ǰ���� - ��ǰ��ȸ
	@RequestMapping(value="/sh_productCheck")
	public ModelAndView sh_productCheck(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_productCheck");
		return mav;
	}
	
	// �Ǹŵ�� - �Ǹŵ��
	@RequestMapping(value="/sh_smangRegis")
	public ModelAndView sh_smangRegis(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangRegis");
		return mav;
	}
	// �Ǹŵ�� - ��ȯ/ȯ��
	@RequestMapping(value="/sh_smangExchTefu")
	public ModelAndView sh_smangExchTefu(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangExchTefu");
		return mav;
	}
}
