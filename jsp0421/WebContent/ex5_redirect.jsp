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
		//redirect�� ���� requestScope�� �ɾ �������������� ������ �� ����.
		//������ redirect�� ���� response��ü�� ���ؼ� �������� ���ؼ� ������
		//�̵� ��ų �� WAS�� ���Ӱ� request,response �ΰ�ü�� ���Ӱ� ������Ű�� ������
		//������ ���� ��� �ʱ�ȭ �ȴ�.*************
		request.setAttribute("name", name);
		response.sendRedirect("ex5_redirectPage.jsp?name="+name);
	%>
</body>
</html>