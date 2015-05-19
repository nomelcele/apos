package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class SSalesAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("table")){
			url="sh_salesTable.jsp";
		}else if(subcmd.equals("rank")){
			url="sh_salesRank.jsp";
		}
		return new ActionForward(url, false);
	}
}
