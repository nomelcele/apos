<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script>
$(function(){
	//전체선택 체크박스에 클릭했을 경우에 이밴트 발생
	$('.inchkAll').click(function(){
		//is(:checked):전체 선택 체크박스가 선택이 되었을 때 조건
		if($(this).is(':checked')){
			//모든 체크박스의 속성에 checked를 추가해서 그값을 true-> 체크된 상태
			//attr(속성명,속성값)
			//<img src='이미지경로'>
			//\$('img').attr('src','이미지경로');
			$('.inchk').attr('checked',true);
		}else{
			$('.inchk').attr('checked',false);
		}
	});
});</script>
</head>
<body>
<form method="post" action="viewParameter.jsp"method="post">
이름<input type="text" name="name" size="10"><br>
주소<input type="text" name="address" size="30"><br>
<input type="checkbox" id="chkAll" class="inchkAll">
전체선택<div>
좋아하는 동물:
<input type="checkbox"name="pet" class="inchk" checked="checked" value="dog">강아지
<input type="checkbox"name="pet" class="inchk" value="cat">고양이
<input type="checkbox"name="pet" class="inchk" value="pig">돼지
<input type="checkbox"name="pet" class="inchk" value="eagles">독수리
<input type="checkbox"name="pet" class="inchk" value="elegator">악어

<input type="submit" value="전송">
</div>
</form>

</body>
</html>