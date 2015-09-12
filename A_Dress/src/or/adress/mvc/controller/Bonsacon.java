package or.adress.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.validation.Valid;

import mail.SendConfirmJoiningMail;
import mail.SendRecommendProductMail;
import mail.SendRefuseJoiningMail;
import or.adress.mvc.service.BonsaService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import temp.BonAdapter;
import vo.BoardVO;
import vo.CalendarVO;
import vo.ChaVO;
import vo.CommVO;
import vo.MemVO;
import vo.PageVO;
import vo.ProductVO;
import vo.SaleVO;
import vo.SalesCheckVO;
import vo.ShopHotkeyVO;
import vo.ShopVO;
import vo.StockVO;

@Controller
public class Bonsacon {
	@Autowired
	private BonsaService bservice;
	@Autowired
	private BonAdapter BonAdapter;
	   // 메일 전송 위한 클래스
	   @Autowired
	   private SendConfirmJoiningMail sendConfirmJoiningMail;
	   @Autowired
	   private SendRefuseJoiningMail sendRefuseJoiningMail;
	   @Autowired
	   private SendRecommendProductMail sendRecommendProductMail;
	// 자기매장 재고 신청 나만보기
	//yes누르면  여기
		@RequestMapping(value = "bon_productSale_1")
		public ModelAndView SSlist(int req_num) {
			bservice.Aa(req_num);
			return bon_productSmang();
		}
	
	//no누르면 여기
	@RequestMapping(value = "bon_productSale_2")
	public ModelAndView SSlist2(int req_num) {
		BonAdapter.STDAOreturn().Stockreqno(req_num);
		return bon_productSmang();
	}
	
	@RequestMapping(value = "/bon_index")
	public ModelAndView bon_index(HttpSession session) {
		// /////////////임시세션
		// session.setAttribute("bon_id", "yoon");
		// session.setAttribute("bon_name", "윤홍기");
		// ///////////////

		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_index");
		return mav;
	}

	// 본사 업무관리 공지사항 cmd=bwork subcmd=notice
	@RequestMapping(value = "/bon_workNotice", method = RequestMethod.POST)
	public ModelAndView bon_workNotice(int page) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_workNotice");

		// 페이징처리 (게시판)
		PageVO pageInfo = pageProcess(page, 0, 0);
		HashMap<String, Integer> map = new HashMap<>();
		map.put("begin", pageInfo.getStartRow());
		map.put("end", pageInfo.getEndRow());
		//
		List<BoardVO> list = BonAdapter.BDAOreturn().getList(map);

