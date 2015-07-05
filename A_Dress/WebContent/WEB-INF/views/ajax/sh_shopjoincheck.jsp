<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${res }">
	<p style="color:green;">사용가능한 아이디입니다</p>
	</c:when>
	<c:otherwise>
	<p style="color:red;">이미 존재하는 아이디입니다</p>
	</c:otherwise>
</c:choose>