<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<spring:url value="resources/css/default.css" var="defaultCss"/>
<link rel="stylesheet" type="text/css" href="${defaultCss}">

</head>
<body>
   <div id="wrap">
   <!-- header, menu -->
   <tiles:insertAttribute flush="true" name="header"/>
   <tiles:insertAttribute flush="true" name="menu"/>
      <div class="content">
         <!-- body -->
         <tiles:insertAttribute flush="true" name="body"/>
      </div>
   <!-- footer -->
   <tiles:insertAttribute flush="true" name="footer"/>
   </div>
</body>
</html>