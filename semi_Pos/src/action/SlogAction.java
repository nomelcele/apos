package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public class SlogAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// ����)�ܺο��� ó�� ���� �Ҷ� ! ���� URL�� ������ 
		String subcmd =  request.getParameter("subcmd");
		String url = null;
		boolean method = false;
		if(subcmd==null){
			url="sh_login.jsp";
			method = false;
		}
		return new ActionForward(url, method);
	}
}
