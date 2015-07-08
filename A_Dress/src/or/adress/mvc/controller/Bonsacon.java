package or.adress.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import or.adress.mvc.dao.BoardDao;
import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.ShopDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import vo.BoardVO;
import vo.CommVO;
import vo.PageVO;
import vo.ProductVO;
import vo.ShopVO;

@Controller
public class Bonsacon {
	@Autowired
	private BoardDao bdao;
	@Autowired
	private ShopDao shdao;
	@Autowired
	private ProductDao pdao;

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
		List<BoardVO> list = bdao.getList(map);

		mav.addObject("pageInfo", pageInfo);
		mav.addObject("list", list);
		return mav;
	}

	// 본사 공지사항 작성폼 cmd=bwork subcmd=in
	@RequestMapping(value = "/bon_noticein", method = RequestMethod.POST)
	public ModelAndView bon_workNoticeIn() {
		ModelAndView mav = new ModelAndView("bonsa/bon_workNoticeWriter");
		return mav;
	}

	// 본사 공지사항 디테일 cmd=bwork subcmd=boardDetail
	//transaction
	@RequestMapping(value = "/bon_workNoticedetail", method = RequestMethod.POST)
	public ModelAndView bon_workNoticedetail(int no, int page) {
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
		List<CommVO> clist = bdao.getCommList(map);
		BoardVO v = bdao.getDetail(no);
		v.setPath("upload/" + v.getPath());
		System.out.println(v.getPath());
		mav.addObject("clist", clist);
		mav.addObject("v", v);
		mav.addObject("pageInfo", pageInfo);
		return mav;
	}

	// 본사 공지사항 글쓰기
	@RequestMapping(value = "/bon_workNoticewrite", method = RequestMethod.POST)
	public ModelAndView bon_workNoticewrite(BoardVO vo, HttpSession session) {
		vo.setWriter(session.getAttribute("bon_id").toString());
		String s = vo.getContent();
		String filename = "";
		String content = "";
		String[] str = s.split(">");
		for (String e : str) {
			System.out.println(e);
			if (!e.startsWith("<")) {
				System.out.println("<가아닌가    " + e);
				try {
					content = e.substring(0, e.indexOf("<"));
					break;
				} catch (Exception ee) {
					ee.printStackTrace();
					break;
				}

			}
		}
		String[] ff = str[1].split("\"");

		System.out.println("---------------------------------------");
		for (String e : ff) {
			System.out.println(e);
			if (e.startsWith("upload")) {
				filename = e.substring(7);
			}
		}
		System.out.println("----------------------------");
		System.out.println("파일명"+filename);
		System.out.println(content);
		vo.setContent(content);
		vo.setPath(filename);
		System.out.println("인서트전");
		bdao.insert(vo);
		System.out.println("인서트후");
		return bon_workNotice(1);
	}

	// 본사 공지사항 파일업로드 cmd=bwork subcmd=ckBoard
	@RequestMapping(value = "/bon_ckboard", method = RequestMethod.POST)
	public ModelAndView bon_ckboard(BoardVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String path = session.getServletContext().getRealPath("/upload/")
				+vo.getUpload().getOriginalFilename();
		MultipartFile upload = vo.getUpload();
		System.out.println(path);
		File f = new File(path);
		try {
			vo.getUpload().transferTo(f);

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

			bdao.delete(no);

		}
		return bon_workNotice(1);
	}

	// 본사 공지사항 댓글 삭제 cmd=bwork subcmd=commdelete
	@RequestMapping(value = "/bon_commdelete")
	public ModelAndView bon_commdelete(int no, int bo_num, String writer,
			int page, HttpSession session) {
		String bon_id = session.getAttribute("bon_id").toString();

		if (bon_id.equals(writer)) {

			bdao.deleteComm(no);
		}
		return bon_workNoticedetail(bo_num, page);
	}

	// 본사 공지사항 댓글 입력 cmd=bwork subcmd=boardDetail childcmd=in
	@RequestMapping(value = "/bon_commin", method = RequestMethod.POST)
	public ModelAndView bon_commin(String comm_bonum, String comm_cont,
			HttpSession session) {
		int page = 1;
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("no", comm_bonum);
		map.put("cont", comm_cont);
		map.put("writer", session.getAttribute("bon_id").toString());
		bdao.insertComm(map);
		return bon_workNoticedetail(Integer.parseInt(comm_bonum), 1);
	}

	// 본사 매장관리 매장가입
	// 핫키까지 됐다!!!!
	@RequestMapping(value = "/bon_shopJoin")
	public ModelAndView bon_shopJoin() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_shopJoin");
		mav.addObject("list", shdao.getListRequestShop());

		return mav;
	}
	
	// 핫키 Yes 클릭시
	// 완료
	@RequestMapping(value = "/bon_shopJoinOK")
	public ModelAndView bon_shopJoinOK(String mail, String name, String hotkey) {
		
//		if(subcmd.equals("ok")){
//			// 메일 관련 정보
//			String mail = request.getParameter("mail");
//			String name = request.getParameter("name");
//			String hotkey = request.getParameter("hotkey");
			
			System.out.println("--------여기는 YES 메일 보내는 곳--------");
			System.out.println("MAIL : "+mail);
			System.out.println("NAME : "+name);
			System.out.println("HOTKEY : "+hotkey);
			
			String host = "smtp.naver.com";
	        final String username = "ama949@naver.com"; // 보내는 사람 네이버  ID
	        final String password = "skdltm11a"; // 비밀번호
	        int port=465;
	         
	        // 메일 내용
	        String recipient = mail; // 받는 사람 E-Mail
	        String subject = "APOS - 매장 가입을 환영합니다";
	        String body = "\""+name+"\"님" + "환영합니다~"+"\n\r"+"Hotkey : "+hotkey;
	        
	        
	        Properties props = System.getProperties();
	         
	         
	        props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", port);
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.ssl.enable", "true");
	        props.put("mail.smtp.starttls.enable","true");  
	        props.put("mail.smtp.ssl.trust", host);
	          
	        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	            String un=username;
	            String pw=password;
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(un, pw);
	            }
	        });
	        session.setDebug(true); //for debug
         
	        Message msg = new MimeMessage(session);
	        try {
				msg.setFrom(new InternetAddress(username));
				msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
				msg.setSubject(subject);
				msg.setSentDate(new Date());
				// 파일 첨부시에는 BodyPart를 사용
				// msg.setText(body);
				
				// 파일첨부를 위한 Multipart
				Multipart multipart = new MimeMultipart();
				
				// BodyPart를 생성
				BodyPart bodyPart = new MimeBodyPart();
				bodyPart.setText(body);
				
				// 1. Multipart에 BodyPart를 붙인다.
				multipart.addBodyPart(bodyPart);
				
				// 이메일 메시지의 내용에 Multipart를 붙인다.
				msg.setContent(multipart);
				Transport.send(msg);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		return bon_shopJoin();
	}
	
	// 핫키 NO 클릭시
	// 완료
	@RequestMapping(value = "/bon_shopJoinNO")
	public ModelAndView bon_shopJoinNO(String mail, String name, String hotkey) {
		
		System.out.println("--------여기는 NO 메일 보내는 곳--------");
		System.out.println("MAIL : "+mail);
		System.out.println("NAME : "+name);
		System.out.println("HOTKEY : "+hotkey);
		
		String host = "smtp.naver.com";
        final String username = "ama949@naver.com"; // 보내는 사람 네이버  ID
        final String password = "skdltm11a"; // 비밀번호
        int port=465;
         
        // 메일 내용
        String recipient = mail; // 받는 사람 E-Mail
        String subject = "APOS - 매장 가입을 거절당했습니다";
        String body = "\""+name+"\"님" + "안녕하세요~"+"\n\r"+"회사 규정상 회원 가입처리가 거절 되었습니다"+"\n\r"+"감사합니다";
         
        Properties props = System.getProperties();
         
         
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.starttls.enable","true");  
        props.put("mail.smtp.ssl.trust", host);
          
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            String un=username;
            String pw=password;
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(un, pw);
            }
        });
        session.setDebug(true); //for debug
          
        Message msg = new MimeMessage(session);
        try {
			msg.setFrom(new InternetAddress(username));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			msg.setSubject(subject);
			msg.setSentDate(new Date());
			// 파일 첨부시에는 BodyPart를 사용
			// msg.setText(body);
			
			// 파일첨부를 위한 Multipart
			Multipart multipart = new MimeMultipart();
			
			// BodyPart를 생성
			BodyPart bodyPart = new MimeBodyPart();
			bodyPart.setText(body);
			
			// 1. Multipart에 BodyPart를 붙인다.
			multipart.addBodyPart(bodyPart);
			
			// 이메일 메시지의 내용에 Multipart를 붙인다.
			msg.setContent(multipart);
			Transport.send(msg);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
        return bon_shopJoin();
	}
	
	// 본사 상품관리 - 상품재고관리
	@RequestMapping(value = "/bon_productSale")
	public ModelAndView bon_productSale() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_productSale");
		return mav;
	}
	
	
	
	// 본사 상품관리 - 상품세일
	@RequestMapping(value = "/bon_productDiscount")
	public ModelAndView bon_productDiscount() {
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
		List<ShopVO> list = shdao.getshopList();
		mav.addObject("list", list);
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
		String path = session.getServletContext().getRealPath("/upload/")
				+ vo.getBimg().getOriginalFilename();

		System.out.println(path);
		File f = new File(path);
		try {
			vo.getBimg().transferTo(f);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		vo.setPro_barcode(vo.getBimg().getOriginalFilename());

		String path2 = session.getServletContext().getRealPath("/upload/")
				+ vo.getPimg().getOriginalFilename();

		System.out.println(path2);
		File f2 = new File(path2);
		try {
			vo.getPimg().transferTo(f2);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		vo.setPro_img(vo.getPimg().getOriginalFilename());

		mav.setViewName("bonsa/bon_productAdd");
		pdao.insert(vo);
		return mav;
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
}
