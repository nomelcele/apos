<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="captchas.CaptchasDotNet"
	contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<html>
<head>
</head>
<%
	// Construct the captchas object
	// Use same settings as in query.jsp
	CaptchasDotNet captchas = new captchas.CaptchasDotNet(
			request.getSession(true), // Ensure session
			"jtrip", // client
			"3yNe6F7kItK5fHjFZtGCMey6d6PNtYfva6Uqht4i" // secret
	);
	// Read the form values
	String id = URLDecoder.decode(request.getParameter("id"), "utf-8");
	String pw = URLDecoder.decode(request.getParameter("pw"), "utf-8");
	String password = URLDecoder.decode(request.getParameter("password"), "utf-8");

	// Check captcha
	String body;
	switch (captchas.check(password)) {
	case 's':
		body = "Session seems to be timed out or broken. ";
		body += "Please try again or report error to administrator.";
		break;
	case 'm':
		body = "Every CAPTCHA can only be used once. ";
		body += "The current CAPTCHA has already been used. ";
		body += "Please use back button and reload";
		break;
	case 'w':
		body = "You entered the wrong password. ";
		body += "Please use back button and try again. ";
		break;
	default:
		body = "ok";
		
		break;
	}
	System.out.println("aa : " + captchas.check(password));
%>
<%=body%>
</html>