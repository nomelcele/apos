<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
#view {
	width: 200px;
	border: 1px solid gray;
	border-top: 0px;
	margin-top: -1px;
	display: none;
	font-family: NanumGothic;
	font-size: 10px
}

table {
	width: 200px;
	border: 1px;
	color: gray;
	font-size: 12px
}
</style>
<script src="resources/js/http.js"></script>
<script src="resources/js/json2.js"></script>
<script>
	var lastKey = '';
	var check = false;
	var loopKey = false;
	function startSuggest() {
		if (check == false) {
			setTimeout("sendKeyword();", 500);
			loopKey = true;
		}
		check = true;
	}
	function sendKeyword() {
		if (loopKey == false) {
			return;
		}
		var key = f.word.value;
		if (key == '' || key == ' ') {
			lastKey = '';
			document.getElementById("view").style.display = 'none';
		} else if (key != lastKey) {
			lastKey = key;
			var param = "key=" + encodeURIComponent(key);
			sendRequest("suggest.jsp", param, res, "post");
		}
		setTimeout("sendKeyword();", 500);
	}

	var jsonObj = null;
	function res() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var response = xhr.responseText;
				jsonObj = JSON.parse(response);
				viewTable();
			} else {
				document.getElementById("view").style.display = 'none';
			}
		}
	}
	function viewTable() {
		var vD = document.getElementById("view");
		var htmlTxt = "<table>";
		for (var i = 0; i < jsonObj.length; i++) {
			htmlTxt += "<tr><td style='cursor:pointer;'onmouseover='this.style.background=\"silver\"'onmouseout='this.style.background=\"white\"' onclick='select("
					+ i + ")'>" + jsonObj[i] + "</td></tr>";
		}
		htmlTxt += "</table>";
		vD.innerHTML = htmlTxt;
		vD.style.display = "block";
	}
	function select(index) {
		f.word.value = jsonObj[index];
		document.getElementById("view").style.display = 'none';
		check = false;
		loopKey = false;
	}
</script>
</head>
<body>
	<form name="f" autocomplete="off">
		<input type="text" style="width: 200px;" name="word"
			onkeydown="startSuggest();" /> <input type="submit" value="검색" />
		<div id="view"></div>
		<div>아아아앙 배고파 점심시간 언제와?? ㅜㅜ</div>
	</form>
</body>
</html>
