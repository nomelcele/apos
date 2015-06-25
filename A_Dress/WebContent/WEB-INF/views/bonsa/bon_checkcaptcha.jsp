<%@page import="dao.BonsaDao"%>
<%@ page language="java" import="captchas.CaptchasDotNet"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	System.out.println("-----------bon_checkcaptcha---------");
	System.out.println("Request ID : " + id);
	System.out.println("Request PWD : " + pwd);
	
	boolean	res = BonsaDao.getDao().logincheck(id, pwd);
	System.out.println("Request RES : " + res);
	
%><%=res%>
