<%@page import="dao.BonsaDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String tel = tel1+"-"+tel2+"-"+tel3;

	System.out.println("-----------bon_findid.jsp---------");
	System.out.println("Request NAME : " + name);
	System.out.println("Request TEL : " + tel);
	
	
	String res = BonsaDao.getDao().findid(name, tel);
	System.out.println("Request RES : " + res);
%><%=res%>