<%@page import="vo.SmangVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="dao.SmangDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 
	String code = request.getParameter("pname");
	int shop_num = (int) session.getAttribute("shop_num");
	System.out.println(code);
	ArrayList<SmangVO> list = SmangDao.getDao().getListProduct(code, shop_num);
	Iterator<SmangVO> it = list.iterator();
	StringBuffer res = new StringBuffer();
	int i = 0;
	while(it.hasNext()){
		i++;
		SmangVO v = new SmangVO();
		v = it.next();
		res.append("<tr>");
		res.append("<td>"+i+"</td>");
		res.append("<td>").append(v.getShop_name()).append("</td>");
		res.append("<td>").append(v.getPro_code()).append("</td>");
		res.append("<td>").append(v.getSto_size()).append("</td>");
		res.append("<td>").append("<input type=\"number\" class=\"form-control\" id=\"p_num"+i+"\" value=\"1\" max=\""+v.getSto_amount()+"\">").append("</td>");
		res.append("<td>").append(v.getSto_amount()).append("</td>");
		res.append("<td>").append(v.getPro_price()).append("</td>");
		res.append("<td><img src='../upload/"+v.getPro_img()+"' style=\"width: 100px;\"></td>");//추후 세일추가			
		res.append("<td><img src='../upload/"+v.getPro_barcode()+"' style=\"width: 100px;\"></td>");
		res.append("<td>");
		res.append("<div class=\"btn-group\"><a class=\"btn btn-success\" ");
		res.append("href=\"javascript:insertproduct('").append(v.getPro_code()).append("', '");
		res.append(v.getSto_size()).append("', '").append(v.getSto_amount()).append("', '");
		res.append(v.getPro_price()).append("', '"+i+"')\">");
		res.append("<i class=\"icon_check_alt2\"\"></i></a></div>");
		res.append("</td>");
		res.append("</tr>");
			
	}
	String str2 = res.toString();
%>
<%=str2%>