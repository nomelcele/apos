package or.adress.mvc.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import or.adress.mvc.dao.BonsaDao;
import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.SmangDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vo.MemVO;
import vo.ProductVO;
import vo.ShopHotkeyVO;
import vo.SmangVO;

@Controller
public class Ajaxcon {
	@Autowired
	private ProductDao pdao; 
	@Autowired
	private SmangDao smdao;
	@Autowired
	private ShopDao shdao;
	@Autowired
	private BonsaDao bdao;
	//���� ���� �˻� ajax
	@RequestMapping(value = "sh_AjaxProductSearch")
	public ModelAndView sh_AjaxProductSearch(String shop_num,
			String key) {
		ModelAndView mav = new ModelAndView("ajax/sh_AjaxProductSearch");
		
		
		System.out.println("ajax Test");
		System.out.println("=================");
		System.out.println("shopNum:" + shop_num + "key:" + key);
		HashMap<String, String> map = new HashMap<>();
		map.put("pro_check", key);
		map.put("shop_num", shop_num);

		
		List<ProductVO> list = pdao.getListProductGender(map);
		Iterator<ProductVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		//res.append("<tr>");
		int i = 0;
		while (it.hasNext()) {
			i++;
			ProductVO v = new ProductVO();
			v = it.next();
			res.append("<tr>");
			res.append("<td>" + i + "</td>");
			res.append("<td>").append(v.getPro_name()).append("</td>");
			res.append("<td>").append(v.getPro_code()).append("</td>");
			res.append("<td>").append(v.getSto_size()).append("</td>");
			res.append("<td>").append(v.getSto_amount()).append("</td>");
			res.append("<td>").append(v.getPro_price()).append("</td>");
			res.append("<td><img src='upload/" + v.getPro_img()
					+ "' style=\"width: 100px;\"></td>");//���� �����߰�			
			res.append("<td><img src='upload/" + v.getPro_barcode()
					+ "' style=\"width: 100px;\"></td>");
			res.append("</tr>");

		}

		//res.append("</tr>");
		String strString = res.toString();
		System.out.println(strString);
		// xml�� �о� ���� ���ؼ� ���� Ŭ������ �޼��带 ȣ��
		mav.addObject("strString", strString);
		
		return mav;
	}
	
	//�Ǹŵ�� ���˻��ݹ�
	@RequestMapping(value="sh_smang_callback", method=RequestMethod.POST)
	public ModelAndView sh_smang_callback(String name){
		//String name = request.getParameter("name");
	    System.out.println(name);
		List<MemVO> list = shdao.getListMember(name);
		Iterator<MemVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		while(it.hasNext()){
			MemVO v = new MemVO();
			v = it.next();
			res.append("<tr>");
			res.append("<td>").append(v.getMem_num()).append("</td>");
			res.append("<td>").append(v.getMem_name()).append("</td>");
			res.append("<td>").append(v.getMem_addr()).append("</td>");
			res.append("<td>").append(v.getMem_tel()).append("</td>");
			res.append("<td>").append(v.getMem_mileage()).append("</td>");
			res.append("<td>");
			res.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
			res.append("href=\"javascript:ckcustomer('").append(v.getMem_name()).append("', '");
			res.append(v.getMem_tel()).append("', '");
			res.append(v.getMem_mileage()).append("', '"+v.getMem_num()+"')\">");
			res.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
			res.append("</td>");
			res.append("</tr>");
			
		}
		String str = res.toString();
		System.out.println(str);
		ModelAndView mav = new ModelAndView("ajax/sh_smang_callback");
		mav.addObject("cuscont", str);
		return mav;
	}
	
