<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>Login with UserID and Password</h3>
	<!-- j_spring_security_check : �� ����ؼ� ������ ��ť��Ƽ�� ���ͼ��ͷ� ��û�� -->
	<c:url var="loginUrl" value="/loging"></c:url>
	<form action="${loginUrl }" method="post">
		<table>
			<tr>
				<td>User ID:</td>
				<td><input type="text" name="username"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"/></td>
			</tr>
			<tr>
				<td colspan='2'><input type="submit" value="Login"/></td>
			</tr>
		</table>
	</form>
</body>
</html>