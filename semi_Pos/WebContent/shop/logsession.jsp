<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<c:when test="${sessionScope.radio == 'master'}"> 
		<script>
			$('#hideMenu').show(); // 정산관리 보이게 하기 display:none
			$('#staff_span').hide();
			$('#master_span').show();
		</script>
	</c:when>
	<c:when test="${sessionScope.radio == 'staff'}"> 
		<script>
			$('#master_span').hide();
			$('#staff_span').show();
		</script>
	</c:when>
	<c:otherwise> 
	</c:otherwise>
</c:choose>