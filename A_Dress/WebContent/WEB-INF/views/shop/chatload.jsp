<%@page import="dao.ChatDao"%>
<%@page import="vo.ChaVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	//shop쪽
	response.setHeader("cache-control", "no-cache");
	response.setContentType("text/event-stream");
	String id = (String) session.getAttribute("shop_name");
	ArrayList<ChaVO> list = ChatDao.getDao().getList();
	StringBuffer outs = new StringBuffer();
	//outs.append("retry:2000\n");
	outs.append("data:");
	for(ChaVO e : list){
		if(e.getU_id().equals(id)){
			outs.append("<li class=\"by-other\">");
			outs.append("<div class=\"avatar pull-right\"><img src=\"../img/user22.png\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
			outs.append(e.getCdate());
			outs.append("<span class=\"pull-right\">");
			outs.append(e.getU_id());
			outs.append("</span></div>");
			outs.append(e.getChat());
			outs.append("<div class=\"clearfix\"></div></div></li>");
			
		}else{
			outs.append("<li class=\"by-me\">");
			outs.append("<div class=\"avatar pull-left\"><img src=\"../img/user.jpg\" alt=\"\"/></div><div class=\"chat-content\"><div class=\"chat-meta\">");
			outs.append(e.getU_id());
			outs.append("<span class=\"pull-right\">");
			outs.append(e.getCdate());
			outs.append("</span></div>");
			outs.append(e.getChat());
			outs.append("<div class=\"clearfix\"></div></div></li>");
			
		}
		
	}
	outs.append("\n\n");
	//System.out.println(outs);

// 	response.setHeader("cache-control", "no-cache");
// 	response.setContentType("text/event-stream");
// 	ArrayList<ChaVO> list = ChatDao.getDao().getList();
// 	StringBuffer outs = new StringBuffer();
// 	//outs.append("retry:2000\n");
// 	outs.append("data:");
// 	for(ChaVO e : list){
// 		outs.append("<p style='color:black; border:1px dotted white'>");
// 		outs.append(e.getU_id());
// 		outs.append("/");
// 		outs.append(e.getChat());
// 		outs.append("</p>");
// 	}
// 	outs.append("\n\n");
// 	System.out.println("체크2");
	%><%=outs%>