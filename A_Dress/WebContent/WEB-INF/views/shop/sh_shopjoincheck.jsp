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
	%><p style="color:red;">�̹� �����ϴ� ���̵��Դϴ�</p>
	<%}else{
	%><p style="color:green;">��밡���� ���̵��Դϴ�</p>
	<%}
%>