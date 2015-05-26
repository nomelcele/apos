<%@page import="dao.ShopDao"%>
<%@page import="vo.ShopHotkeyVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	boolean res = ShopDao.getDao().checkid(id);
	System.out.println("Request ID : "+id);
	
	if(res){
	%><p class="form-control" style="color:red">이미 존재하는 아이디입니다</p>
	<%}else{
	%><p class="form-control" style="color:green">사용가능한 아이디입니다</p>
	<%}
%>