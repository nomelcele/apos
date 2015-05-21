package action;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class SShopAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("shopjoin")){
			url="sh_shopjoin.jsp";
		}else if(subcmd.equals("shopcheck")){
			url="sh_shopSearch.jsp";
		}else if(subcmd.equals("shopinsert")){
			url="";
		}
		return new ActionForward(url, method);
	}

}
