<%@page import="java.util.Iterator"%>
<%@page import="dao.ProductDao"%>
<%@page import="vo.ProductVO"%>
<%@page import="vo.ShopHotkeyVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pname1= request.getParameter("pname1");
// 	ArrayList<ShopHotkeyVO> list = ShopDao.getDao().checkhotcrnumname(crnum);
 	System.out.println("Request Email : "+pname1);
// 	System.out.println("Request Crnum : "+crnum);
// 	System.out.println("Request hotkey :"+hotkey);
	ArrayList<ProductVO> list = new ArrayList();
	list = ProductDao.getDao().getListProduct_bon(pname1);
    Iterator<ProductVO> it = list.iterator();
    StringBuffer res = new StringBuffer();
	//res.append("<tr>");
	
	while (it.hasNext()) {
		ProductVO v = new ProductVO();
		v = it.next();
		res.append("<tr>");
		res.append("<th>").append(v.getPro_name()).append("</th>");
		res.append("<th>").append(v.getPro_code()).append("</th>");
		res.append("<th>").append(v.getPro_date()).append("</th>");		
		res.append("<th>").append(v.getPro_img()).append("</th>");
		res.append("</tr>");

	}

//boolean res = false;
	
// 	for(ShopHotkeyVO e : list){
	
// 		if((e.key_email).equals(email)){
// 			if( e.key_crnum == crnum ){
// 				if(e.key_hotkey == hotkey){
// 					res = true;
// 					System.out.println("결과 :"+res);
// 				}
// 			}
// 		}
// 	}

	//res.append("</tr>");
	String strString = res.toString();
	System.out.println(strString);
	// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
%>
<%=strString%>