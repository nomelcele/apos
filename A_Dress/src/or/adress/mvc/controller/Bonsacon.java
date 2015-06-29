package or.adress.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Bonsacon {
	@RequestMapping(value = "/bon_index")
	public ModelAndView bon_index() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_index");
		return mav;
	}
	// ���� �������� ��������
	@RequestMapping(value = "/bon_workNotice")
	public ModelAndView bon_workNotice() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_workNotice");
		return mav;
	}
	// ���� ������� ���尡��
	@RequestMapping(value = "/bon_shopJoin")
	public ModelAndView bon_shopJoin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_shopJoin");
		return mav;
	}
	// ���� ������� ������ȸ
	@RequestMapping(value = "/bon_shopCheck")
	public ModelAndView bon_shopCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_shopCheck");
		return mav;
	}
	// ���� ��ǰ���� ��ǰ�߰�
	@RequestMapping(value = "/bon_productAdd")
	public ModelAndView bon_productAdd() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_productAdd");
		return mav;
	}
	// ���� ��ǰ���� ��ǰ������
	@RequestMapping(value = "/bon_productSale")
	public ModelAndView bon_productSale() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_productSale");
		return mav;
	}
	// bon_termSalesCheck ǰ�� �������
		@RequestMapping(value = "/bon_productSalesCheck")
		public ModelAndView bon_termSalesCheck() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("bonsa/bon_productSalesCheck");
			return mav;
		}
	
	// bon_productSalesCheck �븮���� ������� bon_outletSalesCheck
	@RequestMapping(value = "/bon_outletSalesCheck")
	public ModelAndView bon_productSalesCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_outletSalesCheck");
		return mav;
	}
}
