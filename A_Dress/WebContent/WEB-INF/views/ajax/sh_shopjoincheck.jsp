<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${res }">
	<p style="color:green;">��밡���� ���̵��Դϴ�</p>
	</c:when>
	<c:otherwise>
	<p style="color:red;">�̹� �����ϴ� ���̵��Դϴ�</p>
	</c:otherwise>
</c:choose>