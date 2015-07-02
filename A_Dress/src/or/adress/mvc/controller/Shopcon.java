package or.adress.mvc.controller;

import java.util.HashMap;
import java.util.List;

import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.StaffDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.MemVO;
import vo.StaffVO;

@Controller
public class Shopcon {
	@Autowired
	private StaffDao staffdao;
	@Autowired
	private ShopDao shopdao;

	@RequestMapping(value = "/sh_index")
	public String index() {
		System.out.println("index ����");
		return "shop/sh_index";
	}

	@RequestMapping(value = "/sh_memdetail_change")
	public ModelAndView memdetail_change() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_index");
		return mav;
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

	// ȸ������ - ȸ����ȸ/����
	@RequestMapping(value = "/sh_memberCheck")
	public ModelAndView sh_memberDetail() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberCheck");
		return mav;
	}

	// ��ǰ���� - ��ǰ��ȸ
	@RequestMapping(value = "/sh_productCheck")
	public ModelAndView sh_productCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_productCheck");
		return mav;
	}

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
