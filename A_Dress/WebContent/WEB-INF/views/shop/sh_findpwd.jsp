<%@page import="dao.StaffDao"%>
<%@page import="dao.ShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String radio = request.getParameter("radio");
	
	System.out.println("-----------SHOP_findpwd.jsp---------");
	System.out.println("Request NAME : " + name);
	System.out.println("Request ID : " + id);
	System.out.println("Request RADIO : " + radio);
	String res="";
	
	if(radio.equals("master")){
		res = ShopDao.getDao().findpwd(name, id);
	}else if(radio.equals("staff")){
		res = StaffDao.getDao().findpwd(name, id);
	}
	System.out.println("Request RES : " + res);
%><%=res%>