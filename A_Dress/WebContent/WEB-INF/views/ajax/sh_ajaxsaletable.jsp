<%@page import="vo.SalesCheckVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="vo.ProductVO"%>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//비동기식으로 사용자로 부터 검색어를 받는다.
	
	String shop_num =request.getParameter("shop_num");
	String date_ps = request.getParameter("date_ps");
	System.out.println(shop_num+date_ps);
	ArrayList<SalesCheckVO> list =new ArrayList<SalesCheckVO>();
	//list=SalesCheckDao.getDao().getonday(shop_num, date_ps);
	Iterator <SalesCheckVO> it = list.iterator();
	StringBuffer res = new StringBuffer();
	while (it.hasNext()) {
		SalesCheckVO v= new SalesCheckVO();
		v = it.next();
		res.append("<tr>");
		res.append("<th>").append(v.getDate()).append("</th>");
		res.append("<th>").append(v.getSell_pronum()).append("</th>");
		res.append("<th>").append(v.getSell_cash()).append("</th>");		
		res.append("<th>").append(v.getSell_many()).append("</th>");	
		res.append("<th>").append(v.getSell_memnum()).append("</th>");
		res.append("</tr>");

	}
	//res.append("</tr>");
	String strString = res.toString();
	System.out.println(strString);
	// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
%>
<%=strString%>