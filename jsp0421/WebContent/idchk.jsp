<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String[] str={"xman","gopass","javabook"};
String id = request.getParameter("id");
boolean res =false;
for(String e: str){
	if(e.equals(id)){
		res =true;
		break;
	}
}
if(res){
	%><p style="color:pink">�̹� �����ϴ� ���̵��Դϴ�.</p>
	<%}else{ %>
	<p style="color:green">��밡���� ���̵��Դϴ�.</p>
<% }%>
