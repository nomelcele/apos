package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class SMemberAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("join")){
			url="sh_memberJoin.jsp";
		}else if(subcmd.equals("check")){
			url="sh_memberCheck.jsp";
		} else if(subcmd.equals("change")){
			url="sh_memberChange.jsp";
		} else if(subcmd.equals("out")){
			url="sh_memberOut.jsp";
		}
		return new ActionForward(url, false);
	}

}
