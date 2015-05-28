<%@page import="dao.BonsaDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	boolean res = BonsaDao.getDao().chkid(id);
	System.out.println("Request ID : "+id);
	
	if(res){
	%><p style="color:red;">이미 존재하는 아이디입니다</p>
	<%}else{
	%><p style="color:green;">사용가능한 아이디입니다</p>
	<%}
%>