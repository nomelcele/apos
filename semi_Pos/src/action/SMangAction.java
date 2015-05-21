package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class SMangAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("regis")){
			url="sh_smangRegis.jsp";
		}else if(subcmd.equals("exchRefu")){
			url="sh_smangExchRefu.jsp";
		}
		return new ActionForward(url, false);
	}

}
