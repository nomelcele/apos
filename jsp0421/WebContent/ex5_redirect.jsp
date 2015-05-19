<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ex5_redirect.jsp</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		System.out.println("Name:" + name);
		//redirect일 때는 requestScope로 심어도 다음페이지에서 참조할 수 없다.
		//이유는 redirect일 때는 response객체를 통해서 브라우저에 의해서 강제로
		//이동 시킬 때 WAS는 새롭게 request,response 두객체를 새롭게 생성시키기 때문에
		//기존이 값은 모두 초기화 된다.*************
		request.setAttribute("name", name);
		response.sendRedirect("ex5_redirectPage.jsp?name="+name);
	%>
</body>
</html>