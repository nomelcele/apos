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
		}else if(subcmd.equals("shopinsert")){
			url="";
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String email= request.getParameter("email");
			String tel1 = request.getParameter("tel1");
			String tel2 = request.getParameter("tel2");
			String tel3 = request.getParameter("tel3");
			String tel = tel1 + tel2 + tel3;
			// 도로명 주소
			String addressR =  request.getParameter("adr3_1");
			// 지번 주소
			// String addressJ =  request.getParameter("adr4_1");
			
		}
		return new ActionForward(url, method);
	}
}
