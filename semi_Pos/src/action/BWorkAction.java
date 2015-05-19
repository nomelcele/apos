package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class BWorkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="bon_index.jsp";
		boolean method= false;
		if(subcmd.equals("notice")){
			url="bon_workNotice.jsp";
		}else if(subcmd.equals("move")){
			url="bon_workMove.jsp";
		}
		return new ActionForward(url, false);
	}

}
