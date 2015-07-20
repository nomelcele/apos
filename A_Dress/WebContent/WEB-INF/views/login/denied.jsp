<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<button type="button"  id="return" 	onclick="javascript:history.back(-1)">Return</button>

<script>
function return_1() {
		document.getElementById("dreturn").submit();

	}
</script>
	<form action="return_denied" method="post" id="dreturn">
       <img src ="resources/img/wrong.jpg" style="margin-left:5px" width="100%"; height="70%";>
</form>


     
</body>
</html>