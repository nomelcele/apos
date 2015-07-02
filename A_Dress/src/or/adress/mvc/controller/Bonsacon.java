package or.adress.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import or.adress.mvc.dao.BoardDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.BoardVO;
import vo.CommVO;
import vo.PageVO;

@Controller
public class Bonsacon {
	@Autowired
	private BoardDao bdao;
	
	@RequestMapping(value = "/bon_index")
	public ModelAndView bon_index() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_index");
		return mav;
	}
	// 본사 업무관리 공지사항 cmd=bwork subcmd=notice
	@RequestMapping(value = "/bon_workNotice")
	public ModelAndView bon_workNotice(int page) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_workNotice");
		
		//페이징처리 (게시판)
		PageVO pageInfo = pageProcess(page, 0, 0);
		HashMap<String, Integer> map = new HashMap<>();
		map.put("begin", pageInfo.getStartRow());
		map.put("end", pageInfo.getEndRow());
		//
		List<BoardVO> list =  bdao.getList(map);
		
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("list", list);
		return mav;
	}
	//본사 공지사항 작성폼 cmd=bwork subcmd=in
	@RequestMapping(value="/bon_noticein", method=RequestMethod.POST)
	public ModelAndView bon_workNoticeIn(){
		ModelAndView mav = new ModelAndView("bonsa/bon_workNoticeWriter");
		return mav;
	}
	//본사 공지사항 디테일 cmd=bwork subcmd=boardDetail
	@RequestMapping(value="/bon_workNoticedetail")
	public ModelAndView bon_workNoticedetail(int no, int page){
		ModelAndView mav = new ModelAndView("bon_workNoticeDetail");
		//페이징처리 (댓글)
			PageVO pageInfo = pageProcess(page, no, 1);
			HashMap<String, Integer> map = new HashMap<>();
			map.put("begin", pageInfo.getStartRow());
			map.put("end", pageInfo.getEndRow());
		//
			map.put("no", no);
		List<CommVO> clist = bdao.getCommList(map);
		BoardVO v = bdao.getDetail(no);
		mav.addObject("clist", clist);
		mav.addObject("v", v);
		return mav;
	}
	
	//본사 공지사항 글쓰기
	@RequestMapping(value="/bon_workNoticewrite", method=RequestMethod.POST)
	public void bon_workNoticewrite(BoardVO vo, HttpSession session){
		vo.setWriter(session.getAttribute("bon_id").toString());
		String s = vo.getContent();
		String filename="";
	    String content="";
	        String[] str = s.split(">");
	         for(String e : str){
	               System.out.println(e);
	               if(!e.startsWith("<")){
	            	   System.out.println("<가아닌가    "+e);
	            	  try{
	            		  content = e.substring(0, e.indexOf("<"));
		            	   break;
	            	  }catch(Exception ee){
	            		  ee.printStackTrace();
	            		  break;
	            	  }
	                 
	               }
	           }
	        String[] ff = str[1].split("\"");

	           System.out.println("---------------------------------------");
	           for(String e : ff){
	               System.out.println(e);
	               if(e.startsWith("..")){
	                   filename = e.substring(10);
	               }
	           }
	            System.out.println("----------------------------");
	            System.out.println(filename);
	            System.out.println(content);
	    vo.setContent(content);
	    vo.setPath(filename);
	    bdao.insert(vo);
	    bon_workNotice(1);
	}
	//본사 공지사항 파일업로드 cmd=bwork subcmd=ckBoard
	@RequestMapping(value="/bon_ckboard", method=RequestMethod.POST)
	public ModelAndView bon_ckboard(BoardVO vo, HttpSession session){
		String path = session.getServletContext().getRealPath("/img/")+vo.getMultipartFile().getOriginalFilename();
		File f = new File(path);
		try {
			vo.getMultipartFile().transferTo(f);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		vo.setPath(vo.getMultipartFile().getOriginalFilename());
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("callback");
		return mav;
		
	}
	
	//본사 공지사항 삭제 cmd = bwork subcmd=delete
	@RequestMapping(value="/bon_noticedelte", method=RequestMethod.POST)
	public void bon_noticedelte(int no, String writer, HttpSession session){
		String bon_id = session.getAttribute("bon_id").toString();
		if(bon_id.equals(writer)){
			bdao.delete(no);
		}
		bon_workNotice(1);
	}
	//본사 공지사항 댓글 삭제 cmd=bwork subcmd=commdelete
	@RequestMapping(value="/bon_commdelete")
	public void bon_commdelete(int no, int bo_num, String writer, int page, HttpSession session){
		
		if(session.getAttribute("bon_id").toString().equals(writer)){
			bdao.deleteComm(no);
		}
		bon_workNotice(page);
	}
	//본사 공지사항 댓글 입력 cmd=bwork subcmd=boardDetail childcmd=in
	@RequestMapping(value="/bon_commin", method=RequestMethod.POST)
	public void bon_commin(String comm_bonum, String comm_cont, HttpSession session){
		int page = 1;
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("no", comm_bonum);
		map.put("cont", comm_cont);
		map.put("writer", session.getAttribute("bon_id").toString());
		bdao.insertComm(map);
		bon_workNoticedetail(Integer.parseInt(comm_bonum), 1);
	}
	
	// 본사 매장관리 매장가입
	@RequestMapping(value ="/bon_shopJoin")
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
	
	
	
	
	
	
	
	
	//페이징처리
		private PageVO pageProcess(int page, int no, int etc){
			PageVO pageInfo = new PageVO();
			
			int rowsPerPage = 5;
			int pagesPerBlock = 5;
			//외부에서 부터 페이지 값을 받아 오는것 부터 시작
			int currentPage = page;
			//Integer.parseInt(request.getParameter("page"));
			
			int currentBlock = 0;
			if(currentPage % pagesPerBlock == 0){
				currentBlock = currentPage / pagesPerBlock;
			}else{
				currentBlock = currentPage / pagesPerBlock + 1;
			}
			// 현재 블록과 페이지를 구한 다음에 시작페이지 마지막페이지 : 한블록안에 한페이지당
			int startRow = (currentPage - 1) * rowsPerPage + 1;
			int endRow = currentPage * rowsPerPage;
			
			int totalRows = 0;
			//메서드를 호출시에 etc의 값이 0이라면 리스트의 총데이터를
			// 1이라면 comm의 총데이터를 가져오는 Dao의 메서드를 따로 받아온다.
			if(etc == 0){
				totalRows = bdao.getTotalCount();
				
			}else if(etc == 1){
				//int no = Integer.parseInt(request.getParameter("no"));
				System.out.println(no);
				totalRows = bdao.getTotalCommCount(no);
				System.out.println(totalRows);
			}
			
			int totalPages = 0;
			if(totalRows % rowsPerPage == 0){
				totalPages = totalRows / rowsPerPage;
			}else{
				totalPages = totalRows / rowsPerPage + 1;
			}
			
			int totalBlocks = 0;
			if(totalPages % pagesPerBlock == 0){
				totalBlocks = totalPages / pagesPerBlock;
			}else{
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
			
			//request.setAttribute("pageInfo", pageInfo);
//			HashMap<String, Integer> map = new HashMap<>();
//			map.put("begin", startRow);
//			map.put("end", endRow);
			
			System.out.println(startRow+"---"+endRow);
			return pageInfo;
		}
}
