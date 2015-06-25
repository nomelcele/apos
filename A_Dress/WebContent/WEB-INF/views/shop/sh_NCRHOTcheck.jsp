<%@page import="vo.ShopHotkeyVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String email = request.getParameter("email");
	int crnum = Integer.parseInt(request.getParameter("crnum"));
	int hotkey = Integer.parseInt(request.getParameter("hotkey"));
	ArrayList<ShopHotkeyVO> list = ShopDao.getDao().checkhotcrnumname(crnum);
	System.out.println("Request Email : "+email);
	System.out.println("Request Crnum : "+crnum);
	System.out.println("Request hotkey :"+hotkey);
	boolean res = false;
	
	for(ShopHotkeyVO e : list){
	System.out.println("DB key_email :"+e.key_email);
	System.out.println("DB key_crnum :"+e.key_crnum);
	System.out.println("DB key_hotkey :"+e.key_hotkey);
		if((e.key_email).equals(email)){
			if( e.key_crnum == crnum ){
				if(e.key_hotkey == hotkey){
					res = true;
					System.out.println("결과 :"+res);
				}
			}
		}
	}
%><%=res %>
