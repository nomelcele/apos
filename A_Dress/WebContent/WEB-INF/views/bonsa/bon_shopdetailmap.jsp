<%@page import="java.util.ArrayList"%>
<%@page import="vo.ShopVO"%>
<%@page import="dao.BonsaDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int shop_num = Integer.parseInt(request.getParameter("shop_num"));

	System.out.println("-----------bon_shopdetailmaps.jsp---------");
	System.out.println("Request SHOP_NUM : " +shop_num);
	
	ShopVO res= BonsaDao.getDao().detailmap(shop_num);
	
	System.out.println("Request RES1 : " + 	res.getName());
	System.out.println("Request RES2 : " + 	res.getMaster());
	System.out.println("Request RES3 : " + 	res.getAdr());
	String result = res.getName()+"/"+res.getMaster()+"/"+res.getAdr();
	
%><%=result%>