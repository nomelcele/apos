package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import util.MyMap;
import vo.BoardVO;
import vo.CommVO;
import vo.PageVO;
import controller.ActionForward;
import dao.BoardDao;

public class BWorkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="bon_index.jsp";
		System.out.println(subcmd);
		boolean method= false;
		if(subcmd != null && subcmd.equals("notice")){
				url="bon_workNotice.jsp";	
				/*Page 처리 영역 */
				Map<String, Integer> map = pageProcess(request, 0);
				/////////////////////////////////////////////////
				ArrayList<BoardVO> list = BoardDao.getDao().getList(map);
				request.setAttribute("list", list);
		}else if(subcmd != null && subcmd.equals("delete")){
			System.out.println("1차확인");
			url="bon_workNotice.jsp";
			method=false;
			int no = Integer.parseInt(request.getParameter("no"));
			BoardDao.getDao().delete(no);
			/*Page 처리 영역 */
			Map<String, Integer> map = pageProcess(request, 0);
			/////////////////////////////////////////////////
			ArrayList<BoardVO> list = BoardDao.getDao().getList(map);
			request.setAttribute("list", list);
		}else if(subcmd != null && subcmd.equals("in")){
				url="bon_workNoticeWriter.jsp";
		}else if(subcmd != null && subcmd.equals("ckBoard")){
			//파일 업로드를 위해서 Part를 생성
			System.out.println("씨케이보드확인");
			Part part = null;
			try {
				part = request.getPart("upload");
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("-------------------------");
			System.out.println("Part : "+part);
			//파일이름 가져오기
			String fileName = getFileName(part);
			System.out.println("name123123 : "+fileName);
			//파일 이름이 있으면 업로드
			if(fileName != null && fileName.length() != 0){
				part.write(fileName);
			}
			//chk callback설정 : Ajax로 넘어온 요청을 response 해주기 위한 설정
			String callback = request.getParameter("CKEditorFuncNum");

			String fileUrl = "../upload/"+fileName;//url경로
			request.setAttribute("callback", callback);
			request.setAttribute("fileUrl", fileUrl);
			url = "callback.jsp";
			method=false;
			
		}else if(subcmd != null && subcmd.equals("insert")){
			BoardVO vo = new BoardVO();
			vo.setTitle(request.getParameter("title"));
			String s = request.getParameter("content").trim();
			HttpSession session = request.getSession();
			
			String writer = (String) session.getAttribute("bon_id");
			vo.setWriter(writer);
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
		    BoardDao.getDao().insert(vo);
			url="*.apos?cmd=bwork&subcmd=notice";
			method=false;
		}else if(subcmd != null && subcmd.equals("boardList")){
			url="bon_workNotice.jsp";
			method=false;
			
		}else if(subcmd != null && subcmd.equals("boardDetail")){
			int no = Integer.parseInt(request.getParameter("no"));
			String childcmd = request.getParameter("childcmd");
			String tar = request.getParameter("tar");
			url = "bon_workNoticeDetail.jsp";
			method = false;
			BoardVO v = BoardDao.getDao().getDetail(no);
			request.setAttribute("v", v);
			//comm 처리부분
			if(childcmd != null && childcmd.equals("in")){
				HashMap<String, String> maps = MyMap.getMaps().getMapList(request);
				//Dao처리
				System.out.println("확인");
				BoardDao.getDao().insertComm(maps);
				//why? no보내야 하는지....
				url = "bonsa.apos?no="+no+"&cmd=bwork&subcmd=boardDetail&page=1";
				//댓글리스트의 페이지를 지정하기위해
				method=true;
			}
			//list와 commlist의 total값을 구분..
			//commlist
			Map<String, Integer> map = pageProcess(request, 1);
			map.put("no", no);
			ArrayList<CommVO> clist = BoardDao.getDao().getCommList(map);
			request.setAttribute("clist", clist);
			request.setAttribute("tar", tar);
		}else if(subcmd != null && subcmd.equals("move")){
			url="bon_workMove.jsp";
		}
		return new ActionForward(url, method);
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
	
	//페이징처리
	private Map<String, Integer> pageProcess(HttpServletRequest request, int etc){
		PageVO pageInfo = new PageVO();
		
		int rowsPerPage = 5;
		int pagesPerBlock = 5;
		//외부에서 부터 페이지 값을 받아 오는것 부터 시작
		int currentPage = Integer.parseInt(request.getParameter("page"));
		
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
			totalRows = BoardDao.getDao().getTotalCount();
			
		}else if(etc == 1){
			int no = Integer.parseInt(request.getParameter("no"));
			System.out.println(no);
			totalRows = BoardDao.getDao().getTotalCommCount(no);
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
		
		request.setAttribute("pageInfo", pageInfo);
		HashMap<String, Integer> map = new HashMap<>();
		map.put("begin", startRow);
		map.put("end", endRow);
		
		System.out.println(startRow+"---"+endRow);
		return map;
	}

}
