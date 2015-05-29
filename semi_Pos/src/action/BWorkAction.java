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
				/*Page ó�� ���� */
				Map<String, Integer> map = pageProcess(request, 0);
				/////////////////////////////////////////////////
				ArrayList<BoardVO> list = BoardDao.getDao().getList(map);
				request.setAttribute("list", list);
		}else if(subcmd != null && subcmd.equals("delete")){
			System.out.println("1��Ȯ��");
			url="bon_workNotice.jsp";
			method=false;
			int no = Integer.parseInt(request.getParameter("no"));
			BoardDao.getDao().delete(no);
			/*Page ó�� ���� */
			Map<String, Integer> map = pageProcess(request, 0);
			/////////////////////////////////////////////////
			ArrayList<BoardVO> list = BoardDao.getDao().getList(map);
			request.setAttribute("list", list);
		}else if(subcmd != null && subcmd.equals("in")){
				url="bon_workNoticeWriter.jsp";
		}else if(subcmd != null && subcmd.equals("ckBoard")){
			//���� ���ε带 ���ؼ� Part�� ����
			System.out.println("�����̺���Ȯ��");
			Part part = null;
			try {
				part = request.getPart("upload");
			} catch (ServletException e) {
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
				part.write(fileName);
			}
			//chk callback���� : Ajax�� �Ѿ�� ��û�� response ���ֱ� ���� ����
			String callback = request.getParameter("CKEditorFuncNum");

			String fileUrl = "../upload/"+fileName;//url���
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
			//comm ó���κ�
			if(childcmd != null && childcmd.equals("in")){
				HashMap<String, String> maps = MyMap.getMaps().getMapList(request);
				//Daoó��
				System.out.println("Ȯ��");
				BoardDao.getDao().insertComm(maps);
				//why? no������ �ϴ���....
				url = "bonsa.apos?no="+no+"&cmd=bwork&subcmd=boardDetail&page=1";
				//��۸���Ʈ�� �������� �����ϱ�����
				method=true;
			}
			//list�� commlist�� total���� ����..
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
	
	//����¡ó��
	private Map<String, Integer> pageProcess(HttpServletRequest request, int etc){
		PageVO pageInfo = new PageVO();
		
		int rowsPerPage = 5;
		int pagesPerBlock = 5;
		//�ܺο��� ���� ������ ���� �޾� ���°� ���� ����
		int currentPage = Integer.parseInt(request.getParameter("page"));
		
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
