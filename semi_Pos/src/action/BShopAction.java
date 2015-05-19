package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class BShopAction implements Action{
@Override
public ActionForward execute(HttpServletRequest request,
		HttpServletResponse response) throws IOException {
	String subcmd = request.getParameter("subcmd");
	String url="bon_index.jsp";
	boolean method= false;
	if(subcmd.equals("join")){
		url="bon_shopJoin.jsp";
	}else if(subcmd.equals("infor")){
		url="bon_shopInformation.jsp";
	}else if(subcmd.equals("check")){
		url="bon_shopCheck.jsp";
	}else if(subcmd.equals("scheck")){
		url="bon_shopSalesCheck.jsp";
	}
	return new ActionForward(url, false);
}
}
