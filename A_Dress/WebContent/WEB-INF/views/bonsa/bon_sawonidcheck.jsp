<%@page import="dao.BonsaDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	boolean res = BonsaDao.getDao().chkid(id);
	System.out.println("Request ID : "+id);
	
	if(res){
	%><p style="color:red;">�̹� �����ϴ� ���̵��Դϴ�</p>
	<%}else{
	%><p style="color:green;">��밡���� ���̵��Դϴ�</p>
	<%}
%>