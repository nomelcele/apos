package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.MemVO;
import vo.ProductVO;
import vo.SmangVO;
import controller.ActionForward;
import dao.ShDao;
import dao.SmangDao;

public class SMangAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("sregi")){
			url="sh_smangRegis.jsp";
		}else if(subcmd.equals("exchRefu")){
			url="sh_smangExchTefu.jsp";
		}
		else if(subcmd.equals("check")){
			url="sh_smangRegis.jsp";
			String name = request.getParameter("name");
			HttpSession session = request.getSession();
			int shopnum =  (int) session.getAttribute("shop_num");
			System.out.println("세션의 샵넘 확인 : "+shopnum);
			ArrayList<MemVO>list = ShDao.getDao().getListMember(name);
			request.setAttribute("list", list);
		}else if(subcmd.equals("pcheck")){
			url="sh_smangRegis.jsp";
			String code = request.getParameter("pro_code");
			HttpSession session = request.getSession();
			int shopnum =  (int) session.getAttribute("shop_num");
			System.out.println("세션의 샵넘 확인 : "+shopnum);
			ArrayList<SmangVO> list = SmangDao.getDao().getListProduct(code, shopnum);
			request.setAttribute("plist", list);
			
		}else if(subcmd.equals("incus")){
			url="sh_smangRegis.jsp";
			String code = request.getParameter("pro_code");
			HttpSession session = request.getSession();
			int shopnum =  (int) session.getAttribute("shop_num");
			ArrayList<SmangVO> list = SmangDao.getDao().getListProduct(code, shopnum);
			request.setAttribute("plist", list);
			
		}else if(subcmd.equals("insell")){
			url="sh_smangRegis.jsp";
			String code = request.getParameter("pro_code");
			HttpSession session = request.getSession();
			int shopnum =  (int) session.getAttribute("shop_num");
			ArrayList<SmangVO> list = SmangDao.getDao().getListProduct(code, shopnum);
			request.setAttribute("plist", list);
			
		}else if(subcmd.equals("final")){
			url="sh_smangRegis.jsp";
			HttpSession session = request.getSession();
			int shopnum =  (int) session.getAttribute("shop_num");
			System.out.println("세션의 샵넘 확인 : "+shopnum);
			//int shopnum = Integer.parseInt(request.getParameter("fshopnum"));
			int fmileage = Integer.parseInt(request.getParameter("fmileage"));
			int cusnum = Integer.parseInt(request.getParameter("fcusnum"));
			int s = Integer.parseInt(request.getParameter("fset"));
			boolean chk = true;
			for(int i=1 ; i<=s ; i++){
				String fcode = "fcode"+i;
				String fcash = "fcash"+i;
				String fmany = "fmany"+i;
				String fsize = "fsize"+i;
				int code = Integer.parseInt(request.getParameter(fcode));
				int cash = Integer.parseInt(request.getParameter(fcash));
				int many = Integer.parseInt(request.getParameter(fmany));
				int size = Integer.parseInt(request.getParameter(fsize));
				SmangDao.getDao().insertsell(code, cash, many, shopnum, fmileage, cusnum, chk);
				SmangDao.getDao().editstock(code, many, size, shopnum);
				chk = false;
			}
			int mile = Integer.parseInt(request.getParameter("inmileage"));
			System.out.println(mile);
			SmangDao.getDao().inmile(mile, cusnum);
			method = true;
			
		}
		return new ActionForward(url, method);
	}

}
