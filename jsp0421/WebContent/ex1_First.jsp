<%@page import="ex1.FirstModel"%>
<%@page
	import="com.sun.org.apache.xml.internal.resolver.helpers.PublicId"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--jsp �ּ� --%>
<%--page ������ : �ʼ� ������,WAS�� ���� ������ ������ �ǵ��ϴµ� ���(web.xml)��
    ����ߴ� ������ ������ ����Ѵ�. 
    ������ ũ��,�������������� �߰����� ������ ������ �� �ִ�.
    jsp�� �ᱹ �������� ��ȯ�Ǿ� Container�� ���ؼ� ������ �ȴ�.
    ��ũ��Ʈ ��Ұ� 3����(�׳� ���丸 ������ �ֱ� �ٶ� - �̷������� ���α׷��ϸ� ��ȿ������)
    *����-�ɹ�����, ��ũ��Ʈ��-service(doGet,doPost)�� local����, 
    	ǥ����-out.println() �ȿ��� ���� ���
--%>
<%--
<%!//�����: �ɹ�����,ex1_FirstServlet.class �������� �� Ŭ������ 
	//�ɹ� ������ ���ε� �����̴�. ���� �ɹ������� �޼���� ���� �� �ִ�.
	//�׷��� ���⿡ �̷������� ���α׷����ϸ� ���������� ����� �ڵ尡 �ȴ�.
	private int num = 20;

	public String printMsg(String msg) {
		return "����� �Է��� �޼�����:" + msg + "�Դϴ�." + "Num:" + num;
	}%>
 --%>
<%
	//�и��ߴ� ��ü����
	FirstModel fm = new FirstModel();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
p {
	width: 300px;
	background: orange;
}
</style>
</head>
<body>
	<%
		//service���� -local����
		String msg = fm.printMsg("����");
		out.println("<p" + msg + "</p>"); //������ PrintWriter�� ���� ȣ��
	%>
	<%--out.println�� ���󿡼� ���� ����ϱ� ���ؼ� ǥ�������� ��� --%>
	<p><%=msg%></p>
</body>
</html>