<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 주석은 이런식으로? --%>
<!-- 매장의 회원관리 - 회원조회 페이지입니다. -->
<script src="../js/http.js"></script>
<script src="../js/json2.js"></script>
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
		var key = sname_ps.value;
		if (key == '' || key == ' ') {
			lastKey = '';
			document.getElementById("view").style.display = 'none';
		} else if (key != lastKey) {
			lastKey = key;
			var param = "key=" + encodeURIComponent(key);
			sendRequest("suggest.jsp", param, res, "post");
		}
		setTimeout("sendKeyword();", 1000);
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
		sname_ps.value = jsonObj[index];
		document.getElementById("view").style.display = 'none';
		check = false;
		loopKey = false;
	}
</script>
<section id="main-content">
	<section class="wrapper">

		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 회원조회
				</h3>

				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<!--                           <header class="panel-heading"> -->
							<!--                           </header> -->
							<div class="panel-body">
								<div class="form">

									<form class="form-validate form-horizontal" id="feedback_form"
										method="post" action="sh.apos">
										<input type="hidden" name="cmd" value="smember"> <input
											type="hidden" name="subcmd" value="check">
											<input type="hidden" name="page" value="1">
										


										<div class="form-group ">
											<label for="cname" class="control-label col-lg-1">이름
											</label>
											<div class="col-lg-2">
												<input class="form-control" id="sname_ps" name="name"
													minlength="2" onkeydown="startSuggest();"
													autocomplete="off" type="text" required />
												<div id="view"></div>
											</div>
											<input class="form-control6" type="submit" id="btn"
												name="btn" value="조회">
										</div>



										<div class="row">
											<div class="col-lg-12">
												<section class="panel">
													<header class="panel-heading"> 회원정보 </header>

													<table
														class="table table-striped table-advance table-hover">
														<tbody>
															<tr>
																<th><i class="icon_profile"></i> 고객번호</th>
																<th><i class="icon_profile"></i> 이름</th>
																<th><i class="icon_mail_alt"></i> Email</th>
																<th><i class="icon_pin_alt"></i> 주소</th>
																<th><i class="icon_mobile"></i> 핸드폰번호</th>
																<th><i class="icon_calendar"></i> 가입날짜</th>
															</tr>
															<c:forEach var="stList" items="${list}">
																<tr>
																	<td>${stList.mem_num}</td>
																	<td>${stList.mem_name}</td>
																	<td>${stList.mem_email}</td>
																	<td>${stList.mem_addr}</td>
																	<td>${stList.mem_tel}</td>
																	<td>${stList.mem_date}</td>
		
																</tr>
															</c:forEach>
															
														</tbody>
													</table>



													<!--pagination start(페이지)-->
													<!--                           <div class="panel-body"> -->

													<div class="text-center">
														<ul class="pagination">
															<li><a href="#">«</a></li>
															<li><a href="#">1</a></li>
															<li><a href="#">2</a></li>
															<li><a href="#">3</a></li>
															<li><a href="#">4</a></li>
															<li><a href="#">5</a></li>
															<li><a href="#">»</a></li>
														</ul>
													</div>
											</div>
											<!--pagination end-->
						</section>
					</div>
				</div>




				</form>
			</div>
		</div>
	</section>
	</div>
	</div>
	</div>
	</div>

</section>
</section>