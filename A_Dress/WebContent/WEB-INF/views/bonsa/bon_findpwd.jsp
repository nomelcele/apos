<%@page import="dao.BonsaDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");

	System.out.println("-----------bon_findpwd.jsp---------");
	System.out.println("Request NAME : " + name);
	System.out.println("Request ID : " + id);
	
	
	String res = BonsaDao.getDao().findpwd(name, id);
	System.out.println("Request RES : " + res);
%><%=res%>