	//�Ǹŵ�� ��ǰ�˻� �ݹ�
	@RequestMapping(value="sh_smang_callback2", method=RequestMethod.POST)
	public ModelAndView sh_smang_callback2(String pname, HttpSession session){
		String shop_num =  session.getAttribute("shop_num").toString();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("pname", pname);
		map.put("shop_num", shop_num);
		List<SmangVO> list = smdao.getListProduct(map);
		Iterator<SmangVO> it = list.iterator();
		StringBuffer res = new StringBuffer();
		int i = 0;
		while(it.hasNext()){
			i++;
			SmangVO v = new SmangVO();
			v = it.next();
			res.append("<tr>");
			res.append("<td>"+i+"</td>");
			res.append("<td>").append(v.getShop_name()).append("</td>");
			res.append("<td>").append(v.getPro_code()).append("</td>");
			res.append("<td>").append(v.getSto_size()).append("</td>");
			res.append("<td>").append("<input type=\"number\" class=\"form-control\" id=\"p_num"+i+"\" value=\"1\" max=\""+v.getSto_amount()+"\">").append("</td>");
			res.append("<td>").append(v.getSto_amount()).append("</td>");
			res.append("<td>").append(v.getPro_price()).append("</td>");
			res.append("<td><img src='upload/"+v.getPro_img()+"' style=\"width: 100px;\"></td>");//���� �����߰�			
			res.append("<td><img src='upload/"+v.getPro_barcode()+"' style=\"width: 100px;\"></td>");
			res.append("<td>");
			res.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
			res.append("href=\"javascript:insertproduct('").append(v.getPro_code()).append("', '");
			res.append(v.getSto_size()).append("', '").append(v.getSto_amount()).append("', '");
			res.append(v.getPro_price()).append("', '"+i+"')\">");
			res.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
			res.append("</td>");
			res.append("</tr>");
				
		}
		String str2 = res.toString();
		ModelAndView mav = new ModelAndView("ajax/sh_smang_callback2");
		mav.addObject("procont", str2);
		return mav;
	}
	
	//����α��� ĸí (�α���)
	@RequestMapping(value="bon_checkcaptcha", method=RequestMethod.POST)
	public ModelAndView bon_checkcaptcha(String id, String pwd){
		ModelAndView mav = new ModelAndView("ajax/bon_checkcaptcha");
//		String id = request.getParameter("id");
//		String pwd = request.getParameter("pwd");
		

		System.out.println("-----------bon_checkcaptcha---------");
		System.out.println("Request ID : " + id);
		System.out.println("Request PWD : " + pwd);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		String resid = bdao.logincheck(map);
		boolean res = false;
		if(id.equals(resid)){
			res=true;
		}
		System.out.println("Request RES : " + res);
		mav.addObject("res", res);
		return mav;
	}
	
	//���̵�ã�� (���)
	@RequestMapping(value="bon_findid", method=RequestMethod.POST)
	public ModelAndView bon_findid(String name, String tel1, String tel2, String tel3){
		ModelAndView mav = new ModelAndView("ajax/bon_findid");
//		String name = request.getParameter("name");
//		String tel1 = request.getParameter("tel1");
//		String tel2 = request.getParameter("tel2");
//		String tel3 = request.getParameter("tel3");
		String tel = tel1+"-"+tel2+"-"+tel3;

		System.out.println("-----------bon_findid.jsp---------");
		System.out.println("Request NAME : " + name);
		System.out.println("Request TEL : " + tel);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("tel", tel);
		String res = bdao.findid(map);
		System.out.println("Request RES : " + res);
		mav.addObject("res", res);
		return mav;
	}
	
