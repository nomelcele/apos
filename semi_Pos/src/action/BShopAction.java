package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.BonsaVO;
import vo.MemVO;
import vo.ShopHotkeyVO;
import vo.ShopVO;
import controller.ActionForward;
import dao.BonsaDao;
import dao.LogTimeDao;
import dao.ShDao;
import dao.ShopDao;

public class BShopAction implements Action{
@Override
public ActionForward execute(HttpServletRequest request,
		HttpServletResponse response) throws IOException {
	String subcmd = request.getParameter("subcmd");
	String url="bon_index.jsp";
	boolean method= false;
	if(subcmd.equals("join")){
		// 매장 가입 - 본사에서 YES/NO 
		url="bon_shopJoin.jsp";
		ArrayList<ShopHotkeyVO> list = ShopDao.getDao().getListRequestShop();
		request.setAttribute("list", list);
		method=false;
	}else if(subcmd.equals("infor")){
		url="bon_shopInformation.jsp";
	}else if(subcmd.equals("check")){
		System.out.println("====================test==========");
		url="bon_shopCheck.jsp";
		ArrayList<ShopVO> list = ShopDao.getDao().getshopList();
		request.setAttribute("list",list);
		

	}else if(subcmd.equals("scheck")){
		url="bon_shopSalesCheck.jsp";
	}else if(subcmd.equals("sawonjoin")){
		// 본사 - 사원 가입
		url="bon_login.jsp";
		// 이름 ,비밀번호, 비밀번호 확인, 성명, 연락처
		
		String bon_id = request.getParameter("bon_id");
		String bon_name = request.getParameter("bon_name");
		String bon_pwd = request.getParameter("bon_pwd");
		String tel1 = request.getParameter("bon_tel1");
		String tel2 = request.getParameter("bon_tel2");
		String tel3 = request.getParameter("bon_tel3");
		String bon_tel = tel1 +"-"+ tel2+"-"+tel3;
		
		BonsaVO vo = new BonsaVO();
		vo.setBon_id(bon_id);
		vo.setBon_name(bon_name);
		vo.setBon_pwd(bon_pwd);
		vo.setBon_tel(bon_tel);
		BonsaDao.getDao().sawonjoin(vo);
		method=false;
	}else if(subcmd.equals("sawonlogin")){
		// 본사 사원 로그인
		url="bon_index.jsp";
		String id =request.getParameter("bon_login_id");
		String bon_name = BonsaDao.getDao().getbonname(id);
		LogTimeDao.getDao().logintime(id); // 로그인 시간 DB에 저장
		HttpSession session = request.getSession();
		session.setAttribute("bon_id", id);
		session.setAttribute("bon_name", bon_name);
		method=false;
	}else if(subcmd.equals("sawonlogout")){
		// 본사 사원 로그 아웃
		url="bon_login.jsp";
		HttpSession session = request.getSession();
		String bon_id =(String) session.getAttribute("bon_id");
		LogTimeDao.getDao().logouttime(bon_id);
		session.invalidate(); //모든 세션삭제
		method=false;
	}else if(subcmd.equals("findId")){
		url="bon_login.jsp";
	}else if(subcmd.equals("findPwd")){
		url="bon_login.jsp";
	}
	
	return new ActionForward(url, method);
}
}
