<%@page import="xml.MakeXML"%>
<%@page import="dao.ShDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="suggest.Suggest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");
    //비동기식으로 사용자로 부터 검색어를 받는다.
	String key = request.getParameter("key");
	ArrayList<String> list =new ArrayList<String>();
	list=ShDao.getDao().suggestList(key);
	MakeXML.getMakexml().shSeggest(list);
	// xml을 읽어 오기 위해서 만든 클래스의 메서드를 호출
	%>
[<%String[] suggests = new Suggest().getSuggest(key);if(suggests != null){for(int i=0; i<suggests.length;i++){%>"<%=suggests[i]%>"<%if(!(i == suggests.length-1)){out.print(",");}%><%}}%>]