	//���̵� ã�� ���Ϲ߼�
	@RequestMapping(value="bon_findid2", method=RequestMethod.POST)
	public void bon_findid2(HttpServletRequest request){
		// ���� ���� ����
		String mail = request.getParameter("mail");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		
		System.out.println("--------����� FIND ID ���� ������ ��--------");
		System.out.println("MAIL : "+mail);
		System.out.println("NAME : "+name);
		System.out.println("ID : "+id);
		
		String host = "smtp.naver.com";
        final String username = "ama949@naver.com"; // ������ ��� ���̹�  ID
        final String password = "skdltm11a"; // ��й�ȣ
        int port=465;
         
        // ���� ����
        String recipient = mail; // �޴� ��� E-Mail
        String subject = "APOS - ID ã�� ����Դϴ�.";
        String body = "\""+name+"\"����" +"\n\r"+"ID�� : "+id+"\n\r"+"�����մϴ�";
         
        Properties props = System.getProperties();
         
         
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.starttls.enable","true");  
        props.put("mail.smtp.ssl.trust", host);
          
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            String un=username;
            String pw=password;
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(un, pw);
            }
        });
        session.setDebug(true); //for debug
          
        Message msg = new MimeMessage(session);
        try {
			msg.setFrom(new InternetAddress(username));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			msg.setSubject(subject);
			msg.setSentDate(new Date());
			// ���� ÷�νÿ��� BodyPart�� ���
			// msg.setText(body);
			
			// ����÷�θ� ���� Multipart
			Multipart multipart = new MimeMultipart();
			
			// BodyPart�� ����
			BodyPart bodyPart = new MimeBodyPart();
			bodyPart.setText(body);
			
			// 1. Multipart�� BodyPart�� ���δ�.
			multipart.addBodyPart(bodyPart);
			
			// �̸��� �޽����� ���뿡 Multipart�� ���δ�.
			msg.setContent(multipart);
			Transport.send(msg);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// ��й�ȣã�� (���)
	@RequestMapping(value="bon_findpwd", method=RequestMethod.POST)
	public ModelAndView bon_findpwd(String name, String id){
//		String name = request.getParameter("name");
//		String id = request.getParameter("id");

		System.out.println("-----------bon_findpwd.jsp---------");
		System.out.println("Request NAME : " + name);
		System.out.println("Request ID : " + id);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("id", id);
		String res = bdao.findpwd(map);
		System.out.println("Request RES : " + res);
		ModelAndView mav = new ModelAndView("ajax/bon_findpwd");
		mav.addObject("res", res);
		return mav;
	}
	
	//��й�ȣ ã�� ���Ϲ߼�
	@RequestMapping(value="bon_findpwd2", method=RequestMethod.POST)
	public void bon_findpwd2(String name, String mail, String pwd){
		// ���� ���� ����
//					String mail = request.getParameter("mail");
//					String name = request.getParameter("name");
//					String pwd = request.getParameter("pwd");
					
					System.out.println("--------����� FIND ID ���� ������ ��--------");
					System.out.println("MAIL : "+mail);
					System.out.println("NAME : "+name);
					System.out.println("PWD : "+pwd);
					
					String host = "smtp.naver.com";
			        final String username = "ama949@naver.com"; // ������ ��� ���̹�  ID
			        final String password = "skdltm11a"; // ��й�ȣ
			        int port=465;
			         
			        // ���� ����
			        String recipient = mail; // �޴� ��� E-Mail
			        String subject = "APOS - PASS WORD ã�� ����Դϴ�.";
			        String body = "\""+name+"\"����" +"\n\r"+"PWD�� : "+pwd+"\n\r"+"�����մϴ�";
			         
			        Properties props = System.getProperties();
			         
			         
			        props.put("mail.smtp.host", host);
			        props.put("mail.smtp.port", port);
			        props.put("mail.smtp.auth", "true");
			        props.put("mail.smtp.ssl.enable", "true");
			        props.put("mail.smtp.starttls.enable","true");  
			        props.put("mail.smtp.ssl.trust", host);
			          
			        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			            String un=username;
			            String pw=password;
			            protected PasswordAuthentication getPasswordAuthentication() {
			                return new PasswordAuthentication(un, pw);
			            }
			        });
			        session.setDebug(true); //for debug
			          
			        Message msg = new MimeMessage(session);
			        try {
						msg.setFrom(new InternetAddress(username));
						msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
						msg.setSubject(subject);
						msg.setSentDate(new Date());
						// ���� ÷�νÿ��� BodyPart�� ���
						// msg.setText(body);
						
						// ����÷�θ� ���� Multipart
						Multipart multipart = new MimeMultipart();
						
						// BodyPart�� ����
						BodyPart bodyPart = new MimeBodyPart();
						bodyPart.setText(body);
						
						// 1. Multipart�� BodyPart�� ���δ�.
						multipart.addBodyPart(bodyPart);
						
						// �̸��� �޽����� ���뿡 Multipart�� ���δ�.
						msg.setContent(multipart);
						Transport.send(msg);
					} catch (MessagingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	}
	
	
	//�� ȸ������ (ajax)
		@RequestMapping(value="/sh_NCRHOTcheck", method=RequestMethod.POST)
		public ModelAndView sh_NCRHOTcheck(String email, int crnum, int hotkey){
			List<ShopHotkeyVO> list = shdao.checkhotcrnumname(crnum);
			System.out.println("Request Email : "+email);
			System.out.println("Request Crnum : "+crnum);
			System.out.println("Request hotkey :"+hotkey);
			boolean res = false;
			
			for(ShopHotkeyVO e : list){
			System.out.println("DB key_email :"+e.key_email);
			System.out.println("DB key_crnum :"+e.key_crnum);
			System.out.println("DB key_hotkey :"+e.key_hotkey);
				if((e.key_email).equals(email)){
					if( e.key_crnum == crnum ){
						if(e.key_hotkey == hotkey){
							res = true;
							System.out.println("��� :"+res);
						}
					}
				}
			}
			ModelAndView mav = new ModelAndView("ajax/sh_NCRHOTcheck");
			mav.addObject("res", res);
			return mav;
		}
	
		//���̵��ߺ�üũ
		@RequestMapping(value="/sh_shopjoincheck")
		public ModelAndView sh_shopjoincheck(String id){
			ModelAndView mav = new ModelAndView("ajax/sh_shopjoincheck");
			System.out.println(id);
			boolean res = shdao.checkid(id);
			mav.addObject("res", res);
			return mav;
		}
	
	
	@RequestMapping(value="sh_checkcaptcha", method=RequestMethod.POST)
	public ModelAndView sh_checkcaptcha(String id, String pwd, String radio){
//		String id = request.getParameter("id");
//		String pwd = request.getParameter("pwd");
//		String radio = request.getParameter("radio");
//		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		System.out.println("-----------sh_checkcaptcha---------");
		System.out.println("Request ID : " + id);
		System.out.println("Request PWD : " + pwd);
		System.out.println("Request checkBox : " +radio);
		boolean res= false;
		
		if(radio.equals("master")){
			System.out.println("--------Master Table �˻���---------");
			res = shdao.checkMasteridpwd(map);
		}else{
			System.out.println("--------Staff Table �˻���---------");
			res = shdao.checkStaffidpwd(map);
		}
		ModelAndView mav = new ModelAndView("ajax/sh_checkcaptcha");
		mav.addObject("res", res);
		return mav;
	}
		
	@RequestMapping(value="sh_ajaxsaletable")
	public ModelAndView sh_ajaxsaletable(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ajax/sh_ajaxsaletable");
		return mav;
		
	}
	
	
	// ����  �Ⱓ�� ������� ajax
//	@RequestMapping(value="sh_ajaxoutletsale")
//	public ModelAndView sh_ajaxoutletsale(){
//		ModelAndView mav= new ModelAndView("sh_ajaxoutletsale");
//		
//		
//		String shop_name =request.getParameter("shop_name");
//		String date_ps = request.getParameter("date_ps");
//		String date_ps2 = request.getParameter("date_ps2");
//		System.out.println(shop_name+date_ps+date_ps2);
//		ArrayList<SalesCheckVO> list =new ArrayList<SalesCheckVO>();
//		list=SalesCheckDao.getDao().getList(shop_name, date_ps, date_ps2 );
//		Iterator <SalesCheckVO> it = list.iterator();
//		StringBuffer res = new StringBuffer();
//		while (it.hasNext()) {
//			SalesCheckVO v= new SalesCheckVO();
//			v = it.next();
//			res.append("<tr>");
//			res.append("<th>").append(v.getDate()).append("</th>");
//			res.append("<th>").append(v.getSell_shopname()).append("</th>");
//			res.append("<th>").append(v.getSell_cash()).append("</th>");		
//			res.append("<th>").append(v.getCount()).append("</th>");
//			res.append("</tr>");
//
//		
//		return mav;
//	}
	
	
}
