<%@page import="vo.SmangVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="vo.ProductVO"%>
<%@page import="xml.MakeXML"%>
<%@page import="dao.ShDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="suggest.Suggest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//비동기식으로 사용자로 부터 검색어를 받는다.
	String key = request.getParameter("key");
	String shop_num=request.getParameter("shop_num");
	System.out.println("=================");
	System.out.println("shopNum"+shop_num+"key"+key);
	String sql = "15_" + key;
	ArrayList<SmangVO> list = ShDao.getDao().getListProduct(sql,shop_num);
	Iterator<SmangVO> it = list.iterator();
	StringBuffer res = new StringBuffer();
	//res.append("<tr>");
	int i=0;
		while(it.hasNext()){
			i++;
			SmangVO v = new SmangVO();
			v = it.next();
			res.append("<tr>");
			res.append("<td>"+i+"</td>");
			res.append("<td>").append(v.getPro_name()).append("</td>");
			res.append("<td>").append(v.getPro_code()).append("</td>");
			res.append("<td>").append(v.getSto_size()).append("</td>");
			res.append("<td>").append(v.getSto_amount()).append("</td>");
			res.append("<td>").append(v.getPro_price()).append("</td>");
			res.append("<td><img src='../upload/"+v.getPro_img()+"' style=\"width: 100px;\"></td>");//추후 세일추가			
			res.append("<td><img src='../upload/"+v.getPro_barcode()+"' style=\"width: 100px;\"></td>");
			res.append("</tr>");
				
		}

	//res.append("</tr>");
	String strString = res.toString();
	System.out.println(strString);
	// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
%>
<%=strString%>