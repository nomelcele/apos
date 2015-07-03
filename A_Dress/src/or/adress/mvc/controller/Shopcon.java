package or.adress.mvc.controller;

import java.util.HashMap;
import java.util.List;

import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.StaffDao;

import org.apache.ibatis.javassist.compiler.MemberResolver.Method;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.MemVO;
import vo.ProductVO;
import vo.ShopVO;
import vo.StaffVO;

@Controller
public class Shopcon {
	@Autowired
	private StaffDao staffdao;
	@Autowired
	private ShopDao shopdao;
	@Autowired
	private ProductDao productdao;

	@RequestMapping(value = "/sh_index")
	public String index() {
		System.out.println("index ����");
		return "shop/sh_index";
	}


	// �������� - ��������
	@RequestMapping(value = "/sh_workNotice")
	public ModelAndView sh_workNotice() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workNotice");
		return mav;
	}

	// �������� - ���α���
	@RequestMapping(value = "/sh_workItr")
	public ModelAndView sh_workItr() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workItr");
		return mav;
	}

	// �������� - ���
	@RequestMapping(value = "/sh_workTerm")
	public ModelAndView sh_workTerm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTerm");
		return mav;
	}

	// �������� - ����ó
	@RequestMapping(value = "/sh_workTel")
	public ModelAndView sh_workTel() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTel");
		return mav;
	}

	// �������� - ����ó- ������ �˻�
	@RequestMapping(value = "/sh_workTelSearch", method = RequestMethod.POST)
	public ModelAndView sh_workTelSearch(String shop_name) {
		System.out.println("�����̸�:" + shop_name);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTel");
		List<StaffVO> list = staffdao.getList(shop_name);
		mav.addObject("list", list);

		return mav;
	}

	// ȸ������ - ȸ������
	@RequestMapping(value = "/sh_memberJoin")
	public ModelAndView sh_memberJoin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberJoin");
		return mav;
	}

	// ȸ������ - ȸ������ -���ԿϷ�
	@RequestMapping(value = "/sh_memberjoinjoin", method = RequestMethod.POST)
	public ModelAndView sh_memberjoinjoin(MemVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberJoin");
		System.out.println("���̸�:" + vo.getMem_name());
		shopdao.insertMem(vo);
		mav.setViewName("shop/sh_index");
		return mav;
	}
	
	
	
	
	//---------�濬
	@RequestMapping(value = "/sh_memberCheck", method =RequestMethod.POST)
	public ModelAndView sh_memberCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberCheck");
		return mav;
	}
	// ȸ������ - ȸ����ȸ/���� 
	@RequestMapping(value = "/sh_memberChecksr", method =RequestMethod.POST)
	public ModelAndView sh_memberChecksr(String mem_name) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mem_name);
		List<MemVO> list =shopdao.getListMember(mem_name);
		mav.setViewName("shop/sh_memberCheck");
		mav.addObject("stList", list);
		return mav;
	}
	
	// ȸ������ - ȸ����������
	// ó�� ȭ��
	@RequestMapping(value="/sh_memberDetail")
	public ModelAndView sh_memberDetail(String num){
		ModelAndView mav = new ModelAndView();
		int mem_num= Integer.parseInt(num);
		System.out.println("num: "+mem_num);
		mav.setViewName("shop/sh_memberDetail");
		MemVO vo = shopdao.getDetail(mem_num);
		mav.addObject("v", vo);
		return mav;
	}
	// Ż��
	@RequestMapping(value="/sh_memberDetail_del")
	public ModelAndView sh_memberDetail_del(String num){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberCheck");
		int mem_num = Integer.parseInt(num);
		System.out.println("mem_num"+mem_num);
		System.out.println("Ż�� �Ϸ�Ǿ����ϴ�.");
		shopdao.getsecede(mem_num);
		return mav;
	}
	// ����
	@RequestMapping(value = "/sh_memdetail_change")
	public ModelAndView memdetail_change(MemVO vo) {
		ModelAndView mav = new ModelAndView();
		shopdao.getfinish(vo);
		System.out.println("������ �Ϸ�Ǿ����ϴ�");
		System.out.println(mav);
		return mav;
	}
	
	//---------�濬
	
	
	
	
	//--�濬---------------------------------------
	
	// ó�� ȭ��
	// ��ǰ���� - ��ǰ��ȸ
	@RequestMapping(value = "/sh_productCheck")
	public ModelAndView sh_productCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_productCheck");
		return mav;
	}
	
	// �˻�
	@RequestMapping(value="/sh_productsaerch", method =RequestMethod.POST )
	public ModelAndView sh_productsaerch(String pro_name){
		ModelAndView mav = new ModelAndView();
		List<ProductVO> list = productdao.getListProduct_bon(pro_name);
		mav.setViewName("shop/sh_productCheck");
		mav.addObject("list", list);
		return mav;
	}
	
	//--�濬---------------------------------------
	
	
	
	
	
	
	
	// �Ǹŵ�� - �Ǹŵ��
	@RequestMapping(value = "/sh_smangRegis")
	public ModelAndView sh_smangRegis() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangRegis");
		return mav;
	}

	// �Ǹŵ�� - ��ȯ/ȯ��
	@RequestMapping(value = "/sh_smangExchTefu")
	public ModelAndView sh_smangExchTefu() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangExchTefu");
		return mav;
		
	}
	
	
	//------------------------------------------------------- �̸�----
	
	//�Ǹ� ���- ��ȯ/ȯ��
}
