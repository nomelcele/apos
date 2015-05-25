package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class BSalesAction implements Action{
@Override
public ActionForward execute(HttpServletRequest request,
		HttpServletResponse response) throws IOException {
	String subcmd = request.getParameter("subcmd");
	String url="bon_index.jsp";
	boolean method= false;
	if(subcmd.equals("brandsch")){
		url="bon_brandSalesCheck.jsp";
	}else if(subcmd.equals("productsch")){
		url="bon_productSalesCheck.jsp";
	}else if(subcmd.equals("outletsch")){
		url="bon_outletSalesCheck.jsp";
	}else if(subcmd.equals("termsch")){
		url="bon_termSalesCheck.jsp";
	}
	return new ActionForward(url, false);
}
}
