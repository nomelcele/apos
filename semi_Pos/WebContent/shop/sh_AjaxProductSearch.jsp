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
	String key = request.getParameter("key");
	String sql = "15_" + key;
	ArrayList<ProductVO> list = new ArrayList<ProductVO>();
	list = ShDao.getDao().getListProduct(sql);
	Iterator<ProductVO> it = list.iterator();
	StringBuffer res = new StringBuffer();
	//res.append("<tr>");
	while (it.hasNext()) {
		ProductVO v = new ProductVO();
		v = it.next();
		res.append("<tr>");
		res.append("<th>").append(v.getPro_num()).append("</th>");
		res.append("<th>").append(v.getPro_code()).append("</th>");
		res.append("<th>").append(v.getPro_name()).append("</th>");		
		res.append("<th>").append(v.getPro_amount()).append("</th>");
		res.append("<th>").append(v.getPro_img()).append("</th>");
		res.append("</tr>");

	}
	//res.append("</tr>");
	String strString = res.toString();
	System.out.println(strString);
	// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
%>
<%=strString%>