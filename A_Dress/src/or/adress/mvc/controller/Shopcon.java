package or.adress.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import or.adress.mvc.dao.BoardDao;
import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.SmangDao;
import or.adress.mvc.dao.StaffDao;
import or.adress.mvc.dao.StockDao;
import or.adress.mvc.service.ShopService;

import org.apache.ibatis.javassist.compiler.MemberResolver.Method;
import org.apache.poi.ss.formula.ptg.MemErrPtg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.BoardVO;
import vo.CalendarVO;
import vo.CommVO;
import vo.MemVO;
import vo.PageVO;
import vo.ProductVO;
import vo.SalesCheckVO;
import vo.ShopVO;
import vo.StaffVO;
import vo.StockVO;

@Controller
public class Shopcon {
	@Autowired
	private StaffDao staffdao;
	@Autowired
	private ShopDao shopdao;
	@Autowired
	private ProductDao pdao;
	@Autowired
	private BoardDao bdao;
	@Autowired
	private SmangDao smdao;
	@Autowired
	private ShopService shservice;
	@Autowired
	private StockDao stdao;
	
	// cctv ó��ȭ�� sh_workcctv
	@RequestMapping(value = "/ sh_workcctv", method = RequestMethod.POST)
	public ModelAndView  sh_workcctv() {
		ModelAndView mav = new ModelAndView("shop/sh_workcctv");
		return mav;
	}

	@RequestMapping(value = "/sh_productstockreq", method = RequestMethod.POST)
	public ModelAndView stockreq(StockVO vo) {
		// ModelAndView mav = new ModelAndView("shop/sh_productStock");
		// mav.setViewName("shop/sh_productStock");
		stdao.Stockreq(vo);
		return sh_productStock();
	}
	//productchage
		@RequestMapping(value="/sh_profilecha", method=RequestMethod.POST)
		    public ModelAndView profilecha(){
			ModelAndView mav = new ModelAndView();
			mav.setViewName("shop/sh_smasterDetail");
			return mav;
		}
		

	
	// addobject�� list, db���� ���� �ҷ��� view�� �����ٶ� !

	@RequestMapping(value = "/sh_index")
	public String index() {
		// ///////�ӽü���
		// session.setAttribute("sh_id", "dodi");
		// session.setAttribute("sh_name", "������");
		// session.setAttribute("shop_num", 1);
		// /////////////

		System.out.println("index ����");
		return "shop/sh_index";
	}

	// �������� - ��������
	@RequestMapping(value = "/sh_workNotice", method = RequestMethod.POST)
	public ModelAndView sh_workNotice(int page) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workNotice");

		// ����¡ó�� (�Խ���)
		PageVO pageInfo = pageProcess(page, 0, 0);
		HashMap<String, Integer> map = new HashMap<>();
		map.put("begin", pageInfo.getStartRow());
		map.put("end", pageInfo.getEndRow());
		//
		List<BoardVO> list = bdao.getList(map);

