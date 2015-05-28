<%@page import="java.util.Iterator"%>
<%@page import="dao.ProductDao"%>
<%@page import="vo.ProductVO"%>
<%@page import="vo.ShopHotkeyVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pcode3= request.getParameter("pcode3");
	String pnum3= request.getParameter("pnum3");
 	System.out.println("Request Email2 : "+ pcode3+" , "+pnum3);
	ArrayList<ProductVO> list = new ArrayList();
	list = ProductDao.getDao().getListProduct_bon2(pcode3,pnum3);
    Iterator<ProductVO> it = list.iterator();
    StringBuffer res = new StringBuffer();
	while (it.hasNext()) {
		ProductVO v = new ProductVO();
		v = it.next();
		
		res.append("<tr>");
		res.append("<th>").append(v.getPro_name()).append("</th>");
		res.append("<th>").append(v.getShop_name()).append("</th>");
		res.append("<th>").append(v.getSto_size()).append("</th>");		
		res.append("<th>").append("<input type='number'").append("value="+v.getSto_amount()+">").append("</th>");
		res.append("</tr>");

	}
	String strString = res.toString();
	System.out.println(strString);
%>
<%=strString%>