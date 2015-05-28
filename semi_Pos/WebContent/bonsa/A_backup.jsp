<%@page import="java.util.Iterator"%>
<%@page import="dao.SalesCheckDao"%>
<%@page import="vo.SalesCheckVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="util.MyMap"%>
<%@page import="util.Timecal"%>
<%@page import="vo.ShopHotkeyVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//String enddate = request.getParameter("enddate");
	StringBuffer sb = new StringBuffer();
	int term = Integer.parseInt(request.getParameter("term"));
	String startdate = new Timecal().getMONTH(term);
	System.out.println("Request term : "+term);
	System.out.println("Request startdate :"+startdate);
	ArrayList<SalesCheckVO> list = new ArrayList<>();
	list= SalesCheckDao.getDao().getList("15_1%", startdate);
	Iterator<SalesCheckVO> it =list.iterator();
	sb.append("[ ['Month', '판매 금액', '판매량' ],");
	while(it.hasNext()){
		SalesCheckVO v= new SalesCheckVO();
		v=it.next();
		sb.append("['").append(v.getDate()).append("',");
		sb.append(v.getSell_card()).append(",").append(v.getCount());
		sb.append("],");		
	}
	sb.append("]");
	String res = sb.toString();
%>
<%=res%>
