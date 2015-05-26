
package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.MyMap;
import vo.StaffVO;
import jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator;
import controller.ActionForward;
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
		}else if(subcmd.equals("itr")){
			url="sh_workItr.jsp";
		} else if(subcmd.equals("term")){
			url="sh_workTerm.jsp";
		} else if(subcmd.equals("tel")){			
			url="sh_workTel.jsp";
			String name = request.getParameter("name");
			System.out.println("»Æ¿Œ");
			ArrayList<StaffVO> list = StaffDao.getDao().suggestList(name);
			request.setAttribute("list",list);
		}
		return new ActionForward(url, false);
	}

}


















