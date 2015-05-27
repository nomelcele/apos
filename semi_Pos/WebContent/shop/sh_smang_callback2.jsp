<%@page import="dao.SmangDao"%>
<%@page import="vo.SmangVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 
	String code = request.getParameter("pro_code");
	ArrayList<SmangVO> list = SmangDao.getDao().getListProduct(code);
	

%>