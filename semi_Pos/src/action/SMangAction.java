package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.MemVO;
import controller.ActionForward;
import dao.ShDao;

public class SMangAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("sregi")){
			url="sh_smangRegis.jsp";
		}else if(subcmd.equals("exchRefu")){
			url="sh_smangExchTefu.jsp";
		}else if(subcmd.equals("check")){
			url="sh_smangRegis.jsp";
			String name = request.getParameter("name");
			ArrayList<MemVO>list = ShDao.getDao().getListMember(name);
			request.setAttribute("list", list);
		}
		return new ActionForward(url, false);
	}

}
