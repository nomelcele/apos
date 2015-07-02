package or.adress.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import or.adress.mvc.dao.BoardDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import vo.BoardVO;
import vo.CommVO;
import vo.PageVO;

@Controller
public class Bonsacon {
	@Autowired
	private BoardDao bdao;
	
	@RequestMapping(value = "/bon_index")
	public ModelAndView bon_index(HttpSession session) {
		///////////////�ӽü���
		session.setAttribute("bon_id", "yoon");
		session.setAttribute("bon_name", "��ȫ��");
		/////////////////
		
		
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_index");
		return mav;
	}
	// ���� �������� �������� cmd=bwork subcmd=notice
	@RequestMapping(value = "/bon_workNotice", method=RequestMethod.POST)
	public ModelAndView bon_workNotice(int page) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bonsa/bon_workNotice");
		
		//����¡ó�� (�Խ���)
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
	//���� �������� �ۼ��� cmd=bwork subcmd=in
	@RequestMapping(value="/bon_noticein", method=RequestMethod.POST)
	public ModelAndView bon_workNoticeIn(){
		ModelAndView mav = new ModelAndView("bonsa/bon_workNoticeWriter");
		return mav;
	}
	//���� �������� ������ cmd=bwork subcmd=boardDetail
	@RequestMapping(value="/bon_workNoticedetail")
	public ModelAndView bon_workNoticedetail(int no, int page){
		ModelAndView mav = new ModelAndView("bonsa/bon_workNoticeDetail");
		//����¡ó�� (���)
			PageVO pageInfo = pageProcess(page, no, 1);
			HashMap<String, Integer> map = new HashMap<>();
			map.put("begin", pageInfo.getStartRow());
			map.put("end", pageInfo.getEndRow());
		//
			map.put("no", no);
		List<CommVO> clist = bdao.getCommList(map);
		BoardVO v = bdao.getDetail(no);
		v.setPath("upload/"+v.getPath());
		System.out.println(v.getPath());
		mav.addObject("clist", clist);
		mav.addObject("v", v);
		return mav;
	}
	
	//���� �������� �۾���
	@RequestMapping(value="/bon_workNoticewrite", method=RequestMethod.POST)
	public ModelAndView bon_workNoticewrite(BoardVO vo, HttpSession session){
		vo.setWriter(session.getAttribute("bon_id").toString());
		String s = vo.getContent();
		String filename="";
	    String content="";
	        String[] str = s.split(">");
	         for(String e : str){
	               System.out.println(e);
	               if(!e.startsWith("<")){
	            	   System.out.println("<���ƴѰ�    "+e);
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
	    System.out.println("�μ�Ʈ��");
	    bdao.insert(vo);
	    System.out.println("�μ�Ʈ��");
	    return bon_workNotice(1);
	}
	//���� �������� ���Ͼ��ε� cmd=bwork subcmd=ckBoard
	@RequestMapping(value="/bon_ckboard", method=RequestMethod.POST)
	public ModelAndView bon_ckboard(BoardVO vo,HttpServletRequest request, HttpSession session){
		ModelAndView mav = new ModelAndView();
		Part part = null;
		try {
			part = request.getPart("upload");
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("-------------------------");
		System.out.println("Part : "+part);
		//�����̸� ��������
		String fileName = getFileName(part);
		System.out.println("name123123 : "+fileName);
		//���� �̸��� ������ ���ε�
		if(fileName != null && fileName.length() != 0){
			try {
				part.write(fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		//chk callback���� : Ajax�� �Ѿ�� ��û�� response ���ֱ� ���� ����
		String callback = request.getParameter("CKEditorFuncNum");

		String fileUrl = "upload/"+fileName;
		
		mav.addObject("callback", callback);
		mav.addObject("fileUrl", fileUrl);
		
		mav.setViewName("bonsa/callback");
		return mav;
		
	}
	
	//���� �������� ���� cmd = bwork subcmd=delete
	@RequestMapping(value="/bon_noticedelte", method=RequestMethod.POST)
	public ModelAndView bon_noticedelte(int no, String writer, HttpSession session){
		String bon_id = session.getAttribute("bon_id").toString();
		
		if(bon_id.equals(writer)){
			
			bdao.delete(no);
			
		}
		return bon_workNotice(1);
	}
	//���� �������� ��� ���� cmd=bwork subcmd=commdelete
	@RequestMapping(value="/bon_commdelete")
	public ModelAndView bon_commdelete(int no, int bo_num, String writer, int page, HttpSession session){
		String bon_id = session.getAttribute("bon_id").toString();
		
		if(bon_id.equals(writer)){
			
			bdao.deleteComm(no);
		}
		return bon_workNoticedetail(bo_num, page);
	}
	//���� �������� ��� �Է� cmd=bwork subcmd=boardDetail childcmd=in
	@RequestMapping(value="/bon_commin", method=RequestMethod.POST)
	public ModelAndView bon_commin(String comm_bonum, String comm_cont, HttpSession session){
		int page = 1;
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("no", comm_bonum);
		map.put("cont", comm_cont);
		map.put("writer", session.getAttribute("bon_id").toString());
		bdao.insertComm(map);
		return bon_workNoticedetail(Integer.parseInt(comm_bonum), 1);
	}
	
	// ���� ������� ���尡��
	@RequestMapping(value ="/bon_shopJoin")
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
	
	
	
	
	
	
	
	
	//����¡ó��
		private PageVO pageProcess(int page, int no, int etc){
			PageVO pageInfo = new PageVO();
			
			int rowsPerPage = 5;
			int pagesPerBlock = 5;
			//�ܺο��� ���� ������ ���� �޾� ���°� ���� ����
			int currentPage = page;
			//Integer.parseInt(request.getParameter("page"));
			
			int currentBlock = 0;
			if(currentPage % pagesPerBlock == 0){
				currentBlock = currentPage / pagesPerBlock;
			}else{
				currentBlock = currentPage / pagesPerBlock + 1;
			}
			// ���� ��ϰ� �������� ���� ������ ���������� ������������ : �Ѻ�Ͼȿ� ����������
			int startRow = (currentPage - 1) * rowsPerPage + 1;
			int endRow = currentPage * rowsPerPage;
			
			int totalRows = 0;
			//�޼��带 ȣ��ÿ� etc�� ���� 0�̶�� ����Ʈ�� �ѵ����͸�
			// 1�̶�� comm�� �ѵ����͸� �������� Dao�� �޼��带 ���� �޾ƿ´�.
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
		
		private String getFileName(Part part){
	    	String fileName="";
	    	String header = part.getHeader("content-disposition");
	    	System.out.println(header);
	    	String[] elements = header.split(";");
	    	for(String element : elements){
	    		if(element.trim().startsWith("filename")){
	    			fileName = element.substring(element.indexOf('=')+1);
	    			fileName = fileName.trim().replace("\"", "");
	    		}
	    	}
	    	return fileName;
	    }
}
