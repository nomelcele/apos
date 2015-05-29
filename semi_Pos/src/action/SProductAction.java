package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ProductVO;
import vo.SmangVO;
import controller.ActionForward;
import dao.ShDao;

public class SProductAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String childcmd = request.getParameter("childcmd");
		System.out.println(subcmd);
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("pcheck")){
			if(childcmd != null && childcmd.equals("search")){
				String name =request.getParameter("name");
				String shopnum= request.getParameter("shop_num");
				System.out.println("test"+name);
				ArrayList<SmangVO>list = ShDao.getDao().getListProduct(name,shopnum);
				request.setAttribute("list", list);
				System.out.println("test");
			}else if(childcmd != null && childcmd.equals("search_top")){
				String name =request.getParameter("top_name_pk");
				String shopnum= request.getParameter("top_shop_num");
				System.out.println("test"+name);
				ArrayList<SmangVO>list = ShDao.getDao().getListProduct(name,shopnum);
				request.setAttribute("list", list);
				System.out.println("test");
			}
			url="sh_productCheck.jsp";
		}else if(subcmd.equals("move")){
			url="sh_productMove.jsp";
		}
		return new ActionForward(url, false);
	}
}
