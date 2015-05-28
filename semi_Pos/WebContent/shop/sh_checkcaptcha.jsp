<%@page import="dao.ShopDao"%>
<%@ page language="java" import="captchas.CaptchasDotNet"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String radio = request.getParameter("radio");
	

	System.out.println("-----------sh_checkcaptcha---------");
	System.out.println("Request ID : " + id);
	System.out.println("Request PWD : " + pwd);
	System.out.println("Request checkBox : " +radio);
	boolean res= false;
	
	if(radio.equals("master")){
		System.out.println("--------Master Table 검색중---------");
		res = ShopDao.getDao().checkMasteridpwd(id, pwd);
	}else{
		System.out.println("--------Staff Table 검색중---------");
		res = ShopDao.getDao().checkStaffidpwd(id, pwd);
	}
%><%=res%>
