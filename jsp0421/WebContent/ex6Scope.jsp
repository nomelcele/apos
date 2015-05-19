<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>2x6Scope.jsp</title>
<%--jsp 내장객체중에 생명범위 4가지
pageContext- 현재 페이지 내에서만 적용
request-A,B페이지에서만 적용 -forward에서만 사용됨!
session-session으로 작용할 그룹 페이지에서만 적용
application -전체 페이지에서 무조건 적용
request-A,B --%>
<%
	//setAttribute("paramName","value"); 생명 범위에 따라서 유지
	pageContext.setAttribute("page", "test1");
	request.setAttribute("req", "test2");
	session.setAttribute("sess", "test");
	application.setAttribute("email", "javabook@naver.com");
%>
</head>
<body>
	<a href="ex6res.jsp">이동</a>
</body>
</html>