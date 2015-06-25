<%@page import="vo.SalesCheckVO"%>
<%@page import="dao.SalesCheckDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="vo.ProductVO"%>
<%@page import="xml.MakeXML"%>
<%@page import="dao.ShDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="suggest.Suggest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//비동기식으로 사용자로 부터 검색어를 받는다.
	
	String name =request.getParameter("name");
	int sellnum =Integer.parseInt(name);
	System.out.println(name);
	ArrayList<SalesCheckVO> list =new ArrayList<SalesCheckVO>();
	list=SalesCheckDao.getDao().searchSellnum(sellnum);
	Iterator <SalesCheckVO> it = list.iterator();
	StringBuffer res = new StringBuffer();
	while (it.hasNext()) {
		SalesCheckVO v= new SalesCheckVO();
		v = it.next();
		res.append("<tr>");
		res.append("<th>").append(v.getSell_num()).append("</th>");
		res.append("<th>").append(v.getSell_memname()).append("</th>");
		res.append("<th>").append(v.getSell_pronum()).append("</th>");		
		res.append("<th>").append(v.getSell_cash()).append("</th>");	
		res.append("<th>").append(v.getSell_many()).append("</th>");
		res.append("</tr>");

	}
	//res.append("</tr>");
	String strString = res.toString();
	System.out.println(strString);
	// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
%>
<%=strString%>