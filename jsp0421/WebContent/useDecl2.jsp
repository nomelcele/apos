<%@page import="ex1.UseDecl2java"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% UseDecl2java ud = new UseDecl2java();%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int value1 = 3;
		int value2 = 9;
		int addResult = ud.add(value1, value2);
		int subtractResult = ud.subtract(value1, value2);
	%>

	<%=value1%>+<%=value2%>=<%=addResult%>
	<br>
	<%=value1%>-<%=value2%>=<%=subtractResult%>
</body>
</html>