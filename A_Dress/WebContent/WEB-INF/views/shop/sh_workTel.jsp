<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 매장의업무관리- 연락처페이지입니다. -->


<script src="resources/js/http.js"></script>
<script src="resources/js/json2.js"></script>
<script>
var lastKey = ''
var check = false
var loopKey = false

function startSuggest() {
if (check == false) {
setTimeout("sendKeyword();", 500);
loopKey = true
}
check = true
}
function sendKeyword() {
if (loopKey == false) {
return
}
var key = sname_ps.value
if (key == '' || key == ' ') {
lastKey = ''
document.getElementById("view").style.display ='none'
} else if (key != lastKey) {
lastKey = key
var param = "key=" + encodeURIComponent(key);
sendRequest("suggest.jsp", param, res, "post");
}
setTimeout("sendKeyword();", 1000);
}

var jsonObj = null
function res() {

if (xhr.readyState == 4) {
if (xhr.status == 200) {
var response = xhr.responseText
jsonObj = JSON.parse(response);
viewTable();
} else {
document.getElementById("view").style.display ='none'
}
}
}
function viewTable() {
var vD = document.getElementById("view");
var htmlTxt = "<table>"
for (var i = 0; i < jsonObj.length; i++) {
htmlTxt += "<tr><td style='cursor:pointer;'onmouseover='this.style.background=\"silver\"'onmouseout='this.style.background=\"white\"' onclick='select("
+ i + ")'>" + jsonObj[i] + "</td></tr>"
}
htmlTxt +="</table>"
vD.innerHTML = htmlTxt
vD.style.display = "block"
}
function select(index) {
sname_ps.value = jsonObj[index];
document.getElementById("view").style.display = 'none'
check = false
loopKey = false
}

function telaction(){
	document.getElementById("telform").submit();
}
</script>
<section id="main-content">
	<section class="wrapper">
		<div class="col-lg-12">
			<h3 class="page-header">
				<i class="fa fa-files-o"></i> 매장 직원 연락처
			</h3>

			<div class="row" style="font-size: 12px; width: 125%; height: 100%;">
				<div class="col-lg-21" style="margin-left: 20px">


					<div class="row">
						<div class="col-lg-21" style="margin-left: 2px">
							>
							<section class="panel">
								<!--                           <header class="panel-heading"> -->
								<!--                           </header> -->
								<div class="panel-body"
									style="margin-left: 20px; margin-top: 10px;">


									<form id="telform" method="post" action="sh_workTelSearch">
										<input class="form-control" id="sname_ps" name="shop_name"
											style="width: 80%" onkeydown="startSuggest();" 
											onkeypress="if(event.keyCode==13){javascript:telaction(); return false;}"
											type="text"
											placeholder=지점명>
										<button type="button" id="btn"
											onclick="javascript:telaction()" class="btn btn-primary">검색</button>
									</form>
									<div id="view" class="form-control" style="display: none"></div>
									<table class="table table-condensed">
										<thead>
											<tr>
												<th>지원 번호</th>
												<th>이름</th>
												<th>직급</th>
												<th>지점</th>
												<th>연락처</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="sList" items="${list}">
												<tr>
													<td>${sList.staff_num}</td>
													<td>${sList.staff_name}</td>
													<td>${sList.staff_position}</td>
													<td>${sList.shop_sname}</td>
													<td>${sList.staff_tel}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</section>





