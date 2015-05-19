package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class SProductAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("check")){
			url="sh_productCheck.jsp";
		}else if(subcmd.equals("move")){
			url="sh_productMove.jsp";
		}
		return new ActionForward(url, false);
	}
}
