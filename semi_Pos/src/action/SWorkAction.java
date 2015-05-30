
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
			/*Page 처리 영역 */
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
			//comm 처리부분
			if(childcmd != null && childcmd.equals("in")){
				HashMap<String, String> maps = MyMap.getMaps().getMapList(request);
				//Dao처리
				HttpSession session = request.getSession();
				String writer = (String) session.getAttribute("shop_id");
				maps.put("writer", writer);
				System.out.println("확인");
				BoardDao.getDao().insertComm(maps);
				//why? no보내야 하는지....
				url = "sh.apos?no="+no+"&cmd=swork&subcmd=boardDetail&page=1";
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
		}else if(subcmd.equals("itr")){
			url="sh_workItr.jsp";
		} else if(subcmd.equals("term")){
			url="sh_workTerm.jsp";
		} else if(subcmd.equals("tel")){			
			url="sh_workTel.jsp";
			String name = request.getParameter("name");
			System.out.println("확인");
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


















