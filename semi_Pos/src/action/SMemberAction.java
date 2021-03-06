
package action;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.MyMap;
import vo.BoardVO;
import vo.MemVO;
import vo.PageVO;
import controller.ActionForward;
import dao.BoardDao;
import dao.ShDao;

public class SMemberAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url = "sh_index.jsp";
		boolean method = false;
		if (subcmd != null && subcmd.equals("join")) {
			url = "sh_memberJoin.jsp";
		}  else if (subcmd != null && subcmd.equals("change")) {
			url = "sh_memberChange.jsp";
		} else if (subcmd != null && subcmd.equals("out")) {
			url = "sh_memberOut.jsp";
		} else if (subcmd != null && subcmd.equals("insert")) {
			MemVO vo = new MemVO();
			vo.setMem_name(request.getParameter("name"));
			vo.setMem_tel(request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3"));
			vo.setMem_date(request.getParameter("date"));
			vo.setMem_post(request.getParameter("adr1")+"-"+request.getParameter("adr2"));
			vo.setMem_addr(request.getParameter("adr3"));
			vo.setMem_deaddr(request.getParameter("adr4"));
			vo.setMem_shopnum(1);
			vo.setMem_email(request.getParameter("email"));
			ShDao.getDao().insertMem(vo);
			url = "sh_memberCheck.jsp";
		}else if(subcmd != null && subcmd.equals("check")){
			url="sh_memberCheck.jsp";
			String name= request.getParameter("name");
			name +='%';
			System.out.println("========================== ==========test:"+name);
			ArrayList<MemVO>list = ShDao.getDao().getListMember(name);
			request.setAttribute("list", list);
		}else if(subcmd != null && subcmd.equals("detail")){
			int num=Integer.parseInt(request.getParameter("num"));
			MemVO v= ShDao.getDao().getDetail(num);
			request.setAttribute("v", v);
			url="sh_memberDetail.jsp";
		}else if(subcmd != null && subcmd.equals("finish")){
			HashMap<String, String> maps = MyMap.getMaps().getMapList(request);
			ShDao.getDao().getfinish(maps);
			int num=Integer.parseInt(request.getParameter("num"));
			MemVO v= ShDao.getDao().getDetail(num);
			request.setAttribute("v", v);
			url="sh_memberDetail.jsp";
		}else if(subcmd != null && subcmd.equals("secede")){
			int num=Integer.parseInt(request.getParameter("num"));
			MemVO v= ShDao.getDao().getsecede(num);
			url="sh_index.jsp";
			System.out.println("삭제성공!");
		}
		return new ActionForward(url, false);
	}

	// 페이징처리
	private Map<String, Integer> pageProcess(HttpServletRequest request, int etc) {
		PageVO pageInfo = new PageVO();

		int rowsPerPage = 5;
		int pagesPerBlock = 5;
		// 외부에서 부터 페이지 값을 받아 오는것 부터 시작
		int currentPage = Integer.parseInt(request.getParameter("page"));

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
			totalRows = BoardDao.getDao().getTotalCount();

		} else if (etc == 1) {
			int no = Integer.parseInt(request.getParameter("no"));
			totalRows = BoardDao.getDao().getTotalCommCount(no);
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

		request.setAttribute("pageInfo", pageInfo);
		HashMap<String, Integer> map = new HashMap<>();
		map.put("begin", startRow);
		map.put("end", endRow);

		return map;
	}

}
