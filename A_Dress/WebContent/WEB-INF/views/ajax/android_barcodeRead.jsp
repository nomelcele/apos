<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 
response.setHeader("cache-control", "no-cache");
response.setContentType("text/event-stream");
%>
${str}