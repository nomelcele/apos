<%@page import="ex1.RequestInFo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>클라이언트 및 서버 정보</title>
</head>
<body>
	<%
		RequestInFo ri = new RequestInFo();
	%>
	<%=ri.RequestInFo(request)%>
</body>
</html>