package or.adress.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import or.adress.mvc.service.ShopService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import suggest.Barcoder;
import suggest.Suggest;
import temp.ShopAdapter;
import vo.BoardVO;
import vo.CalendarVO;
import vo.ChaVO;
import vo.CommVO;
import vo.MemVO;
import vo.PageVO;
import vo.ProductVO;
import vo.SalesCheckVO;
import vo.ShopVO;
import vo.SmangVO;
import vo.StaffVO;
import vo.StockVO;

@Controller
public class Shopcon {

	@Autowired
	private ShopAdapter ShopAdapter;

	@Autowired
	private ShopService shservice;

	// cctv 처음화면 sh_workcctv
	@RequestMapping(value = "/ sh_workcctv", method = RequestMethod.POST)
	public ModelAndView sh_workcctv() {
		ModelAndView mav = new ModelAndView("shop/sh_workcctv");
		return mav;
	}

	@RequestMapping(value = "/sh_productstockreq", method = RequestMethod.POST)
	public ModelAndView stockreq(StockVO vo) {
		// ModelAndView mav = new ModelAndView("shop/sh_productStock");
		// mav.setViewName("shop/sh_productStock");
		ShopAdapter.STDAOreturn().Stockreq(vo);
		return sh_productStock();
	}

	// productchage
	@RequestMapping(value = "/sh_profilecha", method = RequestMethod.POST)
	public ModelAndView profilecha() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smasterDetail");
		return mav;
	}

	// addobject는 list, db에서 값을 불러와 view로 보여줄때 !

	@RequestMapping(value = "/sh_index")
	public String index() {
		// ///////임시세션
		// session.setAttribute("sh_id", "dodi");
		// session.setAttribute("sh_name", "도하진");
		// session.setAttribute("shop_num", 1);
		// /////////////

		System.out.println("index 시작");
		return "shop/sh_index";
	}

	// 업무관리 - 공지사항
	@RequestMapping(value = "/sh_workNotice", method = RequestMethod.POST)
	public ModelAndView sh_workNotice(int page) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workNotice");

		// 페이징처리 (게시판)
		PageVO pageInfo = pageProcess(page, 0, 0);
		HashMap<String, Integer> map = new HashMap<>();
		map.put("begin", pageInfo.getStartRow());
		map.put("end", pageInfo.getEndRow());
		//
		List<BoardVO> list = ShopAdapter.BDAOreturn().getList(map);

		mav.addObject("pageInfo", pageInfo);
		mav.addObject("list", list);
		return mav;
	}

	// 업무관리 - 공지사항 - 디테일
	// transaction
	@RequestMapping(value = "/sh_workNoticedetail", method = RequestMethod.POST)
	public ModelAndView bon_workNoticedetail(int no, int page) {
		ModelAndView mav = new ModelAndView("shop/sh_workNoticeDetail");
		// 페이징처리 (댓글)
		PageVO pageInfo = pageProcess(page, no, 1);
		HashMap<String, Integer> map = new HashMap<>();
		map.put("begin", pageInfo.getStartRow());
		map.put("end", pageInfo.getEndRow());
		//
		map.put("no", no);
		System.out.println("시작" + pageInfo.getStartRow());
		System.out.println("끝" + pageInfo.getEndRow());
		List<CommVO> clist = ShopAdapter.BDAOreturn().getCommList(map);
		BoardVO v = ShopAdapter.BDAOreturn().getDetail(no);
		v.setPath("upload/" + v.getPath());
		System.out.println(v.getPath());
		mav.addObject("clist", clist);
		mav.addObject("v", v);
		mav.addObject("pageInfo", pageInfo);
		return mav;
	}

	// 업무관리 - 공지사항 - 댓글삭제
	@RequestMapping(value = "/sh_commdelete")
	public ModelAndView bon_commdelete(int no, int bo_num, String writer,
			int page, HttpSession session) {
		String sh_id = session.getAttribute("shop_id").toString();

		if (sh_id.equals(writer)) {

			ShopAdapter.BDAOreturn().deleteComm(no);
		}
		return bon_workNoticedetail(bo_num, page);
	}

	// 업무관리 - 공지사항 - 댓글입력
	@RequestMapping(value = "/sh_commin", method = RequestMethod.POST)
	public ModelAndView bon_commin(String comm_bonum, String comm_cont,
			HttpSession session) {
		int page = 1;
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("no", comm_bonum);
		map.put("cont", comm_cont);
		map.put("writer", session.getAttribute("shop_id").toString());
		ShopAdapter.BDAOreturn().insertComm(map);
		return bon_workNoticedetail(Integer.parseInt(comm_bonum), 1);
	}

	// 업무관리 - 내부규정
	@RequestMapping(value = "/sh_workItr")
	public ModelAndView sh_workItr() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workItr");
		return mav;
	}

	// 업무관리 - 약관
	@RequestMapping(value = "/sh_workTerm")
	public ModelAndView sh_workTerm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTerm");
		return mav;
	}

	// 업무관리 - 연락처
	@RequestMapping(value = "/sh_workTel")
	public ModelAndView sh_workTel() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTel");
		List<StaffVO> list = ShopAdapter.STAFFDAOreturn().gettotalList();
		mav.addObject("list", list);
		return mav;
	}

	// 업무관리 - 연락처- 연락서 검색
	@RequestMapping(value = "/sh_workTelSearch", method = RequestMethod.POST)
	public ModelAndView sh_workTelSearch(String shop_name) {
		System.out.println("매장이름:" + shop_name);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTel");
		List<StaffVO> list = ShopAdapter.STAFFDAOreturn().getList(shop_name);
		mav.addObject("list", list);
		return mav;
	}

	// 회원관리 - 회원가입
	@RequestMapping(value = "/sh_memberJoin")
	public ModelAndView sh_memberJoin(Map<String, Object> model) {
		MemVO memvo = new MemVO();
		model.put("member_form", memvo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberJoin");
		return mav;
	}

	// 회원관리-회원가입 - sh_memberjoinCancel
	@RequestMapping(value = "/sh_memberjoinCancel")
	public ModelAndView sh_memberCancel() {
		System.out.println("캔슬얍");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_index");
		return mav;
	}

	// 회원관리 - 회원가입 -가입완료
	@RequestMapping(value = "/sh_memberjoinjoin", method = RequestMethod.POST)
	public ModelAndView sh_memberjoinjoin(
			@Valid @ModelAttribute("member_form") MemVO vo,
			BindingResult result, Map<String, Object> model) {
		ModelAndView mav = new ModelAndView();
		if (result.hasErrors()) {
			mav.setViewName("shop/sh_memberJoin");
			return mav;
		} else {
			System.out.println("고객이름:" + vo.getMem_name());
			ShopAdapter.SHDAOreturn().insertMem(vo);
			mav.setViewName("shop/sh_index");
			return mav;
		}
	}

	// 회원관리
	@RequestMapping(value = "/sh_memberCheck", method = RequestMethod.POST)
	public ModelAndView sh_memberCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberCheck");
		return mav;
	}

	// 회원관리 - 회원조회/수정
	@RequestMapping(value = "/sh_memberChecksr", method = RequestMethod.POST)
	public ModelAndView sh_memberChecksr(String mem_name) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mem_name);
		List<MemVO> list = ShopAdapter.SHDAOreturn().getListMember(mem_name);
		mav.setViewName("shop/sh_memberCheck");
		mav.addObject("stList", list);
		return mav;
	}

	// 회원관리 - 회원정보수정
	// 처음 화면
	@RequestMapping(value = "/sh_memberDetail")
	public ModelAndView sh_memberDetail(String num) {
		ModelAndView mav = new ModelAndView();
		int mem_num = Integer.parseInt(num);
		System.out.println("num: " + mem_num);
		mav.setViewName("shop/sh_memberDetail");
		MemVO vo = ShopAdapter.SHDAOreturn().getDetail(mem_num);
		mav.addObject("v", vo);
		return mav;
	}

	// 탈퇴
	@RequestMapping(value = "/sh_memberDetail_del")
	public ModelAndView sh_memberDetail_del(String num) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberCheck");
		int mem_num = Integer.parseInt(num);
		System.out.println("mem_num" + mem_num);
		System.out.println("탈퇴가 완료되었습니다.");
		ShopAdapter.SHDAOreturn().getsecede(mem_num);
		return mav;
	}

	// 수정
	@RequestMapping(value = "/sh_memdetail_change", method = RequestMethod.POST)
	public ModelAndView memdetail_change(MemVO vo) {
		ModelAndView mav = new ModelAndView();
		ShopAdapter.SHDAOreturn().getfinish(vo);
		System.out.println("수정이 완료되었습니당");
		System.out.println(mav);
		mav.setViewName("shop/sh_memberCheck");
		return mav;
	}

	// 처음 화면
	// 상품관리 - 상품조회
	@RequestMapping(value = "/sh_productCheck")
	public ModelAndView sh_productCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_productCheck");
		return mav;
	}

	// 상품관리 - 재고조회
	@RequestMapping(value = "/sh_productStock")
	public ModelAndView sh_productStock() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_productStock");
		return mav;
	}

	// 상품관리 -상품신청현황

	@RequestMapping(value = "/sh_productRequestState")
	public ModelAndView bon_productSale_2(int shop_num) {
		System.out.println("ASDASDASDASDASD");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_productRequestState");
		List<StockVO> list = ShopAdapter.STDAOreturn().sh_productRequestState(
				shop_num);
		mav.addObject("list", list);
		return mav;
	}

	// 상품 검색
	@RequestMapping(value = "/sh_productsaerch", method = RequestMethod.POST)
	public ModelAndView sh_productsaerch(String pro_name, String shop_num) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, String> map = new HashMap<String, String>();

		map.put("pro_check", pro_name);
		map.put("shop_num", shop_num);
		// List<ProductVO> list = productdao.getListProduct_bon(pro_name);
		List<ProductVO> list = ShopAdapter.PDAOreturn().getListProduct(map);
		mav.setViewName("shop/sh_productCheck");
		mav.addObject("list", list);
		return mav;
	}

	// 판매등록 - 판매등록
	@RequestMapping(value = "/sh_smangRegis")
	public ModelAndView sh_smangRegis() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangRegis");
		return mav;
	}

	// 판매등록ing
	// transaction
	@RequestMapping(value = "/sh_smangRegising", method = RequestMethod.POST)
	public ModelAndView sh_smangRegising(HttpServletRequest request,
			HttpSession session) {
		shservice.sh_smangRegising(request, session);

		return sh_smangRegis();
	}

	// 판매등록 - 교환/환불
	@RequestMapping(value = "/sh_smangExchTefu")
	public ModelAndView sh_smangExchTefu() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangExchTefu");
		return mav;

	}

	// 정산관리 -판매현황
	@RequestMapping(value = "ssh_salesTable")
	public ModelAndView sh_salesTable() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_salesTable");
		return mav;
	}

	// 정산관리 - 기간별 매출현황
	@RequestMapping(value = "ssh_salesRank")
	public ModelAndView sh_salesRank() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_salesRank");
		return mav;
	}

	// 정산관리 - 출결
	@RequestMapping(value = "/ssh_workData")
	public ModelAndView sh_workData(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int shop_num = (int) session.getAttribute("shop_num");
		System.out.println(shop_num);
		mav.setViewName("shop/sh_workData");
		List<StaffVO> list = ShopAdapter.STAFFDAOreturn().get_list(shop_num);
		mav.addObject("list", list);
		return mav;
	}

	// 정산관리 - 급여
	@RequestMapping(value = "/ssh_workPay")
	public ModelAndView sh_workPay(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workPay");
		return mav;
	}

	// 페이징 처리 전용 매서드
	private PageVO pageProcess(int page, int no, int etc) {
		PageVO pageInfo = new PageVO();

		int rowsPerPage = 5;
		int pagesPerBlock = 5;
		// 외부에서 부터 페이지 값을 받아 오는것 부터 시작
		int currentPage = page;
		// Integer.parseInt(request.getParameter("page"));

		int currentBlock = 0;
		if (currentPage % pagesPerBlock == 0) {
			currentBlock = currentPage / pagesPerBlock;
		} else {
			currentBlock = currentPage / pagesPerBlock + 1;
		}
		// 현재 블록과 페이지를 구한 다음에 시작페이지 마지막페이지 : 한블록안에 한페이지당
		int startRow = (currentPage - 1) * rowsPerPage + 1;
		int endRow = currentPage * rowsPerPage;

		int totalRows = 0;
		// 메서드를 호출시에 etc의 값이 0이라면 리스트의 총데이터를
		// 1이라면 comm의 총데이터를 가져오는 Dao의 메서드를 따로 받아온다.
		if (etc == 0) {
			totalRows = ShopAdapter.BDAOreturn().getTotalCount();

		} else if (etc == 1) {
			// int no = Integer.parseInt(request.getParameter("no"));
			System.out.println(no);
			totalRows = ShopAdapter.BDAOreturn().getTotalCommCount(no);
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

	// 매장 - 판매등록 - 교환환불 - 환불
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
		List<CalendarVO> list = ShopAdapter.SHDAOreturn().getlistfullcalendar();
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

	@RequestMapping(value = "/ssh_memberDetail_cha", method = RequestMethod.GET)
	public ModelAndView sh_memberDetail_cha(HttpSession session) {

		ModelAndView mav = new ModelAndView();
		int shop_num = Integer.parseInt(session.getAttribute("shop_num")
				.toString());
		System.out.println("----------------------------" + shop_num);
		mav.setViewName("shop/sh_smasterDetail");
		ShopVO vo = ShopAdapter.SHDAOreturn().getvomaster(shop_num);
		mav.addObject("v1", vo);
		return mav;
	}

	// 프로필 수정

	@RequestMapping(value = "/sh_detail_change", method = RequestMethod.POST)
	public ModelAndView sh_memdetail_change(@ModelAttribute ShopVO vo,
			HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String path = session.getServletContext().getRealPath("/master/")
				+ vo.getSelfimg().getOriginalFilename();
		System.out.println(session.getServletContext().getRealPath("/master/"));
		File f = new File(path);
		try {
			vo.getSelfimg().transferTo(f);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		vo.setShop_img(vo.getSelfimg().getOriginalFilename());
		if (vo.getShop_img().equals("")) {
			ShopAdapter.SHDAOreturn().fileinsert2(vo);
			System.out.println(vo.getShop_img());
		} else {
			ShopAdapter.SHDAOreturn().fileinsert(vo);
		}

		System.out.println("자____" + vo.getSelfimg().getOriginalFilename());

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

	// 성별 물건 검색 ajax
	@RequestMapping(value = "sh_AjaxProductSearch")
	public ModelAndView sh_AjaxProductSearch(String shop_num, String key) {
		ModelAndView mav = new ModelAndView("ajax/sh_AjaxProductSearch");

		System.out.println("ajax Test");
		System.out.println("=================");
		System.out.println("shopNum:" + shop_num + "key:" + key);
		HashMap<String, String> map = new HashMap<>();
		map.put("pro_check", key);
		map.put("shop_num", shop_num);

		List<ProductVO> list = ShopAdapter.PDAOreturn().getListProductGender(
				map);
		Iterator<ProductVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		// res.append("<tr>");
		int i = 0;
		while (it.hasNext()) {
			i++;
			ProductVO v = new ProductVO();
			v = it.next();
			res.append("<tr>");
			res.append("<td>" + i + "</td>");
			res.append("<td>").append(v.getPro_name()).append("</td>");
			res.append("<td>").append(v.getPro_code()).append("</td>");
			res.append("<td>").append(v.getSto_size()).append("</td>");
			res.append("<td>").append(v.getSto_amount()).append("</td>");
			res.append("<td>").append(v.getPro_price()).append("</td>");
			res.append("<td>").append(v.getPro_salerate()).append("</td>");

			res.append("<td>");
			res.append("<a href=\"javascript:open_win('product/"
					+ v.getPro_img() + "')\">");
			res.append("<img src='product/" + v.getPro_img()
					+ "' style=\"width: 100px; cursor: hand; \"></a></td>");// 추후
			// 세일추가

			res.append("<td>");
			res.append("<a href=\"javascript:open_win1('barcode/"
					+ v.getPro_barcode() + "')\">");
			res.append("<img src='barcode/" + v.getPro_barcode()
					+ "' style=\"width: 100px;\"></a></td>");
			res.append("</tr>");

		}

		// res.append("</tr>");
		String strString = res.toString();
		System.out.println(strString);
		// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
		mav.addObject("strString", strString);

		return mav;
	}

	   // 판매등록 고객검색콜백
	   @RequestMapping(value = "sh_smang_callback", method = RequestMethod.POST)
	   public ModelAndView sh_smang_callback(String name) {
	      List<MemVO> list = ShopAdapter.SHDAOreturn().getListMember(name); // 검색어에 해당하는 고객 목록
	      String membersForSalesRegister = makeNewHtmlCodes(list.iterator(), "membersForSalesRegister");
	      // 비동기식으로 나타날 html 코드를 작성하여 리턴하는 메서드 호출
	      
	      ModelAndView mav = new ModelAndView("ajax/sh_smang_callback");
	      mav.addObject("cuscont", membersForSalesRegister);
	      return mav;
	      
	   }

	   // 판매등록 상품검색 콜백
	   @RequestMapping(value = "sh_smang_callback2", method = RequestMethod.POST)
	   public ModelAndView sh_smang_callback2(String pname, HttpSession session) {
	      String shop_num = session.getAttribute("shop_num").toString();
	      HashMap<String, String> map = new HashMap<String, String>();
	      map.put("pname", pname);
	      map.put("shop_num", shop_num);
	      List<SmangVO> list = ShopAdapter.SMDAOreturn().getListProduct(map);
	      String productsForSalesRegister = makeNewHtmlCodes(list.iterator(), "productsForSalesRegister");
	      
	      ModelAndView mav = new ModelAndView("ajax/sh_smang_callback2");
	      mav.addObject("procont", productsForSalesRegister);
	      return mav;
	      
	   }

	// ---------재고상품조회-----하진하진---

	@RequestMapping(value = "/sh_productStock_callback", method = RequestMethod.POST)
	public ModelAndView sh_productStock_callback(String pcode, String shopnum) {
		ModelAndView mav = new ModelAndView("ajax/sh_productStock_callback");
		HashMap<String, String> map = new HashMap<>();
		map.put("pname", pcode);
		map.put("shop_num", shopnum);
		List<SmangVO> list = ShopAdapter.SMDAOreturn().getListProduct(map);

		Iterator<SmangVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		int i = 0;
		while (it.hasNext()) {
			i++;
			SmangVO v = new SmangVO();
			v = it.next();
			res.append("<tr>");
			res.append("<td>" + i + "</td>");
			// res.append("<td>").append(v.getShop_name()).append("</td>");
			res.append("<td>").append(v.getPro_code()).append("</td>");
			res.append("<td>").append(v.getSto_size()).append("</td>");
			res.append("<td>").append(v.getSto_amount()).append("</td>");
			res.append("<td>").append(v.getPro_price()).append("</td>");
			res.append("<td><img src='product/" + v.getPro_img()
					+ "' style=\"width: 100px;\"></td>");// 추후 세일추가
			res.append("<td><img src='barcode/" + v.getPro_barcode()
					+ "' style=\"width: 100px;\"></td>");
			res.append("<td>");
			res.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
			res.append("href=\"javascript:proset('");
			res.append(v.getPro_code()).append("', '").append(v.getSto_size());
			res.append("')\">");
			res.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
			res.append("</td>");
			res.append("</tr>");

		}
		String str2 = res.toString();
		mav.addObject("str2", str2);
		return mav;
	}

	@RequestMapping(value = "sh_ajaxsaletable")
	public ModelAndView sh_ajaxsaletable() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/sh_ajaxsaletable");
		return mav;

	}

	// 매장 정산관리 판매현황 -
	@RequestMapping(value = "sh_salesGetTable_ajax", method = RequestMethod.POST)
	public ModelAndView sh_ajaxsaletable(String shop_num, String date_ps) {

		List<SalesCheckVO> list = ShopAdapter.SKDAOreturn().getonday(shop_num,
				date_ps);
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("<tr>");
			res.append("<th>").append(v.getSell_date()).append("</th>");
			res.append("<th>").append(v.getSell_pronum()).append("</th>");
			res.append("<th><img src='product/").append(v.getSell_proimg())
					.append("' style=\"width: 100px;\"></td>");
			res.append("<th>").append(v.getSell_cash()).append("</th>");
			res.append("<th>").append(v.getSell_many()).append("</th>");
			res.append("<th>").append(v.getSell_memnum()).append("</th>");
			res.append("<th>").append(v.getSell_sell()).append("</th>");
			res.append("</tr>");

		}
		System.out.println(res.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/sh_ajaxsaletable");
		mav.addObject("res", res);
		return mav;

	}

	// 샵채팅입력
	@RequestMapping(value = "sh_add_chat", method = RequestMethod.POST)
	public String sh_add_chat(HttpServletRequest request, HttpSession session) {
		String u_id = "";
		String chat = "";
		try {
			u_id = URLDecoder.decode(session.getAttribute("shop_name")
					.toString(), "utf-8");
			chat = URLDecoder.decode(request.getParameter("chat"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String reip = request.getRemoteAddr();
		System.out.println("Log:" + u_id);
		System.out.println("Log:" + chat);
		System.out.println("Log:" + reip);
		ChaVO v = new ChaVO();
		v.setU_id(u_id);
		v.setChat(chat);
		v.setReip(reip);
		v.setImg(session.getAttribute("shop_img").toString());
		ShopAdapter.CHDAOreturn().insertChat(v);
		System.out.println("체크3");
		return "ajax/NewFile";
	}

	// 샵채팅로드
	@RequestMapping(value = "sh_chatload")
	public ModelAndView sh_chatload(HttpServletResponse response,
			HttpSession session) {

		// response.setHeader("cache-control", "no-cache");
		// response.setContentType("text/event-stream");
		String id = (String) session.getAttribute("shop_name");
		List<ChaVO> list = ShopAdapter.CHDAOreturn().getList();
		StringBuffer outs = new StringBuffer();
		// String id = request.getRemoteAddr();
		// outs.append("retry:2000\n");
		String iu = "";
		if (id.equals(list.get(0).getU_id())) {
			iu = "i";
		} else {
			iu = "you";
		}
		outs.append("data:");
		for (ChaVO e : list) {
			if (e.getU_id().equals(id)) {
				outs.append("<li class=\"by-other\">");
				outs.append(
						"<div class=\"avatar pull-right\"><img src=\"master/")
						.append(e.getImg())
						.append("\"style=\"width:40px; height: 40px;\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
				outs.append(e.getCdate());
				outs.append("<span class=\"pull-right\">");
				outs.append(e.getU_id());
				outs.append("</span></div>");
				outs.append(e.getChat());
				outs.append("<div class=\"clearfix\"></div></div></li>");
			} else {
				outs.append("<li class=\"by-me\">");
				outs.append(
						"<div class=\"avatar pull-left\"><img src=\"master/")
						.append(e.getImg())
						.append("\"style=\"width:40px; height: 40px;\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
				outs.append(e.getU_id());
				outs.append("<span class=\"pull-right\">");
				outs.append(e.getCdate());
				outs.append("</span></div>");
				outs.append(e.getChat());
				outs.append("<div class=\"clearfix\"></div></div></li>");
			}

		}
		outs.append("<@>" + iu + "\n\n");
		String str = outs.toString();
		ModelAndView mav = new ModelAndView("ajax/chatload");
		mav.addObject("str", str);
		return mav;
	}

	// 매장 기간별 정산관리 ajax
	@RequestMapping(value = "sh_ajax_outletsale", method = RequestMethod.POST)
	public ModelAndView sh_ajaxoutletsale(String shop_num, String startdate,
			String enddate) {
		ModelAndView mav = new ModelAndView();
		System.out.println(shop_num + ":" + startdate + ":" + enddate);
		List<SalesCheckVO> list = ShopAdapter.SKDAOreturn().getList(shop_num,
				startdate, enddate);
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("<tr>");
			res.append("<th>").append(v.getSell_date()).append("</th>");
			res.append("<th>").append(v.getSell_shopname()).append("</th>");
			res.append("<th>").append(v.getSell_cash()).append("</th>");
			res.append("<th>").append(v.getCount()).append("</th>");
			res.append("</tr>");

		}
		mav.setViewName("ajax/sh_ajaxoutletsale");
		mav.addObject("list", res);
		return mav;
	}

	// 매장 기간별 정산 관리 차트
	@RequestMapping(value = "sh_ajaxoutletChart")
	public ModelAndView sh_ajaxoutletChart(String shop_num, String date_ps,
			String date_ps2) {
		System.out.println("차트 확인" + shop_num);
		ModelAndView mav = new ModelAndView("ajax/sh_ajaxoutletChart");
		List<SalesCheckVO> list = ShopAdapter.SKDAOreturn().getListChart(
				shop_num, date_ps, date_ps2);
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer date = new StringBuffer();
		StringBuffer rescash = new StringBuffer();
		StringBuffer resnum = new StringBuffer();
		date.append("[ ");
		rescash.append("[ ");
		resnum.append("[ ");
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();

			date.append("'" + v.getSell_date()).append("',");
			rescash.append(v.getSell_cash()).append(",");
			resnum.append(v.getCount()).append(",");

		}
		date.append("]");
		rescash.append("]");
		resnum.append("]");
		String res = date.toString() + "@" + rescash.toString() + "@"
				+ resnum.toString();
		System.out.println(res);

		mav.addObject("res", res);
		return mav;
	}

	// 매장 - 판매등록 -환불 교환
	@RequestMapping(value = "sh_ajaxsmangexc")
	public ModelAndView sh_ajaxsmangexc(int sell_sell) {
		System.out.println(sell_sell);
		List<SalesCheckVO> list = ShopAdapter.SMDAOreturn().get_selltable(
				sell_sell);
		Iterator<SalesCheckVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while (it.hasNext()) {
			SalesCheckVO v = new SalesCheckVO();
			v = it.next();
			res.append("<tr>");
			res.append("<th>").append(v.getSell_num()).append("</th>");
			res.append("<th>").append(v.getSell_memname()).append("</th>");
			res.append("<th>").append(v.getSell_pronum()).append("</th>");
			res.append("<th>").append(v.getSell_cash()).append("</th>");
			res.append("<th>").append(v.getSell_many()).append("</th>");
			res.append("<th>")
					.append("<a class=\"btn btn-warning\" data-toggle=\"modal\" href=\"#myModal2\"  onclick=\"sh_managEx("
							+ v.getSell_num() + ")\">환불 </a></th>");
			res.append("</tr>");

		}
		// res.append("</tr>");
		String strString = res.toString();
		System.out.println(strString);
		ModelAndView mav = new ModelAndView("ajax/sh_ajaxsmangexc");
		mav.addObject("list", res);
		return mav;
	}

	// 샵 - 엑셀
	@RequestMapping(value = "sh_excel", method = RequestMethod.POST)
	public ModelAndView sh_excel(String shop_num, String excel_date) {
		ModelAndView mav = new ModelAndView("sh_excel");
		List<SalesCheckVO> list = ShopAdapter.SKDAOreturn().getonday(shop_num,
				excel_date);
		mav.addObject("list", list);
		mav.addObject("excel_date", excel_date);
		return mav;
	}

	@RequestMapping(value = "sh_excel2", method = RequestMethod.POST)
	public ModelAndView sh_excel2(int ex_staff_num, String ex_date_ps,
			String ex_date_ps2, HttpSession session) {

		ModelAndView mav = new ModelAndView("sh_excel2");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("staff_num", String.valueOf(ex_staff_num));
		map.put("date_ps", ex_date_ps);
		map.put("date_ps2", ex_date_ps2);
		map.put("shop_num", session.getAttribute("shop_num").toString());
		System.out.println(session.getAttribute("shop_num").toString());
		List<StaffVO> list = ShopAdapter.STAFFDAOreturn().get_pay(map);
		mav.addObject("list", list);
		mav.addObject("staff_num", ex_staff_num);
		mav.addObject("date_ps", ex_date_ps);
		mav.addObject("date_ps2", ex_date_ps2);
		return mav;
	}

	// 출결 출근
	@RequestMapping(value = "sh_ajax_sh_workData")
	public ModelAndView sh_ajax_sh_workData(int staff_num, String staff_name) {
		int login = ShopAdapter.STAFFDAOreturn().get_login(staff_num);
		int work_staffnum = staff_num;
		String login_time = "-1";
		if (login == 0) {
			login_time = "0";
			ShopAdapter.STAFFDAOreturn().insert_login(work_staffnum);
		} else if (login == 1) {
			login_time = ShopAdapter.STAFFDAOreturn().get_logintime(
					work_staffnum);
			System.out.println();
		}

		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/sh_ajax_sh_workData");
		mav.addObject("res", login_time);
		return mav;
	}

	// 출결 퇴근
	@RequestMapping(value = "sh_ajax_sh_workDataend")
	public ModelAndView sh_ajax_sh_workDataend(int staff_num) {
		ModelAndView mav = new ModelAndView();
		int login = ShopAdapter.STAFFDAOreturn().get_login(staff_num);
		int work_staffnum = staff_num;
		String login_time = "-1";
		if (login == 0) {
			login_time = "0";

		} else if (login == 1) {
			ShopAdapter.STAFFDAOreturn().set_logout(work_staffnum);
			login_time = "1";
		}
		mav.setViewName("ajax/sh_ajax_sh_workData");
		mav.addObject("res", login_time);
		return mav;

	}

	// 급여 계산
	@RequestMapping(value = "sh_ajax_workPay")
	public ModelAndView sh_ajax_workPay(int staff_num, String date_ps,
			String date_ps2, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("staff_num", String.valueOf(staff_num));
		map.put("date_ps", date_ps);
		map.put("date_ps2", date_ps2);
		map.put("shop_num", session.getAttribute("shop_num").toString());
		List<StaffVO> list = ShopAdapter.STAFFDAOreturn().get_pay(map);
		StringBuffer res = new StringBuffer();
		Iterator<StaffVO> it = list.iterator();

		// 합계 급액과 근무 시간을 위한 변수
		int timeres = 0, payres = 0;
		while (it.hasNext()) {
			StaffVO vo = it.next();
			res.append("<tr>");
			res.append("<td>").append(vo.getStaff_name()).append("</td>");
			res.append("<td>").append(vo.getWork_login()).append("</td>");
			res.append("<td>").append(vo.getWork_logout()).append("</td>");
			res.append("<td>").append(vo.getWork_time()).append(" 시간")
					.append("</td>");
			res.append("<td>").append(vo.getWork_time() * 10000).append(" 원")
					.append("</td>");
			res.append("</tr>");
			timeres += vo.getWork_time();
			payres += vo.getWork_time() * 10000;

		}
		res.append("<tr><th>합계</th>");
		res.append("<th>-</th>");
		res.append("<th>-</th>");
		res.append("<th>" + timeres + " 시간</th>");
		res.append("<th>" + payres + " 원</th>");
		res.append("</tr>");

		mav.setViewName("ajax/sh_ajax_sh_workPay");
		mav.addObject("res", res.toString());
		return mav;
	}

	// Androidcon
	@RequestMapping(value = "androidlogin")
	public ModelAndView androidlogin(String id, String pwd) {
		ModelAndView mav = new ModelAndView("ajax/android_loginshop");
		System.out.println("-----------androidlogin--------");
		System.out.println("Request ID : " + id);
		System.out.println("Request PWD : " + pwd);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		Boolean resid = ShopAdapter.SHDAOreturn().checkMasteridpwd(map);
		String res = "로그인에 실패했습니다";
		String key = "false";
		if (resid) {
			res = "로그인 성공 " + id + "님 환영합니다.";
			key = "true";
		}
		System.out.println("Request RES : " + res);
		mav.addObject("res", res);
		mav.addObject("key", key);

		return mav;
	}

	@RequestMapping(value = "androidbarcode")
	public ModelAndView androidbarcode(String id, String barcode) {
		ModelAndView mav = new ModelAndView("ajax/android_loginshop");
		System.out.println("-----------androidbarcode--------");
		System.out.println("Request ID : " + id);
		System.out.println("Request barcode : " + barcode);

		String key = "false";
		// 안드로이드에서 넘어오는 바코드 번호에 매장 ID를 붙여서 매장을 구분한다.
		// (해당 매장에만 보일수 있도록)
		System.out.println("Request barcode : " + id + "<@>" + barcode);
		ShopAdapter.XMLreturn().shbarcode(id + "@@@" + barcode);
		mav.addObject("res", barcode);
		mav.addObject("key", key);

		return mav;
	}

	@RequestMapping(value = "android_barcodeRead")
	public ModelAndView android_barcodeRead() {
		ModelAndView mav = new ModelAndView("ajax/android_barcodeRead");
		String res = new Barcoder().getBarcode();

		res = "data:" + res + "\n\n";
		mav.addObject("str", res);
		System.out.println(res);
		return mav;
	}

	@RequestMapping(value = "sg_member")
	public ModelAndView sg_member(String key) {
		System.out.println("sugest Key:" + key);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/suggestmem");

		ArrayList<String> list = ShopAdapter.SGDAOreturn().getMember(key);
		ShopAdapter.XMLreturn().shSeggest(list);
		// ShopAdapter.XMLreturn()을 읽어 오기 위해서 만든 클래스의 메서드를 호출
		StringBuffer res = new StringBuffer();
		res.append("[");
		String[] suggests = new Suggest().getSuggest(key);
		if (suggests != null) {
			for (int i = 0; i < suggests.length; i++) {
				res.append("\"" + suggests[i] + "\"");
				if (!(i == suggests.length - 1)) {
					res.append(',');
				}
			}
		}
		res.append("]");
		mav.addObject("res", res);
		return mav;
	}

	@RequestMapping(value = "sg_product")
	public ModelAndView sg_product(String key) {
		System.out.println("sugest Key:" + key);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/suggestmem");

		ArrayList<String> list = ShopAdapter.SGDAOreturn().getMember(key);
		ShopAdapter.XMLreturn().shSeggest(list);
		// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
		StringBuffer res = new StringBuffer();
		res.append("[");
		String[] suggests = new Suggest().getSuggest(key);
		if (suggests != null) {
			for (int i = 0; i < suggests.length; i++) {
				res.append("\"" + suggests[i] + "\"");
				if (!(i == suggests.length - 1)) {
					res.append(',');
				}
			}
		}
		res.append("]");
		mav.addObject("res", res);
		return mav;
	}
	
	// html 코드를 작성하여 리턴하는 메서드
	   public String makeNewHtmlCodes(Iterator searchRes,String searchType){
	      // searchRes: DB 검색 결과가 담긴 List 내부의 VO들을 읽기 위한 Iterator
	      // searchType: html 코드가 어떤 내용인지를 의미하는 키워드
	      StringBuffer newHtmlCodes = new StringBuffer();
	      
	      switch(searchType){
	      case "productsByGender":
	         int numberOfProduct = 0;
	         while (searchRes.hasNext()) {
	            numberOfProduct++;
	            ProductVO productInfo = new ProductVO();
	            productInfo = (ProductVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<td>" + numberOfProduct + "</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_name()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_code()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getSto_size()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getSto_amount()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_price()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_salerate()).append("</td>");

	            newHtmlCodes.append("<td>");
	            newHtmlCodes.append("<a href=\"javascript:open_win('product/"
	                  + productInfo.getPro_img() + "')\">");
	            newHtmlCodes.append("<img src='product/" + productInfo.getPro_img()
	                  + "' style=\"width: 100px; cursor: hand; \"></a></td>");
	            newHtmlCodes.append("<td>");
	            newHtmlCodes.append("<a href=\"javascript:open_win1('barcode/"
	                  + productInfo.getPro_barcode() + "')\">");
	            newHtmlCodes.append("<img src='barcode/" + productInfo.getPro_barcode()
	                  + "' style=\"width: 100px;\"></a></td>");
	            newHtmlCodes.append("</tr>");

	         }
	         break;
	      case "membersForSalesRegister":
	         while (searchRes.hasNext()) {
	            MemVO memberInfo = new MemVO();
	            memberInfo = (MemVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<td>").append(memberInfo.getMem_num()).append("</td>");
	            newHtmlCodes.append("<td>").append(memberInfo.getMem_name()).append("</td>");
	            newHtmlCodes.append("<td>").append(memberInfo.getMem_addr()).append("</td>");
	            newHtmlCodes.append("<td>").append(memberInfo.getMem_tel()).append("</td>");
	            newHtmlCodes.append("<td>").append(memberInfo.getMem_mileage()).append("</td>");
	            newHtmlCodes.append("<td>");
	            newHtmlCodes.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
	            newHtmlCodes.append("href=\"javascript:ckcustomer('")
	                  .append(memberInfo.getMem_name()).append("', '");
	            newHtmlCodes.append(memberInfo.getMem_tel()).append("', '");
	            newHtmlCodes.append(memberInfo.getMem_mileage()).append(
	                  "', '" + memberInfo.getMem_num() + "')\">");
	            newHtmlCodes.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
	            newHtmlCodes.append("</td>");
	            newHtmlCodes.append("</tr>");
	         }
	         break;
	      case "productsForSalesRegister":
	         int numberOfProductForSaleRegister = 0;
	         while (searchRes.hasNext()) {
	            numberOfProductForSaleRegister++;
	            SmangVO purchaseInfo = new SmangVO();
	            purchaseInfo = (SmangVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<td>" + numberOfProductForSaleRegister + "</td>");
	            newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">")
	                  .append(purchaseInfo.getShop_name()).append("</td>");
	            newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">")
	                  .append(purchaseInfo.getPro_code()).append("</td>");
	            newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">")
	                  .append(purchaseInfo.getSto_size()).append("</td>");
	            newHtmlCodes.append("<td style=\"width:20%; font-family: '210 나무고딕'; \">")
	                  .append("<input type=\"number\" style=\"width:100%;\" class=\"form-control\" id=\"p_num"
	                        + numberOfProductForSaleRegister
	                        + "\" value=\"1\" max=\""
	                        + purchaseInfo.getSto_amount()
	                        + "\">").append("</td>");
	            newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">").append("<input type=\"number\" id=\"p_orinum"+numberOfProductForSaleRegister+"\" readonly=\"readonly\" class=\"form-control\" value=\""+purchaseInfo.getSto_amount()+"\"").append("</td>");
	            newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">")
	                  .append(purchaseInfo.getPro_price()).append("</td>");
	            newHtmlCodes.append("<td style=\"font-family: '210 나무고딕'; \">")
	                  .append(purchaseInfo.getPro_salerate()).append("</td>");
	            newHtmlCodes.append("<td><img src='product/" + purchaseInfo.getPro_img()
	                  + "' style=\"width: 50px;\"></td>");
	            newHtmlCodes.append("<td><img src='barcode/" + purchaseInfo.getPro_barcode()
	                  + "' style=\"width: 50px;\"></td>");
	            newHtmlCodes.append("<td>");
	            newHtmlCodes.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
	            newHtmlCodes.append("href=\"javascript:insertproduct('")
	                  .append(purchaseInfo.getPro_code()).append("', '");
	            newHtmlCodes.append(purchaseInfo.getSto_size()).append("', '");
	            newHtmlCodes.append(purchaseInfo.getPro_price()).append(
	                  "', '" + numberOfProductForSaleRegister + "','" + purchaseInfo.getPro_salerate() + "')\">");
	            newHtmlCodes.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
	            newHtmlCodes.append("</td>");
	            newHtmlCodes.append("</tr>");
	         }
	         break;
	      case "productsForChangingAmountStock":
	         int numberOfProductForChangingAmountStock = 0;
	         while (searchRes.hasNext()) {
	            numberOfProductForChangingAmountStock++;
	            SmangVO purchaseInfo = new SmangVO();
	            purchaseInfo = (SmangVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<td>" + numberOfProductForChangingAmountStock + "</td>");
	            newHtmlCodes.append("<td>").append(purchaseInfo.getPro_code()).append("</td>");
	            newHtmlCodes.append("<td>").append(purchaseInfo.getSto_size()).append("</td>");
	            newHtmlCodes.append("<td>").append(purchaseInfo.getSto_amount()).append("</td>");
	            newHtmlCodes.append("<td>").append(purchaseInfo.getPro_price()).append("</td>");
	            newHtmlCodes.append("<td><img src='product/" + purchaseInfo.getPro_img()
	                  + "' style=\"width: 100px;\"></td>");
	            newHtmlCodes.append("<td><img src='barcode/" + purchaseInfo.getPro_barcode()
	                  + "' style=\"width: 100px;\"></td>");
	            newHtmlCodes.append("<td>");
	            newHtmlCodes.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
	            newHtmlCodes.append("href=\"javascript:proset('");
	            newHtmlCodes.append(purchaseInfo.getPro_code()).append("', '").append(purchaseInfo.getSto_size());
	            newHtmlCodes.append("')\">");
	            newHtmlCodes.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
	            newHtmlCodes.append("</td>");
	            newHtmlCodes.append("</tr>");
	         }
	         break;
	      case "SalesResults":
	         while (searchRes.hasNext()) {
	            SalesCheckVO salesInfo = new SalesCheckVO();
	            salesInfo = (SalesCheckVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_date()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_pronum()).append("</th>");
	            newHtmlCodes.append("<th><img src='product/").append(salesInfo.getSell_proimg())
	                  .append("' style=\"width: 100px;\"></td>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_cash()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_many()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_memnum()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_sell()).append("</th>");
	            newHtmlCodes.append("</tr>");

	         }
	         break;
	      case "SalesResultsByDate":
	         while (searchRes.hasNext()) {
	            SalesCheckVO salesInfo = new SalesCheckVO();
	            salesInfo = (SalesCheckVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_date()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_shopname()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_cash()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getCount()).append("</th>");
	            newHtmlCodes.append("</tr>");

	         }
	         break;
	      case "SalesResultsByProduct":
	         while (searchRes.hasNext()) {
	            SalesCheckVO salesInfo = new SalesCheckVO();
	            salesInfo = (SalesCheckVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_date()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_proname()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_cash()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getCount()).append("</th>");
	            newHtmlCodes.append("</tr>");
	         }
	         break;
	      case "SalesResultsByShop":
	         while (searchRes.hasNext()) {
	            SalesCheckVO salesInfo = new SalesCheckVO();
	            salesInfo = (SalesCheckVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_date()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_shopname()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_cash()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getCount()).append("</th>");
	            newHtmlCodes.append("</tr>");
	         }
	         break;
	      case "SalesResultsByReceiptNumber":
	         while (searchRes.hasNext()) {
	            SalesCheckVO salesInfo = new SalesCheckVO();
	            salesInfo = (SalesCheckVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_num()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_memname()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_pronum()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_cash()).append("</th>");
	            newHtmlCodes.append("<th>").append(salesInfo.getSell_many()).append("</th>");
	            newHtmlCodes.append("<th>")
	                  .append("<a class=\"btn btn-warning\" data-toggle=\"modal\" href=\"#myModal2\"  onclick=\"sh_managEx("
	                        + salesInfo.getSell_num() + ")\">환불 </a></th>");
	            newHtmlCodes.append("</tr>");

	         }
	         break;
	      case "productsForChangingSaleRate":
	         while (searchRes.hasNext()) {
	            ProductVO productInfo = new ProductVO();
	            productInfo = (ProductVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_num()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_name()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_code()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_price()).append("</td>");
	            newHtmlCodes.append("<td><img src='product/").append(productInfo.getPro_img())
	                  .append("' style=\"width: 100px;\"></td>");
	            newHtmlCodes.append("<td><img src='barcode/").append(productInfo.getPro_barcode())
	                  .append("' style=\"width: 100px;\"></td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_salerate()).append("%</td>");
	            newHtmlCodes.append("</tr>");
	         }
	         break;
	      case "productsForRecommendationToMember":
	         while (searchRes.hasNext()) {
	            ProductVO productInfo = new ProductVO();
	            productInfo = (ProductVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_num()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_name()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_code()).append("</td>");
	            newHtmlCodes.append("<td>").append(productInfo.getPro_price()).append("</td>");
	            newHtmlCodes.append("<td><img src='product/").append(productInfo.getPro_img())
	                  .append("' style=\"width: 100px;\"></td>");
	            newHtmlCodes.append("<td><img src='barcode/").append(productInfo.getPro_barcode())
	                  .append("' style=\"width: 100px;\"></td>");
	            newHtmlCodes.append("<td><div class=\"btn-group\"><a class=\"btn btn-success\" ");
	            newHtmlCodes.append("href=\"javascript:pro_chk('").append(productInfo.getPro_num())
	                  .append("', '");
	            newHtmlCodes.append(productInfo.getPro_code()).append("', '");
	            newHtmlCodes.append(productInfo.getPro_name()).append(
	                  "', '" + productInfo.getPro_price() + "', '" + productInfo.getPro_img()
	                        + "')\">");
	            newHtmlCodes.append("<i class=\"icon_check_alt2\"\"></i></a></div></td>");
	            newHtmlCodes.append("</tr>");
	         }
	         break;
	      case "membersForProductRecommendation":
	         while (searchRes.hasNext()) {
	            MemVO memberInfo = new MemVO();
	            memberInfo = (MemVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<td>").append(memberInfo.getMem_num()).append("</td>");
	            newHtmlCodes.append("<td>").append(memberInfo.getMem_name()).append("</td>");
	            newHtmlCodes.append("<td>").append(memberInfo.getMem_email()).append("</td>");
	            newHtmlCodes.append("<td>").append(memberInfo.getMem_tel()).append("</td>");

	            newHtmlCodes.append("<td><div class=\"btn-group\"><a class=\"btn btn-success\" ");
	            newHtmlCodes.append("href=\"javascript:pro_chkmail('");

	            newHtmlCodes.append(memberInfo.getMem_email()).append(
	                  "', '" + memberInfo.getMem_name() + "')\">");
	            newHtmlCodes.append("<i class=\"icon_check_alt2\"\"></i></a></div></td>");
	            newHtmlCodes.append("</tr>");
	         }
	         break;
	      case "staffForPayManagement":
	         // 합계 급액과 근무 시간을 위한 변수
	         int workingHours = 0, totalPay = 0;
	         while (searchRes.hasNext()) {
	            StaffVO staffInfo = new StaffVO();
	            staffInfo = (StaffVO)searchRes.next();
	            newHtmlCodes.append("<tr>");
	            newHtmlCodes.append("<td>").append(staffInfo.getStaff_name()).append("</td>");
	            newHtmlCodes.append("<td>").append(staffInfo.getWork_login()).append("</td>");
	            newHtmlCodes.append("<td>").append(staffInfo.getWork_logout()).append("</td>");
	            newHtmlCodes.append("<td>").append(staffInfo.getWork_time()).append(" 시간")
	                  .append("</td>");
	            newHtmlCodes.append("<td>").append(staffInfo.getWork_time() * 10000).append(" 원")
	                  .append("</td>");
	            newHtmlCodes.append("</tr>");
	            workingHours += staffInfo.getWork_time();
	            totalPay += staffInfo.getWork_time() * 10000;

	         }
	         newHtmlCodes.append("<tr><th>합계</th>");
	         newHtmlCodes.append("<th>-</th>");
	         newHtmlCodes.append("<th>-</th>");
	         newHtmlCodes.append("<th>" + workingHours + " 시간</th>");
	         newHtmlCodes.append("<th>" + totalPay + " 원</th>");
	         newHtmlCodes.append("</tr>");
	         break;
	      }
	      
	      return newHtmlCodes.toString();
	      
	   }
	

}
