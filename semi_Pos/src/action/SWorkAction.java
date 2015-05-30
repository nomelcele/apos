
package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.MyMap;
import vo.BoardVO;
import vo.CommVO;
import vo.PageVO;
import vo.StaffVO;
import jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator;
import controller.ActionForward;
import dao.BoardDao;
import dao.StaffDao;

public class SWorkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("notice")){
			url="sh_workNotice.jsp";
			/*Page ó�� ���� */
			Map<String, Integer> map = pageProcess(request, 0);
			/////////////////////////////////////////////////
			ArrayList<BoardVO> list = BoardDao.getDao().getList(map);
			request.setAttribute("list", list);
		}else if(subcmd != null && subcmd.equals("boardDetail")){
			int no = Integer.parseInt(request.getParameter("no"));
			String childcmd = request.getParameter("childcmd");
			String tar = request.getParameter("tar");
			url = "sh_workNoticeDetail.jsp";
			method = false;
			BoardVO v = BoardDao.getDao().getDetail(no);
			request.setAttribute("v", v);
			//comm ó���κ�
			if(childcmd != null && childcmd.equals("in")){
				HashMap<String, String> maps = MyMap.getMaps().getMapList(request);
				//Daoó��
				HttpSession session = request.getSession();
				String writer = (String) session.getAttribute("shop_id");
				maps.put("writer", writer);
				System.out.println("Ȯ��");
				BoardDao.getDao().insertComm(maps);
				//why? no������ �ϴ���....
				url = "sh.apos?no="+no+"&cmd=swork&subcmd=boardDetail&page=1";
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
		}else if(subcmd.equals("itr")){
			url="sh_workItr.jsp";
		} else if(subcmd.equals("term")){
			url="sh_workTerm.jsp";
		} else if(subcmd.equals("tel")){			
			url="sh_workTel.jsp";
			String name = request.getParameter("name");
			System.out.println("Ȯ��");
			ArrayList<StaffVO> list = StaffDao.getDao().suggestList(name);
			request.setAttribute("list",list);
		}else if(subcmd != null && subcmd.equals("commdelete")){
			int no = Integer.parseInt(request.getParameter("no"));
			int bo_num = Integer.parseInt(request.getParameter("bo_num"));
			HttpSession session = request.getSession();
			String ckwriter = (String) session.getAttribute("shop_id");
			if(ckwriter.equals(request.getParameter("writer"))){
				BoardDao.getDao().deleteComm(no);
			};
			
			url = "sh.apos?no="+bo_num+"&cmd=swork&subcmd=boardDetail&page=1";
			method = true;
		}
		return new ActionForward(url, method);
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


















