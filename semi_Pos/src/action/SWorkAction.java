package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

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
		}
		return new ActionForward(url, false);
	}

}
