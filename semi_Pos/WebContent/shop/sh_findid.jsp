<%@page import="dao.StaffDao"%>
<%@page import="dao.ShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String tel = tel1+"-"+tel2+"-"+tel3;
	String radio = request.getParameter("radio");
	
	System.out.println("-----------SHOP_findid.jsp---------");
	System.out.println("Request NAME : " + name);
	System.out.println("Request TEL : " + tel);
	System.out.println("Request RADIO : " + radio);
	String res="";
	
	// radio = master/staff
	if(radio.equals("master")){
		System.out.println("MASTER FIND ID");
		res = ShopDao.getDao().findid(name, tel);
	}else if(radio.equals("staff")){
		System.out.println("STAFF FIND ID");
		res = StaffDao.getDao().findid(name, tel);
	}
	System.out.println("Request RES : " + res);
%><%=res%>