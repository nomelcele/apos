package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

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
			// ���� hotkey �߱�
			request.setAttribute("hotkey", request.getParameter("hotkey"));
			request.setAttribute("crnum", request.getParameter("crnum"));
			System.out.println("���⿡���� crnum"+ request.getParameter("crnum"));
			url="sh_shopjoin.jsp";
		}else if(subcmd.equals("submithot")){
			url="sh_shopjoin.jsp";
			method=false;
		}else if(subcmd.equals("login")){
			// ���� �α��� 
			url="sh_index.jsp";
			String name = "";  // �����
			String master =""; // ���������̸�
			String radio = request.getParameter("radio"); // master or staff?
			System.out.println("---Radio--- : "+ radio);
			String id = request.getParameter("id"); // ���� ID
			int shop_num =  ShopDao.getDao().getshopno(id);// shop_num;
			if(radio.equals("master")){
				ArrayList<ShopVO> list =  ShopDao.getDao().getshopname(id);
				for(ShopVO e : list){
					name= e.getName();
					master = e.getMaster();
				}
			}else if(radio.equals("staff")){
				
			}
			HttpSession session = request.getSession();
			session.setAttribute("shop_num", shop_num); // ���� NUM
			session.setAttribute("shop_id", id); // ���� ID
			session.setAttribute("shop_name", name); // �����
			session.setAttribute("shop_master", master); // ������ �̸�
			session.setAttribute("radio", radio); // master or staff?
			method=false;
			
			
		}else if(subcmd.equals("logout")){
			// ���� �α���
			url="sh_login.jsp";
			HttpSession session = request.getSession();
			session.invalidate(); //��� ���ǻ���
			method=false;
		}else if(subcmd.equals("shopinsert")){
			// ���� ȸ�� ����- DB�� ����
			url="sh_login.jsp";
			// shop_num, shop_name, shop_tel, shop_adr,shop_map_x, shop_map_y
			// shop_date, shop_mail, shop_master, shop_img, shop_crnum, shop_bonnum
			// shop_id, shop_pwd
			String selfimg = "";
			try {
				Part part = request.getPart("selfimg");
				selfimg = getFileName(part);
				if (selfimg != null && selfimg.length() != 0) {
					part.write(selfimg);
				}
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
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
			//String img = request.getParameter("selfimg");
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
			System.out.println("IMG: "+selfimg);
			System.out.println("CRNUM : "+crnum);

			
			ShopVO vo = new ShopVO();
			vo.setName(name);
			vo.setTel(tel);
			vo.setAdr(adr);
			vo.setMap_x(lat);
			vo.setMap_y(lng);
			vo.setMail(mail);
			vo.setMaster(master);
			vo.setImg(selfimg);
			vo.setCrnum(crnum);
			vo.setId(id);
			vo.setPwd(pwd);
			
			
			ShopDao.getDao().shopjoin(vo);
			
		}else if(subcmd.equals("shopgethotkey")){
			// hotkey �߱޽� 
			url="sh_login.jsp";
			String name = request.getParameter("name");
			int crnum = Integer.parseInt(request.getParameter("crnum"));
			String email = request.getParameter("email");
			System.out.println("---����� gethotkey���� ---");
			System.out.println("name : "+name);
			System.out.println("crnum : "+crnum);
			System.out.println("email : "+email);
			
			ShopHotkeyVO vo = new ShopHotkeyVO();
			
			vo.setKey_name(name);
			vo.setKey_crnum(crnum);
			vo.setKey_email(email);
			
			ShopDao.getDao().shoprequesthotkey(vo);
			
			method=false;
		}else if(subcmd.equals("findId")){
			url="sh_login.jsp";
		}else if(subcmd.equals("findPwd")){
			url="sh_login.jsp";
		}
		
		return new ActionForward(url, method);
	}
	
	private String getFileName(Part part) {
		// ���� �̸��� ������ ����
		String fileName = "";

		// ����� ��� ���� ��������
		String header = part.getHeader("content-disposition");
		System.out.println(header);
		// header�� ������ ; �� �������� �����ؼ� �迭�� ����
		String[] elements = header.split(";");

		// elements���� filename�� �ش��ϴ� ������ ã��
		for (String element : elements) {
			// filename���� �����ϴ� elements�� ã���� �ű⿡�� ������ ���ڿ��� fileName
			if (element.trim().startsWith("filename")) {
				fileName = element.substring(element.indexOf('=') + 1);

				// fileName�� [\"] ["]�� �ִٸ� ����
				// "�� ���� ���簡 �Ұ��� �ϱ� ������ \" ǥ���Ѱ���
				fileName = fileName.trim().replace("\"", "");
			}
		}
		return fileName;
	}
	
	
}