		mav.addObject("pageInfo", pageInfo);
		mav.addObject("list", list);
		return mav;
	}

	// 본사 공지사항 작성폼 cmd=bwork subcmd=in
	@RequestMapping(value = "/bon_noticein", method = RequestMethod.POST)
	public ModelAndView bon_workNoticeIn(Map<String,Object> model) {
		BoardVO board =  new BoardVO();
		model.put("boardForm",board);
		ModelAndView mav = new ModelAndView("bonsa/bon_workNoticeWriter");
		return mav;
	}

	// 본사 공지사항 디테일 cmd=bwork subcmd=boardDetail
	//transaction
	@RequestMapping(value = "/bon_workNoticedetail", method = RequestMethod.POST)
	public ModelAndView bon_workNoticedetail(int no, int page,Map<String, Object> model) {
		CommVO vo = new CommVO();
		vo.setComm_bonum(String.valueOf(no));
		model.put("commin",vo);
		
		ModelAndView mav = new ModelAndView("bonsa/bon_workNoticeDetail");
		// 페이징처리 (댓글)
		PageVO pageInfo = pageProcess(page, no, 1);
		HashMap<String, Integer> map = new HashMap<>();
		map.put("begin", pageInfo.getStartRow());
		map.put("end", pageInfo.getEndRow());
		//
		map.put("no", no);
		System.out.println("시작" + pageInfo.getStartRow());
		System.out.println("끝" + pageInfo.getEndRow());
		List<CommVO> clist = BonAdapter.BDAOreturn().getCommList(map);
		BoardVO v = BonAdapter.BDAOreturn().getDetail(no);
		v.setPath("upload/" + v.getPath());
		System.out.println(v.getPath());
		mav.addObject("clist", clist);
		mav.addObject("v", v);
		mav.addObject("pageInfo", pageInfo);
		return mav;
	}

	// 본사 공지사항 글쓰기
	@RequestMapping(value = "/bon_workNoticewrite", method = RequestMethod.POST)
	public ModelAndView bon_workNoticewrite(
			@Valid @ModelAttribute("boardForm") BoardVO vo, 
			BindingResult result,Map<String, Object> model,
			HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		if(result.hasErrors()){
			System.out.println("여긴 에러");
			mav.setViewName("bonsa/bon_workNoticeWriter");
			return mav;
		}else{
			vo.setWriter(session.getAttribute("bon_id").toString());
			String s = vo.getContent();
			String filename = "";
			String content = "";
			System.out.println("인서트전");
			BonAdapter.BDAOreturn().insert(vo);
			System.out.println("인서트후");
		return bon_workNotice(1);
		}
	}

	// 본사 공지사항 파일업로드 cmd=bwork subcmd=ckBoard
	@RequestMapping(value = "/bon_ckboard", method = RequestMethod.POST)
	public ModelAndView bon_ckboard(BoardVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String path = session.getServletContext().getRealPath("/upload/")
				+vo.getUpload().getOriginalFilename();
		MultipartFile upload = vo.getUpload();
		System.out.println(path);
		File f = new File(path.toString());
		try {
			upload.transferTo(f);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		// chk callback설정 : Ajax로 넘어온 요청을 response 해주기 위한 설정
		//String callback = request.getParameter("CKEditorFuncNum");
		String fileUrl = "upload/" + vo.getUpload().getOriginalFilename();// url경로
		mav.addObject("callback", vo.getCKEditorFuncNum());
		mav.addObject("fileUrl", fileUrl);
		mav.setViewName("ajax/callback");
		return mav;
	}

	// 본사 공지사항 삭제 cmd = bwork subcmd=delete
	@RequestMapping(value = "/bon_noticedelte", method = RequestMethod.POST)
	public ModelAndView bon_noticedelte(int no, String writer,
			HttpSession session) {
		String bon_id = session.getAttribute("bon_id").toString();

		if (bon_id.equals(writer)) {

			BonAdapter.BDAOreturn().delete(no);

		}
		return bon_workNotice(1);
	}

	// 본사 공지사항 댓글 삭제 cmd=bwork subcmd=commdelete
	@RequestMapping(value = "/bon_commdelete")
	public ModelAndView bon_commdelete(int no, int bo_num, String writer,
			int page, HttpSession session, Map<String, Object> model) {
		String bon_id = session.getAttribute("bon_id").toString();

		if (bon_id.equals(writer)) {

			BonAdapter.BDAOreturn().deleteComm(no);
		}
		return bon_workNoticedetail(bo_num, page, model);
	}

	// 본사 공지사항 댓글 입력 cmd=bwork subcmd=boardDetail childcmd=in
	@RequestMapping(value = "/bon_commin", method = RequestMethod.POST)
	public ModelAndView bon_commin(@Valid @ModelAttribute("commin") CommVO vo, BindingResult result,
			Map<String, Object> model, HttpSession session, int page, int no) {
		ModelAndView mav =  new ModelAndView();
		if(result.hasErrors()){
			System.out.println("디테일 댓글 에러::");
			mav.setViewName("bonsa/bon_workNoticeDetail");
			
			PageVO pageInfo = pageProcess(page, no, 1);
			HashMap<String, Integer> map = new HashMap<>();
			map.put("begin", pageInfo.getStartRow());
			map.put("end", pageInfo.getEndRow());
			//
			map.put("no", no);
			System.out.println("시작" + pageInfo.getStartRow());
			System.out.println("끝" + pageInfo.getEndRow());
			List<CommVO> clist = BonAdapter.BDAOreturn().getCommList(map);
			BoardVO v = BonAdapter.BDAOreturn().getDetail(no);
			v.setPath("upload/" + v.getPath());
			System.out.println(v.getPath());
			mav.addObject("clist", clist);
			mav.addObject("v", v);
			mav.addObject("pageInfo", pageInfo);
			
			
			return mav;
//			return bon_workNoticedetail(Integer.parseInt(vo.getComm_bonum()), 1, model);
		}else{
			
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("no", vo.getComm_bonum());
			map.put("cont", vo.getComm_cont());
			map.put("writer", session.getAttribute("bon_id").toString());
			BonAdapter.BDAOreturn().insertComm(map);
			return bon_workNoticedetail(Integer.parseInt(vo.getComm_bonum()), 1, model);
		}
		
	}

	// 본사 매장관리 매장가입
	// 핫키까지 됐다!!!!
	@RequestMapping(value = "/bon_shopJoin")
	public ModelAndView bon_shopJoin() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_shopJoin");
		mav.addObject("list", BonAdapter.SHDAOreturn().getListRequestShop());

		return mav;
	}
	
	// 핫키 Yes 클릭시
	   // 완료
	   // 본사가 매장 회원 가입 요청을 승인했을 때(hotkey 발급) 가입 승인 메일 전송
	   @RequestMapping(value = "/bon_shopJoinOK")
	   public ModelAndView bon_shopJoinOK(@RequestParam HashMap<String, String> params) {
	          // 메일 전송하는 메서드 호출
	         // params에는 클라이언트로부터 가져온 정보들(메일 주소, 이름, 핫키, 핫키의 번호)이 있다.
	         // 메일 주소는 실제 메일을 전송하는 작업을 할 때 필요하고, 이름과 핫키는 메일의 내용을 채울 때 필요하기 때문에
	         // 메서드 호출 시 파라미터로 넘겨준다.
	         sendConfirmJoiningMail.sendMailProcess(params);
	         
	         String hotkey_status = "Yes";
	         int key_num = Integer.parseInt(params.get("key_num"));
	         ShopHotkeyVO v = new ShopHotkeyVO();
	           v.setKey_num(key_num);
	           v.setKey_msg(hotkey_status);
	           BonAdapter.BONDAOreturn().deletehotkey(v);
	           return bon_shopJoin();      
	   }
	
	// 핫키 NO 클릭시
	   // 완료
	   @RequestMapping(value = "/bon_shopJoinNO")
	   public ModelAndView bon_shopJoinNO(@RequestParam HashMap<String, String> params) {
	      // 메일 전송
	      sendRefuseJoiningMail.sendMailProcess(params);
	      
	      ShopHotkeyVO v = new ShopHotkeyVO();
	        String m = "No";
	        int key_num = Integer.parseInt(params.get("key_num"));
	        v.setKey_num(key_num);
	        v.setKey_msg(m);
	        BonAdapter.BONDAOreturn().deletehotkey(v);
	        
	        return bon_shopJoin();
	        
	   }
	
