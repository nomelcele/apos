<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>2x6Scope.jsp</title>
<%--jsp ���尴ü�߿� ������� 4����
pageContext- ���� ������ �������� ����
request-A,B������������ ���� -forward������ ����!
session-session���� �ۿ��� �׷� ������������ ����
application -��ü ���������� ������ ����
request-A,B --%>
<%
	//setAttribute("paramName","value"); ���� ������ ���� ����
	pageContext.setAttribute("page", "test1");
	request.setAttribute("req", "test2");
	session.setAttribute("sess", "test");
	application.setAttribute("email", "javabook@naver.com");
%>
</head>
<body>
	<a href="ex6res.jsp">�̵�</a>
</body>
</html>