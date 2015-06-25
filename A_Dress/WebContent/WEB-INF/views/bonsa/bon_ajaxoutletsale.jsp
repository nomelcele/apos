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
	String shop_name = request.getParameter("shop_name");
	String date_ps = request.getParameter("date_ps");
	String date_ps2 = request.getParameter("date_ps2");
	System.out.println(shop_name+date_ps+date_ps2);
	ArrayList<SalesCheckVO> list =new ArrayList<SalesCheckVO>();
	list=SalesCheckDao.getDao().getList(shop_name, date_ps, date_ps2 );
	Iterator <SalesCheckVO> it = list.iterator();
	StringBuffer res = new StringBuffer();
	while (it.hasNext()) {
		SalesCheckVO v= new SalesCheckVO();
		v = it.next();
		res.append("<tr>");
		res.append("<th>").append(v.getDate()).append("</th>");
		res.append("<th>").append(v.getSell_shopname()).append("</th>");
		res.append("<th>").append(v.getSell_cash()).append("</th>");		
		res.append("<th>").append(v.getCount()).append("</th>");
		res.append("</tr>");

	}
	//res.append("</tr>");
	String strString = res.toString();
	System.out.println(strString);
	// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
%>
<%=strString%>