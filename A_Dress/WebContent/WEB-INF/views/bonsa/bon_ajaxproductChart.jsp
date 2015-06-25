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
	String pro_code = request.getParameter("pro_code");
	String date_ps = request.getParameter("date_ps");
	String date_ps2 = request.getParameter("date_ps2");
	System.out.println(pro_code+date_ps+date_ps2);
	ArrayList<SalesCheckVO> list =new ArrayList<SalesCheckVO>();
	list= SalesCheckDao.getDao().getProductList(pro_code, date_ps, date_ps2);
	Iterator <SalesCheckVO> it = list.iterator();
	StringBuffer res = new StringBuffer();
	res.append("[ ['Month', '판매 금액'],");
	while (it.hasNext()) {
		SalesCheckVO v= new SalesCheckVO();
		v = it.next();
		res.append("['");;
		res.append(v.getDate()).append("',");
		//res.append(v.getSell_proname()).append(",");
		res.append(v.getSell_cash()).append(",");;		
		res.append("],");
		System.out.println("========================"+"ttest"+v.getDate()+v.getSell_cash());

	}
	res.append("]");
	//res.append("</tr>");
	String strString = res.toString();
	System.out.println(strString);
	// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
%>
<%=strString%>