//	// 본사 상품관리 - 상품재고관리
//	@RequestMapping(value = "/bon_productSale")
//	public ModelAndView bon_productSale() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("bonsa/bon_productSale");
//		return mav;
//	}
	
	
	
	// 본사 상품관리 - 상품세일
	@RequestMapping(value = "/bon_productDiscount")
	public ModelAndView bon_productDiscount() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_productDiscount");
		return mav;
	}

	// 본사 상품관리 -상품세일 -세일적용
	@RequestMapping(value = "/godiscount", method=RequestMethod.POST)
	public ModelAndView godiscount(SaleVO vo, HttpSession session) {
		vo.setSale_writer(session.getAttribute("bon_id").toString());
		vo.setSale_sub("<세일공지>"+vo.getSale_begin()+"~"+vo.getSale_end());
		bservice.acceptsalerate(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_productDiscount");
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

	// 본사 매장관리 매장조회
	@RequestMapping(value = "/bon_shopCheck")
	public ModelAndView bon_shopCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_shopCheck");
		List<ShopVO> list = BonAdapter.SHDAOreturn().getshopList();
		mav.addObject("list", list);
		System.out.println(list.get(0).getShop_tel());
		return mav;
	}

	// 본사 상품관리 상품추가
	@RequestMapping(value = "/bon_productAdd", method = RequestMethod.POST)
	public ModelAndView bon_productAdd(ProductVO vo) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_productAdd");

		return mav;
	}

	// 본사 상품관리 추가버튼
	@RequestMapping(value = "/bon_productAdding", method = RequestMethod.POST)
	public ModelAndView bon_productAdding(@ModelAttribute ProductVO vo,
			HttpSession session) {
		System.out.println(vo.getPro_name());
		ModelAndView mav = new ModelAndView();
		String path = session.getServletContext().getRealPath("/product/")
				+ vo.getPimg().getOriginalFilename();

		System.out.println(path);
		File f = new File(path);
		try {
			vo.getPimg().transferTo(f);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		vo.setPro_img(vo.getPimg().getOriginalFilename());
		

		String path2 = session.getServletContext().getRealPath("/barcode/")
				+ vo.getBimg().getOriginalFilename();

		System.out.println(path2);
		File f2 = new File(path2);
		try {
			vo.getBimg().transferTo(f2);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		vo.setPro_barcode(vo.getBimg().getOriginalFilename());

		mav.setViewName("bonsa/bon_productAdd");
		//BonAdapter.PDAOreturn().insert(vo);
		bservice.bon_productAdding(vo);
		return mav;
	}
	
	//본사 매장 재고 관리
	   @RequestMapping(value = "/bon_productSmang")
	   public ModelAndView bon_productSmang() {
	   ModelAndView mav = new ModelAndView();
	   mav.setViewName("bonsa/bon_productSmang");
	   List<StockVO> list = BonAdapter.STDAOreturn().Stocklist();
	   mav.addObject("list",list);
	   return mav;
	   }
	   
	//상품코드분류표 팝업창
	   @RequestMapping(value="popup")
	   public String popup(){
		   return "ajax/popup";
	   }

	
	
	// 페이징처리
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
			totalRows = BonAdapter.BDAOreturn().getTotalCount();

		} else if (etc == 1) {
			// int no = Integer.parseInt(request.getParameter("no"));
			System.out.println(no);
			totalRows = BonAdapter.BDAOreturn().getTotalCommCount(no);
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

	private String getFileName(Part part) {
		String fileName = "";
		String header = part.getHeader("content-disposition");
		System.out.println(header);
		String[] elements = header.split(";");
		for (String element : elements) {
			if (element.trim().startsWith("filename")) {
				fileName = element.substring(element.indexOf('=') + 1);
				fileName = fileName.trim().replace("\"", "");
			}
		}
		return fileName;
	}
	// bonsa_fullcalendar Page
		@RequestMapping(value = "/bon_fullcalendar")
		public ModelAndView bon_fullcalendar() {
			ModelAndView mav = new ModelAndView();
			List<CalendarVO> list = BonAdapter.BONDAOreturn().getlistfullcalendar();
			Iterator<CalendarVO> it = list.iterator();
			StringBuffer res = new StringBuffer();
		
			while (it.hasNext()) {
				CalendarVO v= new CalendarVO();
				v = it.next();
				res.append("{title:'").append(v.getCalen_num()+"/"+v.getCalen_content()).append("',");
				res.append("start:'").append(v.getCalen_start()).append("',");
				res.append("end:'").append(v.getCalen_end()).append("',");
				res.append("color:'").append(v.getCalen_color()).append("'}");
				if(it.hasNext()){
					res.append(",");
				}
			}
			mav.setViewName("bonsa/bon_fullcalendar");
			
			mav.addObject("list", res.toString());
			return mav;
		}
		
		//본사 화상채팅 
		@RequestMapping(value="bonsaWebRTC")
		public ModelAndView bonsaWebRTC(String shop_num){
			ModelAndView mav = new ModelAndView("bonsa/bon_videochatting");
			mav.addObject("test", "GeniusKCP"+shop_num);
			return mav;
			
		}
		
		
		//고객 상품 추천 
		@RequestMapping(value="bon_precommend")
		public ModelAndView bon_precommend(){
			ModelAndView mav = new ModelAndView();
			mav.setViewName("bonsa/bon_precommend");
			return mav;
		}
		
		
		//  업무관리 - 화상채팅
		@RequestMapping(value="bon_conference")
		public ModelAndView bon_conference(){
			ModelAndView mav = new ModelAndView();
			mav.setViewName("bonsa/bon_workconference");
			List<ShopVO> list = BonAdapter.SHDAOreturn().getshopList();
			mav.addObject("list", list);
			System.out.println(list.get(0).getShop_tel());
			return mav;
		}
		

		// 본사채팅입력
		@RequestMapping(value = "bon_add_chat", method = RequestMethod.POST)
		public String bon_add_chat(HttpServletRequest request, HttpSession session) {
			String u_id = "";
			String chat = "";
			try {
				u_id = URLDecoder.decode(session.getAttribute("bon_id").toString(),
						"utf-8");
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
			v.setImg("A-4.JPG");
			BonAdapter.CHDAOreturn().insertChat(v);
			System.out.println("체크3");
			return "ajax/NewFile";
		}
		
		// 본사채팅로드
		@RequestMapping(value = "/bon_chatload")
		public ModelAndView bon_chatload(HttpServletResponse response,
				HttpSession session) {

			// response.setHeader("cache-control", "no-cache");
			// response.setContentType("text/event-stream");
			String id = (String) session.getAttribute("bon_id");
			List<ChaVO> list = BonAdapter.CHDAOreturn().getList();
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
					// outs.append("<div class=\"avatar pull-right\">").append(e.getU_id()).append("<div class=\"chat-content\"><div class=\"chat-meta\">");
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
		
		

		// 본사 - 정산관리 - 품목별 매출순위 - 테이블 검색
		@RequestMapping(value = "bon_ajaxproductsmang", method = RequestMethod.POST)
		public ModelAndView bon_ajaxproductsale(String pro_code, String startdate,
				String enddate) {
			System.out.println(pro_code + startdate + enddate);
			List<SalesCheckVO> list = BonAdapter.SKDAOreturn().getProductList(pro_code, startdate,
					enddate);
			Iterator<SalesCheckVO> it = list.iterator();
			StringBuffer res = new StringBuffer();
			while (it.hasNext()) {
				SalesCheckVO v = new SalesCheckVO();
				v = it.next();
				res.append("<tr>");
				res.append("<th>").append(v.getSell_date()).append("</th>");
				res.append("<th>").append(v.getSell_proname()).append("</th>");
				res.append("<th>").append(v.getSell_cash()).append("</th>");
				res.append("<th>").append(v.getCount()).append("</th>");
				res.append("</tr>");
				System.out.println(v.getDate());
			}
			// res.append("</tr>");
			String strString = res.toString();
			System.out.println(strString);
			// ----
			ModelAndView mav = new ModelAndView();
			mav.setViewName("ajax/bon_ajaxproductsale");
			mav.addObject("list", res);
			return mav;
		}

		// 본사 - 정산관리 - 품목별 매출순위 - 차트
		@RequestMapping(value = "bon_ajaxproductChart", method = RequestMethod.POST)
		public ModelAndView bon_ajaxproductChart(String pro_code, String startdate,
				String enddate) {
			System.out.println(pro_code + startdate + enddate);
			List<SalesCheckVO> list = BonAdapter.SKDAOreturn().getProductList(pro_code, startdate,
					enddate);
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

			ModelAndView mav = new ModelAndView();
			mav.setViewName("ajax/bon_ajaxproductChart");
			mav.addObject("res", res);
			return mav;
		}

		// 본사 - 정산관리 - 대리점별 매출순위 - 검색
		@RequestMapping(value = "bon_ajaxoutletsale", method = RequestMethod.POST)
		public ModelAndView bon_ajaxoutletsale(String shop_name, String startdate,
				String enddate) {
			System.out.println(shop_name + startdate + enddate);
			List<SalesCheckVO> list = BonAdapter.SKDAOreturn().get_shopList(shop_name, startdate,
					enddate);
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
			// res.append("</tr>");
			String strString = res.toString();
			System.out.println(strString);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("ajax/bon_ajaxoutletsale");
			mav.addObject("res", res);
			return mav;
		}

		// 본사 - 정산관리 - 대리점별 매출순위 -챠트
		// bon_ajaxoutletChart
		@RequestMapping(value = "bon_ajaxoutletChart", method = RequestMethod.POST)
		public ModelAndView bon_ajaxoutletChart(String shop_name, String startdate,
				String enddate) {
			System.out.println("챠트" + shop_name + startdate + enddate);
			List<SalesCheckVO> list = BonAdapter.SKDAOreturn().get_shopList(shop_name, startdate,
					enddate);
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

			ModelAndView mav = new ModelAndView();
			mav.setViewName("ajax/bon_ajaxoutletChart");
			mav.addObject("res", res);
			return mav;
		}

		// 본사 매장조회 상세보기
		@RequestMapping(value = "bon_shopdetailmap", method = RequestMethod.POST)
		public ModelAndView bon_shopdetailmap(int shop_num) {
			// int shop_num = Integer.parseInt(request.getParameter("shop_num"));
			System.out.println("-----------bon_shopdetailmaps.jsp---------");
			System.out.println("Request SHOP_NUM : " + shop_num);

			ShopVO res = BonAdapter.BONDAOreturn().detailmap(shop_num);

			// System.out.println("Request RES1 : " + res.getName());
			// System.out.println("Request RES2 : " + res.getMaster());
			// System.out.println("Request RES3 : " + res.getAdr());
			String result = res.getShop_name() + "/" + res.getShop_master() + "/"
					+ res.getShop_adr();
			ModelAndView mav = new ModelAndView("ajax/bon_shopdetailmap");
			mav.addObject("result", result);
			return mav;
		}
		

		// 본사 세일 - 상품조회
		@RequestMapping(value = "bpd_chk", method = RequestMethod.POST)
		public ModelAndView bpd_chk(int pro_code) {
			List<ProductVO> list = BonAdapter.PDAOreturn().getListProduct_bon3(pro_code);
			Iterator<ProductVO> it = list.iterator();
			StringBuffer res = new StringBuffer();
			int i = 1;
			while (it.hasNext()) {
				ProductVO vo = new ProductVO();
				vo = it.next();
				res.append("<tr>");
				res.append("<td>").append(vo.getPro_num()).append("</td>");
				res.append("<td>").append(vo.getPro_name()).append("</td>");
				res.append("<td>").append(vo.getPro_code()).append("</td>");
				res.append("<td>").append(vo.getPro_price()).append("</td>");
				res.append("<td><img src='product/").append(vo.getPro_img())
						.append("' style=\"width: 100px;\"></td>");
				res.append("<td><img src='barcode/").append(vo.getPro_barcode())
						.append("' style=\"width: 100px;\"></td>");
				res.append("<td>").append(vo.getPro_salerate()).append("%</td>");
				res.append("</tr>");
			}
			String str = res.toString();
			ModelAndView mav = new ModelAndView("ajax/bpd_chk_callback");
			mav.addObject("str", str);
			return mav;
		}

		// 본사 - Full Calendar
		@RequestMapping(value = "bon_ajaxcalendar", method = RequestMethod.POST)
		public ModelAndView bon_ajaxfullcalendar(CalendarVO vo) {
			ModelAndView mav = new ModelAndView();
			System.out.println("START :: " + vo.getCalen_start());
			System.out.println("END:: " + vo.getCalen_end());
			BonAdapter.BONDAOreturn().insertfullcalendar(vo);
			mav.setViewName("ajax/bon_ajaxfullcalendar");
			mav.addObject("res", "Success");
			return mav;
		}
		
		


		// bon_deletecalendar
		@RequestMapping(value = "bon_ajaxdeletecalendar", method = RequestMethod.POST)
		public ModelAndView bon_ajaxdeletecalendar(CalendarVO vo) {
			ModelAndView mav = new ModelAndView("bonsa/bon_fullcalendar");
			bservice.bon_deletecalendar(vo);
			return mav;
		}

		// 본사 추천 - 상품추천 - 상품 검색
		@RequestMapping(value = "bon_precommand", method = RequestMethod.POST)
		public ModelAndView bon_precommand(int pro_code) {
			List<ProductVO> list = BonAdapter.PDAOreturn().getListProduct_bon3(pro_code);
			Iterator<ProductVO> it = list.iterator();
			StringBuffer res = new StringBuffer();
			int i = 1;
			while (it.hasNext()) {
				ProductVO vo = new ProductVO();
				vo = it.next();
				res.append("<tr>");
				res.append("<td>").append(vo.getPro_num()).append("</td>");
				res.append("<td>").append(vo.getPro_name()).append("</td>");
				res.append("<td>").append(vo.getPro_code()).append("</td>");
				res.append("<td>").append(vo.getPro_price()).append("</td>");
				res.append("<td><img src='product/").append(vo.getPro_img())
						.append("' style=\"width: 100px;\"></td>");
				res.append("<td><img src='barcode/").append(vo.getPro_barcode())
						.append("' style=\"width: 100px;\"></td>");
				res.append("<td><div class=\"btn-group\"><a class=\"btn btn-success\" ");
				res.append("href=\"javascript:pro_chk('").append(vo.getPro_num())
						.append("', '");
				res.append(vo.getPro_code()).append("', '");
				res.append(vo.getPro_name()).append(
						"', '" + vo.getPro_price() + "', '" + vo.getPro_img()
								+ "')\">");
				res.append("<i class=\"icon_check_alt2\"\"></i></a></div></td>");
				res.append("</tr>");
			}
			String str = res.toString();
			ModelAndView mav = new ModelAndView("ajax/bpd_chk_callback");
			mav.addObject("str", str);
			return mav;
		}

		// 본사 추천 - 상품 추천 - 맴버 찾기
		@RequestMapping(value = "bon_precommandsearchmem")
		public ModelAndView bon_precommandsearchmem(String pro_code) {
			ModelAndView mav = new ModelAndView("ajax/bon_precommandsearchmem");
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("pro_code", pro_code);
			String select = pro_code.substring(4, 5);
			System.out.println("잘라낸 코드 넘버:" + select);
			StringBuffer res = new StringBuffer();
			map.put("pre_code", "___" + select);
			List<MemVO> list = BonAdapter.MEMDAOreturn().presearchmem(map);
			Iterator<MemVO> it = list.iterator();
			while (it.hasNext()) {
				MemVO vo = new MemVO();
				vo = it.next();
				res.append("<tr>");
				res.append("<td>").append(vo.getMem_num()).append("</td>");
				res.append("<td>").append(vo.getMem_name()).append("</td>");
				res.append("<td>").append(vo.getMem_email()).append("</td>");
				res.append("<td>").append(vo.getMem_tel()).append("</td>");

				res.append("<td><div class=\"btn-group\"><a class=\"btn btn-success\" ");
				res.append("href=\"javascript:pro_chkmail('");

				res.append(vo.getMem_email()).append(
						"', '" + vo.getMem_name() + "')\">");
				res.append("<i class=\"icon_check_alt2\"\"></i></a></div></td>");
				res.append("</tr>");

			}
			mav.addObject("res", res);

			return mav;
		}

		// 고객에게 상품 추천 메일 전송
		   @RequestMapping(value = "/bon_precommandsearchmail")
		   public void bon_precommandsearchmail(@RequestParam HashMap<String, String> params) {
		      sendRecommendProductMail.sendMailProcess(params);
		   }
		


		// 상품 추가 상품 코드 유효성 검사
		@RequestMapping(value = "bo_codechk")
		public ModelAndView bo_codechk(String pro_code) {
			ModelAndView mav = new ModelAndView("ajax/bon_codechk");
			System.out.println(pro_code);
			int count = BonAdapter.PDAOreturn().pro_codechk(pro_code);
			mav.addObject("res", count);
			return mav;
		}
				
}
