<%@page import="java.util.Iterator"%>
<%@page import="dao.ShDao"%>
<%@page import="vo.MemVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
    System.out.println(name);
	ArrayList<MemVO> list = ShDao.getDao().getListMember(name);
	Iterator<MemVO> it = list.iterator();
	StringBuffer res = new StringBuffer();
	while(it.hasNext()){
		MemVO v = new MemVO();
		v = it.next();
		res.append("<tr>");
		res.append("<td>").append(v.getMem_num()).append("</td>");
		res.append("<td>").append(v.getMem_name()).append("</td>");
		res.append("<td>").append(v.getMem_addr()).append("</td>");
		res.append("<td>").append(v.getMem_tel()).append("</td>");
		res.append("<td>").append(v.getMem_mileage()).append("</td>");
		res.append("<td>");
		res.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
		res.append("href=\"javascript:ckcustomer('").append(v.getMem_name()).append("', '");
		res.append(v.getMem_tel()).append("', '");
		res.append(v.getMem_mileage()).append("')\">");
		res.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
		res.append("</td>");
		res.append("</tr>");
		
	}
	String str = res.toString();
%>
<%=str%>