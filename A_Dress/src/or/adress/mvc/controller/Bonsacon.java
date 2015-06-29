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
	// 본사 업무관리 공지사항
	@RequestMapping(value = "/bon_workNotice")
	public ModelAndView bon_workNotice() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_workNotice");
		return mav;
	}
	// 본사 매장관리 매장가입
	@RequestMapping(value = "/bon_shopJoin")
	public ModelAndView bon_shopJoin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_shopJoin");
		return mav;
	}
	// 본사 매장관리 매장조회
	@RequestMapping(value = "/bon_shopCheck")
	public ModelAndView bon_shopCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_shopCheck");
		return mav;
	}
	// 본사 상품관리 상품추가
	@RequestMapping(value = "/bon_productAdd")
	public ModelAndView bon_productAdd() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_productAdd");
		return mav;
	}
	// 본사 상품관리 상품재고관리
	@RequestMapping(value = "/bon_productSale")
	public ModelAndView bon_productSale() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_productSale");
		return mav;
	}
	// bon_termSalesCheck 품목별 매출순위
		@RequestMapping(value = "/bon_productSalesCheck")
		public ModelAndView bon_termSalesCheck() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("bonsa/bon_productSalesCheck");
			return mav;
		}
	
	// bon_productSalesCheck 대리점별 매출순위 bon_outletSalesCheck
	@RequestMapping(value = "/bon_outletSalesCheck")
	public ModelAndView bon_productSalesCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_outletSalesCheck");
		return mav;
	}
}