		mav.addObject("pageInfo", pageInfo);
		mav.addObject("list", list);
		return mav;
	}

	// �������� - �������� - ������
	// transaction
	@RequestMapping(value = "/sh_workNoticedetail", method = RequestMethod.POST)
	public ModelAndView bon_workNoticedetail(int no, int page) {
		ModelAndView mav = new ModelAndView("shop/sh_workNoticeDetail");
		// ����¡ó�� (���)
		PageVO pageInfo = pageProcess(page, no, 1);
		HashMap<String, Integer> map = new HashMap<>();
		map.put("begin", pageInfo.getStartRow());
		map.put("end", pageInfo.getEndRow());
		//
		map.put("no", no);
		System.out.println("����" + pageInfo.getStartRow());
		System.out.println("��" + pageInfo.getEndRow());
		List<CommVO> clist = bdao.getCommList(map);
		BoardVO v = bdao.getDetail(no);
		v.setPath("upload/" + v.getPath());
		System.out.println(v.getPath());
		mav.addObject("clist", clist);
		mav.addObject("v", v);
		mav.addObject("pageInfo", pageInfo);
		return mav;
	}

	// �������� - �������� - ��ۻ���
	@RequestMapping(value = "/sh_commdelete")
	public ModelAndView bon_commdelete(int no, int bo_num, String writer,
			int page, HttpSession session) {
		String sh_id = session.getAttribute("sh_id").toString();

		if (sh_id.equals(writer)) {

			bdao.deleteComm(no);
		}
		return bon_workNoticedetail(bo_num, page);
	}

	// �������� - �������� - ����Է�
	@RequestMapping(value = "/sh_commin", method = RequestMethod.POST)
	public ModelAndView bon_commin(String comm_bonum, String comm_cont,
			HttpSession session) {
		int page = 1;
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("no", comm_bonum);
		map.put("cont", comm_cont);
		map.put("writer", session.getAttribute("shop_id").toString());
		bdao.insertComm(map);
		return bon_workNoticedetail(Integer.parseInt(comm_bonum), 1);
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
		List<StaffVO> list = staffdao.gettotalList();
		mav.addObject("list", list);
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
	public ModelAndView sh_memberJoin(Map<String , Object> model) {
		MemVO memvo = new MemVO();
		model.put("member_form",memvo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberJoin");
		return mav;
	}
	// ȸ������-ȸ������ - sh_memberjoinCancel
	@RequestMapping(value = "/sh_memberjoinCancel")
	public ModelAndView sh_memberCancel() {
		System.out.println("ĵ����");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_index");
		return mav;
	}
	// ȸ������ - ȸ������ -���ԿϷ�
	@RequestMapping(value = "/sh_memberjoinjoin", method = RequestMethod.POST)
	public ModelAndView sh_memberjoinjoin(@Valid @ModelAttribute("member_form") MemVO vo, BindingResult result, Map<String , Object> model) {
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()){
			mav.setViewName("shop/sh_memberJoin");
			return mav;
		}else{
			System.out.println("���̸�:" + vo.getMem_name());
			shopdao.insertMem(vo);
			mav.setViewName("shop/sh_index");
			return mav;
		}
	}

	// ȸ������
	@RequestMapping(value = "/sh_memberCheck", method = RequestMethod.POST)
	public ModelAndView sh_memberCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberCheck");
		return mav;
	}

	// ȸ������ - ȸ����ȸ/����
	@RequestMapping(value = "/sh_memberChecksr", method = RequestMethod.POST)
	public ModelAndView sh_memberChecksr(String mem_name) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mem_name);
		List<MemVO> list = shopdao.getListMember(mem_name);
		mav.setViewName("shop/sh_memberCheck");
		mav.addObject("stList", list);
		return mav;
	}

	// ȸ������ - ȸ����������
	// ó�� ȭ��
	@RequestMapping(value = "/sh_memberDetail")
	public ModelAndView sh_memberDetail(String num) {
		ModelAndView mav = new ModelAndView();
		int mem_num = Integer.parseInt(num);
		System.out.println("num: " + mem_num);
		mav.setViewName("shop/sh_memberDetail");
		MemVO vo = shopdao.getDetail(mem_num);
		mav.addObject("v", vo);
		return mav;
	}

	// Ż��
	@RequestMapping(value = "/sh_memberDetail_del")
	public ModelAndView sh_memberDetail_del(String num) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberCheck");
		int mem_num = Integer.parseInt(num);
		System.out.println("mem_num" + mem_num);
		System.out.println("Ż�� �Ϸ�Ǿ����ϴ�.");
		shopdao.getsecede(mem_num);
		return mav;
	}

	// ����
	@RequestMapping(value = "/sh_memdetail_change", method = RequestMethod.POST)
	public ModelAndView memdetail_change(MemVO vo) {
		ModelAndView mav = new ModelAndView();
		shopdao.getfinish(vo);
		System.out.println("������ �Ϸ�Ǿ����ϴ�");
		System.out.println(mav);
		mav.setViewName("shop/sh_memberCheck");
		return mav;
	}

	// ó�� ȭ��
	// ��ǰ���� - ��ǰ��ȸ
	@RequestMapping(value = "/sh_productCheck")
	public ModelAndView sh_productCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_productCheck");
		return mav;
	}

	// ��ǰ���� - �����ȸ
	@RequestMapping(value = "/sh_productStock")
	public ModelAndView sh_productStock() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_productStock");
		return mav;
	}

	// ��ǰ���� -��ǰ��û��Ȳ

	@RequestMapping(value = "/sh_productRequestState")
	public ModelAndView bon_productSale_2(int shop_num) {
		System.out.println("ASDASDASDASDASD");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_productRequestState");
		List<StockVO> list = stdao.sh_productRequestState(shop_num);
		mav.addObject("list", list);
		return mav;
	}

	// ��ǰ �˻�
	@RequestMapping(value = "/sh_productsaerch", method = RequestMethod.POST)
	public ModelAndView sh_productsaerch(String pro_name,String shop_num) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("pro_check", pro_name);
		map.put("shop_num", shop_num);
		// List<ProductVO> list = productdao.getListProduct_bon(pro_name);
		List<ProductVO> list = pdao.getListProduct(map);
		mav.setViewName("shop/sh_productCheck");
		mav.addObject("list", list);
		return mav;
	}

	// �Ǹŵ�� - �Ǹŵ��
	@RequestMapping(value = "/sh_smangRegis")
	public ModelAndView sh_smangRegis() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangRegis");
		return mav;
	}

	// �Ǹŵ��ing
	// transaction
	@RequestMapping(value = "/sh_smangRegising", method = RequestMethod.POST)
	public ModelAndView sh_smangRegising(HttpServletRequest request,
			HttpSession session) {
		shservice.sh_smangRegising(request, session);

		return sh_smangRegis();
	}

	// �Ǹŵ�� - ��ȯ/ȯ��
	@RequestMapping(value = "/sh_smangExchTefu")
	public ModelAndView sh_smangExchTefu() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangExchTefu");
		return mav;

	}

	// ������� -�Ǹ���Ȳ
	@RequestMapping(value = "ssh_salesTable")
	public ModelAndView sh_salesTable() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_salesTable");
		return mav;
	}

	// ������� - �Ⱓ�� ������Ȳ
	@RequestMapping(value = "ssh_salesRank")
	public ModelAndView sh_salesRank() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_salesRank");
		return mav;
	}
	
	// ������� - ���
		@RequestMapping(value = "/ssh_workData")
		public ModelAndView sh_workData(HttpSession session) {
			ModelAndView mav = new ModelAndView();
			int shop_num =(int) session.getAttribute("shop_num");
			System.out.println(shop_num);
			mav.setViewName("shop/sh_workData");
			List<StaffVO> list = staffdao.get_list(shop_num);
			mav.addObject("list", list);
			return mav;
		}
		// ������� - �޿�
				@RequestMapping(value = "/ssh_workPay")
				public ModelAndView sh_workPay(HttpSession session) {
					ModelAndView mav = new ModelAndView();
					mav.setViewName("shop/sh_workPay");
					return mav;
				}

	// ����¡ ó�� ���� �ż���
	private PageVO pageProcess(int page, int no, int etc) {
		PageVO pageInfo = new PageVO();

		int rowsPerPage = 5;
		int pagesPerBlock = 5;
		// �ܺο��� ���� ������ ���� �޾� ���°� ���� ����
		int currentPage = page;
		// Integer.parseInt(request.getParameter("page"));

		int currentBlock = 0;
		if (currentPage % pagesPerBlock == 0) {
			currentBlock = currentPage / pagesPerBlock;
		} else {
			currentBlock = currentPage / pagesPerBlock + 1;
		}
		// ���� ��ϰ� �������� ���� ������ ���������� ������������ : �Ѻ�Ͼȿ� ����������
		int startRow = (currentPage - 1) * rowsPerPage + 1;
		int endRow = currentPage * rowsPerPage;

		int totalRows = 0;
		// �޼��带 ȣ��ÿ� etc�� ���� 0�̶�� ����Ʈ�� �ѵ����͸�
		// 1�̶�� comm�� �ѵ����͸� �������� Dao�� �޼��带 ���� �޾ƿ´�.
		if (etc == 0) {
			totalRows = bdao.getTotalCount();

		} else if (etc == 1) {
			// int no = Integer.parseInt(request.getParameter("no"));
			System.out.println(no);
			totalRows = bdao.getTotalCommCount(no);
			System.out.println(totalRows);
		}

		int totalPages = 0;
		if (totalRows % rowsPerPage == 0) {
			totalPages = totalRows / rowsPerPage;
		} else {
			totalPages = totalRows / rowsPerPage + 1;
		}

		int totalBlocks = 0;
		if (totalPages % pagesPerBlock == 0) {
			totalBlocks = totalPages / pagesPerBlock;
		} else {
			totalBlocks = totalPages / pagesPerBlock + 1;
		}

		pageInfo.setCurrentPage(currentPage);
		pageInfo.setCurrentBlock(currentBlock);
		pageInfo.setRowsPerPage(rowsPerPage);
		pageInfo.setPagesPerBlock(pagesPerBlock);
		pageInfo.setStartRow(startRow);
		pageInfo.setEndRow(endRow);
		pageInfo.setTotalRows(totalRows);
		pageInfo.setTotalPages(totalPages);
		pageInfo.setTotalBlocks(totalBlocks);

		// request.setAttribute("pageInfo", pageInfo);
		// HashMap<String, Integer> map = new HashMap<>();
		// map.put("begin", startRow);
		// map.put("end", endRow);

		System.out.println(startRow + "---" + endRow);
		return pageInfo;
	}

	@RequestMapping("test1254")
	public String test(Model mav) {
		mav.addAttribute("test", "12345");
		return "shop/webRTC";
	}

	// ���� - �Ǹŵ�� - ��ȯȯ�� - ȯ��
	@RequestMapping(value = "sh_smangrefund")
	public ModelAndView sh_smangrefund(int sell_num) {
		System.out.println("shopcon:" + sell_num);
		shservice.sh_refund(sell_num);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangExchTefu");
		return mav;
	}

	

	// Shop_fullcalendar Page
	@RequestMapping(value = "/sh_fullcalendar")
	public ModelAndView sh_fullcalendar() {
		ModelAndView mav = new ModelAndView();
		List<CalendarVO> list = shopdao.getlistfullcalendar();
		Iterator<CalendarVO> it = list.iterator();
		StringBuffer res = new StringBuffer();

		while (it.hasNext()) {
			CalendarVO v = new CalendarVO();
			v = it.next();
			res.append("{title:'")
					.append(v.getCalen_num() + "/" + v.getCalen_content())
					.append("',");
			res.append("start:'").append(v.getCalen_start()).append("',");
			res.append("end:'").append(v.getCalen_end()).append("',");
			res.append("color:'").append(v.getCalen_color()).append("'}");
			if (it.hasNext()) {
				res.append(",");
			}
		}
		mav.setViewName("shop/sh_fullcalendar");

		mav.addObject("list", res.toString());
		return mav;
	}

	@RequestMapping(value = "sh_videochat")
	public ModelAndView bonsaWebRTC(String shop_num) {
		ModelAndView mav = new ModelAndView("shop/sh_videochatting");
		mav.addObject("test", "GeniusKCP" + shop_num);
		return mav;

	}
	@RequestMapping(value = "/ssh_memberDetail_cha",method=RequestMethod.GET)
	public ModelAndView sh_memberDetail_cha(HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		int shop_num =Integer.parseInt(session.getAttribute("shop_num").toString());
		System.out.println("----------------------------"+shop_num);
		mav.setViewName("shop/sh_smasterDetail");
		ShopVO vo= shopdao.getvomaster(shop_num);
		mav.addObject("v1", vo);
		return mav;
	}
	//������ ����

	@RequestMapping(value = "/sh_detail_change", method = RequestMethod.POST)
	public ModelAndView sh_memdetail_change(@ModelAttribute ShopVO vo,
		HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String path = session.getServletContext().getRealPath("/master/")
				+vo.getSelfimg().getOriginalFilename();
		System.out.println(session.getServletContext().getRealPath("/master/"));
		File f = new File(path);
		try {
			vo.getSelfimg().transferTo(f);
			
		 } catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		vo.setShop_img(vo.getSelfimg().getOriginalFilename());
	if(vo.getShop_img().equals("")){
	shopdao.fileinsert2(vo);
	System.out.println(vo.getShop_img());
	}else{
	shopdao.fileinsert(vo);
	}
		
		
	System.out.println("��____"+vo.getSelfimg().getOriginalFilename());
		
		System.out.println(vo.getShop_adr());
		
		System.out.println(vo.getShop_master());
		System.out.println(vo.getShop_mail());
		System.out.println(vo.getShop_tel());
		mav.setViewName("redirect:/ssh_memberDetail_cha");
		return mav;
	}
	@RequestMapping(value = "sh_productgallery")
	public ModelAndView gallery() {
		ModelAndView mav = new ModelAndView();
        mav.setViewName("gallery/sh_productgallery");
		return mav;

	}
}

