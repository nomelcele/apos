<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
		$(function(){
			$('#requesthotbtn').click(function(){
				resetFormElement($('.modal-body2'));
			});
		});
</script>
<body>
	<!-- header -->
	<div class="modal-header">
		<!-- 닫기(x) 버튼 -->
		<button type="button" class="close" data-dismiss="modal">×</button>
		<!-- header title -->
		<h4 class="modal-title" style="font-weight: bold;">Get Hot key</h4>
	</div>
	
	<!-- body -->
	<form method="post" action="sh.apos" name="requesthot" id="requesthot">
		<input type="hidden" name="cmd" value="sjoin">
		<input type="hidden" name="subcmd" value="shopgethotkey">
		
		<div style="width: 100%; height: 200px; margin: auto;">
			<div class="modal-body2">성 명:
			<input type="text" class="form-control4" name="name" placeholder="name" autofocus></div>
			<div class="modal-body2">사업자 번호:
			<input type="text" class="form-control4" name="crnum" placeholder="crnum" autofocus></div>
			<div class="modal-body2">E-mail:
			<input type="text" class="form-control4" name="email" placeholder="e-mail" autofocus></div>
		</div>
		<!-- Footer -->
		<div class="modal-footer">
		승인 요청이 수락되면 mail로 hotkey를 발송해드립니다.
			<input id="requesthotbtn" type="submit" class="btn btn-default" value="요청">
		</div>
	</form>
</body>
</html>