<%@page import="ex1.FirstModel"%>
<%@page
	import="com.sun.org.apache.xml.internal.resolver.helpers.PublicId"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--jsp 주석 --%>
<%--page 지시자 : 필수 지시자,WAS가 현재 문서의 정보를 판독하는데 사용(web.xml)에
    기술했던 서블릿의 정보를 대신한다. 
    버퍼의 크기,에러페이지등의 추가적인 내용을 설정할 수 있다.
    jsp는 결국 서블릿으로 변환되어 Container에 의해서 실행이 된다.
    스크립트 요소가 3가지(그냥 개념만 가지고 있기 바람 - 이런식으로 프로그램하면 비효율적임)
    *선언문-맴버영역, 스크립트릿-service(doGet,doPost)의 local영역, 
    	표현식-out.println() 안에서 값을 출력
--%>
<%--
<%!//선언부: 맴버영역,ex1_FirstServlet.class 형식으로 된 클래스에 
	//맴버 영역과 매핑된 영역이다. 따라서 맴버변수나 메서드는 만들 수 있다.
	//그러나 여기에 이런식으로 프로그래밍하면 유지보수가 어려운 코드가 된다.
	private int num = 20;

	public String printMsg(String msg) {
		return "당신이 입력한 메세지는:" + msg + "입니다." + "Num:" + num;
	}%>
 --%>
<%
	//분리했던 객체생성
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
		//service영역 -local영역
		String msg = fm.printMsg("하이");
		out.println("<p" + msg + "</p>"); //서블릿의 PrintWriter를 통해 호출
	%>
	<%--out.println을 웹상에서 쉽게 출력하기 위해서 표현식으로 출력 --%>
	<p><%=msg%></p>
</body>
</html>