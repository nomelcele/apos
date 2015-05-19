<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ex5_redirectPage.jsp</title>
</head>
<body>

	<%
		String namec = request.getParameter("name");
		System.out.println("Name:" + namec);
		String name = (String) request.getAttribute("name");
	%>
	Name:
<%=name %>
</body>
</html>