<%@page import="xml.MakeXML"%>
<%@page import="dao.ShDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="suggest.Suggest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("utf-8");
    //�񵿱������ ����ڷ� ���� �˻�� �޴´�.
	String key = request.getParameter("key");
	ArrayList<String> list =new ArrayList<String>();
	list=ShDao.getDao().suggestList(key);
	MakeXML.getMakexml().shSeggest(list);
	// xml�� �о� ���� ���ؼ� ���� Ŭ������ �޼��带 ȣ��
	%>
[<%String[] suggests = Suggest.getSuggest().getSuggest(key);if(suggests != null){for(int i=0; i<suggests.length;i++){%>"<%=suggests[i]%>"<%if(!(i == suggests.length-1)){out.print(",");}%><%}}%>]