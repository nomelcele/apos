package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ShopHotkeyVO;
import vo.ShopVO;
import controller.ActionForward;
import dao.ShopDao;

public class SShopAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");
		String url="sh_index.jsp";
		boolean method= false;
		if(subcmd.equals("shopjoin")){
			request.setAttribute("hotkey", request.getParameter("hotkey"));
			request.setAttribute("crnum", request.getParameter("crnum"));
			System.out.println("여기에서의 crnum"+ request.getParameter("crnum"));
			url="sh_shopjoin.jsp";
		}else if(subcmd.equals("shopinsert")){
			url="sh_login.jsp";
			// shop_num, shop_name, shop_tel, shop_adr,shop_map_x, shop_map_y
			// shop_date, shop_mail, shop_master, shop_img, shop_crnum, shop_bonnum
			// shop_id, shop_pwd
			
			String name = request.getParameter("shopname");
			String tel1 = request.getParameter("tel1");
			String tel2 = request.getParameter("tel2");
			String tel3 = request.getParameter("tel3");
			String tel = tel1+"-"+tel2+"-"+tel3;
			String adr = request.getParameter("adr3_1");
			float lat = Float.parseFloat(request.getParameter("lat"));
			float lng = Float.parseFloat(request.getParameter("lng"));
			String mail = request.getParameter("email");
			String master = request.getParameter("name");
			String img = request.getParameter("selfimg");
			int crnum =Integer.parseInt(request.getParameter("crnum"));
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			
			System.out.println("ID : "+id);
			System.out.println("pwd : "+pwd);
			System.out.println("EMAIL : "+mail);
			System.out.println("tel : "+tel);
			System.out.println("ADRRESS : "+adr);
			System.out.println("LAT : "+lat);
			System.out.println("LNG : "+lng);
			System.out.println("IMG: "+img);
			System.out.println("CRNUM : "+crnum);

			
			ShopVO vo = new ShopVO();
			vo.setName(name);
			vo.setTel(tel);
			vo.setAdr(adr);
			vo.setMap_x(lat);
			vo.setMap_y(lng);
			vo.setMail(mail);
			vo.setMaster(master);
			vo.setImg(img);
			vo.setCrnum(crnum);
			vo.setId(id);
			vo.setPwd(pwd);
			
			
			ShopDao.getDao().shopjoin(vo);
			
		}else if(subcmd.equals("shopgethotkey")){
			// hotkey 발급시 
			url="sh_login.jsp";
			String name = request.getParameter("name");
			int crnum = Integer.parseInt(request.getParameter("crnum"));
			String email = request.getParameter("email");
			System.out.println("---여기는 gethotkey영역 ---");
			System.out.println("name : "+name);
			System.out.println("crnum : "+crnum);
			System.out.println("email : "+email);
			
			ShopHotkeyVO vo = new ShopHotkeyVO();
			
			vo.setKey_name(name);
			vo.setKey_crnum(crnum);
			vo.setKey_email(email);
			
			ShopDao.getDao().shoprequesthotkey(vo);
			
			method=false;
		}
		return new ActionForward(url, method);
	}
}
