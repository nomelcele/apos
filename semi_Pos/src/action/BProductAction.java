package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class BProductAction implements Action{
@Override
public ActionForward execute(HttpServletRequest request,
		HttpServletResponse response) throws IOException {
	String subcmd = request.getParameter("subcmd");
	String url="bon_index.jsp";
	boolean method= false;
	if(subcmd.equals("add")){
		url="bon_productAdd.jsp";
	}else if(subcmd.equals("del")){
		url="bon_productDelete.jsp";
	}else if(subcmd.equals("sale")){
		url="bon_productSale.jsp";
	}
	return new ActionForward(url, false);
}
}
