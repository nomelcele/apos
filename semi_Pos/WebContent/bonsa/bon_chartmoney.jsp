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
	
	int term = Integer.parseInt(request.getParameter("term"));
	String startdate = new Timecal().getMONTH(term);
	 String gender = "15_"+request.getParameter("gender")+"%";
	System.out.println("Request gender : "+gender);
	System.out.println("Request term : "+term);
	System.out.println("Request startdate :"+startdate);
	boolean res = false;
	HashMap<String, String> maps = MyMap.getMaps().getMapList(request);
	maps.put("startdate", startdate);
	maps.put("gender","15_1%");
	ArrayList<SalesCheckVO> list = new ArrayList<>();
	list= SalesCheckDao.getDao().getList(maps);
	Iterator<SalesCheckVO> it = list.iterator();
	while(it.hasNext()){
		SalesCheckVO v = new SalesCheckVO();
		v=it.next();
		System.out.println(v.getSell_card());
	}
	
	
// 	for(ShopHotkeyVO e : list){
// 	System.out.println("DB key_email :"+e.key_email);
// 	System.out.println("DB key_crnum :"+e.key_crnum);
// 	System.out.println("DB key_hotkey :"+e.key_hotkey);
// 		if((e.key_email).equals(email)){
// 			if( e.key_crnum == crnum ){
// 				if(e.key_hotkey == hotkey){
// 					res = true;
// 					System.out.println("결과 :"+res);
// 				}
// 			}
// 		}
// 	}
%>
