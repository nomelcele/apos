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
			// 매장 hotkey 발급
			request.setAttribute("hotkey", request.getParameter("hotkey"));
			request.setAttribute("crnum", request.getParameter("crnum"));
			System.out.println("여기에서의 crnum"+ request.getParameter("crnum"));
			url="sh_shopjoin.jsp";
		}else if(subcmd.equals("submithot")){
			url="sh_shopjoin.jsp";
			method=false;
		}else if(subcmd.equals("login")){
			// 매장 로그인 
			url="sh_index.jsp";
			String name = "";  // 매장명
			String master =""; // 매장주인이름
			String radio = request.getParameter("radio"); // master or staff?
			System.out.println("---Radio--- : "+ radio);
			String id = request.getParameter("id"); // 접속 ID
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
			session.setAttribute("shop_num", shop_num); // 매장 NUM
			session.setAttribute("shop_id", id); // 접속 ID
			session.setAttribute("shop_name", name); // 매장명
			session.setAttribute("shop_master", master); // 매장주 이름
			session.setAttribute("radio", radio); // master or staff?
			method=false;
			
			
		}else if(subcmd.equals("logout")){
			// 매장 로그인
			url="sh_login.jsp";
			HttpSession session = request.getSession();
			session.invalidate(); //모든 세션삭제
			method=false;
		}else if(subcmd.equals("shopinsert")){
			// 매장 회원 가입- DB에 저장
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
		}else if(subcmd.equals("findId")){
			url="sh_login.jsp";
		}else if(subcmd.equals("findPwd")){
			url="sh_login.jsp";
		}
		
		return new ActionForward(url, method);
	}
	
	private String getFileName(Part part) {
		// 파일 이름을 저장할 변수
		String fileName = "";

		// 헤더의 모든 내용 가져오기
		String header = part.getHeader("content-disposition");
		System.out.println(header);
		// header의 내용을 ; 을 기준으로 분할해서 배열로 저장
		String[] elements = header.split(";");

		// elements에서 filename에 해당하는 데이터 찾기
		for (String element : elements) {
			// filename으로 시작하는 elements를 찾으면 거기에서 다음의 문자열만 fileName
			if (element.trim().startsWith("filename")) {
				fileName = element.substring(element.indexOf('=') + 1);

				// fileName에 [\"] ["]가 있다면 제거
				// "는 직접 기재가 불가능 하기 떄문에 \" 표현한것임
				fileName = fileName.trim().replace("\"", "");
			}
		}
		return fileName;
	}
	
	
}
