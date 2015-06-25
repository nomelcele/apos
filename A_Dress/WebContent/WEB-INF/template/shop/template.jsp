<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<spring:url value="resources/css/default.css" var="defaultCss"/>
<link rel="stylesheet" type="text/css" href="${defaultCss}">

</head>
<body>
   <div id="wrap">
   <!-- header, menu -->
   <tiles:insertAttribute flush="true" name="top"/>
   <tiles:insertAttribute flush="true" name="left"/>
      <div class="content">
         <!-- body -->
         <tiles:insertAttribute flush="true" name="body"/>
      </div>

   </div>
</body>
</html>