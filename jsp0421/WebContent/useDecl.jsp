<%@page import="ex1.UseDecljava"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	UseDecljava ud = new UseDecljava();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����θ� ����� �� ���� ���� ��</title>
</head>
<body>
	10*25=<%=ud.multiply(10, 25)%>
</body>
</html>