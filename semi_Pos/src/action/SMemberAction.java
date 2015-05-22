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
			HashMap<String, String> maps = MyMap.getMaps().getMapList(request);
			ShDao.getDao().insertMem(maps);
			// String str= request.getParameter("name");
			// System.out.println("test23"+str);
		}else if(subcmd != null && subcmd.equals("check")){
			url="sh_memberCheck.jsp";	
			/*Page ó�� ���� */
			Map<String, Integer> map = pageProcess(request, 0);
			String name= request.getParameter("name");
			/////////////////////////////////////////////////
			ArrayList<MemVO>list = ShDao.getDao().getListMember(map,name);
			request.setAttribute("list", list);
		}
		return new ActionForward(url, false);
	}

	// ����¡ó��
	private Map<String, Integer> pageProcess(HttpServletRequest request, int etc) {
		PageVO pageInfo = new PageVO();

		int rowsPerPage = 5;
		int pagesPerBlock = 5;
		// �ܺο��� ���� ������ ���� �޾� ���°� ���� ����
		int currentPage = Integer.parseInt(request.getParameter("page"));

		int currentBlock = 0;
		if (currentPage % pagesPerBlock == 0) {
			currentBlock = currentPage / pagesPerBlock;
		} else {
			currentBlock = currentPage / pagesPerBlock + 1;
		}
		// ���� ��ϰ� �������� ���� ������ ���������� ������������ : �Ѻ�Ͼȿ� ����������
		int startRow = (currentPage - 1) * rowsPerPage + 1;
		int endRow = currentPage * rowsPerPage;

		int totalRows = 0;
		// �޼��带 ȣ��ÿ� etc�� ���� 0�̶�� ����Ʈ�� �ѵ����͸�
		// 1�̶�� comm�� �ѵ����͸� �������� Dao�� �޼��带 ���� �޾ƿ´�.
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
