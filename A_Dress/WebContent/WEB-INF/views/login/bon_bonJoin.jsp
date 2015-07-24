<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<!-- Bootstrap CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="resources/css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="resources/css/elegant-icons-style.css" rel="stylesheet" />
<link href="resources/css/font-awesome.min.css" rel="stylesheet" />
<!-- full calendar css-->
<link
	href="resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link href="resources/assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" />
<!-- easy pie chart-->
<link
	href="resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- owl carousel -->
<link rel="stylesheet" href="resources/css/owl.carousel.css"
	type="text/css">
<link href="resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<!-- Custom styles -->
<link rel="stylesheet" href="resources/css/fullcalendar.css">
<link href="resources/css/widgets.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/style-responsive.css" rel="stylesheet" />
<link href="resources/css/xcharts.min.css" rel=" stylesheet">
<link href="resources/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}

.error {
	color: red;
	font-weight: bold;
}
</style>
<script>
	//자바 스크립트 정규표현식
	var regType1 = /^[0-9]*$/;

	var idchk = false;
	var pwdchk = false;
	//본사회원가입 아이디중복체크
	$(function() {

		$('#bon_id')
				.keyup(
						function() {
							//아무것도 없을때 
							if ($('#bon_id').val().length < 1) {
								$("#viewID").hide();
							} else if ($('#bon_id').val().length < 4
									&& $('#bon_id').val().length > 0) {
								$("#viewID").show();
								$('#viewID').css("color", "red");
								$('#viewID').text("ID가 너무 짧습니다. (4자 이상-8자 이하)");

							} else {

								$
										.ajax({
											url : "bo_idchk",
											type : "POST",
											data : {
												id : "bon_"
														+ $('#bon_id').val()
											},
											success : function(data) {

												$("#viewID").show();
												if (data.trim() == "true") {
													idchk = true;
													$("#viewID")
															.html(
																	"<p style=\"color:green; \">사용가능한 아이디입니다</p>");

												} else {
													idchk = false;
													$("#viewID")
															.html(
																	"<p style=\"color:red;\">이미 존재하는 아이디입니다</p>");

												}
											}
										});
							}
						});

		//본사회원가입 패스워드체크

		$('#bon_pwd_ck').keyup(function() {

			if ($('#bon_pwd').val() == $('#bon_pwd_ck').val()) {
				$('#viewPWD').css("color", "green");
				$('#viewPWD').text("비밀번호가 일치합니다");
				pwdchk = true;
			} else {
				$('#viewPWD').css("color", "red");
				$('#viewPWD').text("비밀번호가 일치하지 않습니다");
				pwdchk = false;
			}

		});

		$('#submit_button').click(
				function() {

					if (idchk == true) {
						if (pwdchk == true) {
							if (($('#bon_tel1').val().length < 1)
									|| ($('#bon_tel2').val().length < 1)
									|| ($('#bon_tel3').val().length < 1)) {
								alert("전화번호를 입력하세요.")
							} else if ((!regType1.test(document
									.getElementById('bon_tel1').value))||(!regType1.test(document
											.getElementById('bon_tel2').value))||(!regType1.test(document
													.getElementById('bon_tel3').value))) {
								alert('전화번호에는 숫자만 입력해주세요');
							}else  if(($('#tel1').val().length < 3)	|| ($('#tel2').val().length < 3)	|| ($('#tel3').val().length < 4)) {
								alert("전화번호를 확인해주세요.");
							} else {
								$('#bon_tel').val(
										$('#bon_tel1').val() + "-"
												+ $('#bon_tel2').val() + "-"
												+ $('#bon_tel3').val());
								$('#bon_joinForm').submit();
							}
						} else {
							alert("비밀번호가 불일치 합니다");
							return false;
						}
					} else {
						alert("ID 입력값이 잘못 되었습니다.");
						return false;
					}

				});
	});
</script>



<body>
	<div style="z-index: 1; position: relative; margin-left: 45px;">
		<img src="resources/img/ZARA5.jpg ">

		<!-- 본사 회원관리 - 회원가입 페이지입니다. -->
		<div style="z-index: 2;">

			<div class="row"
				style="font-size: 15px; margin-top: -780px; margin-left: 30px;">

				<div class="col-lg-5">
					<h3 class="page-header" style="font-family: '210 나무고딕'">
						<i class="fa fa-files-o"></i> 회원가입
					</h3>

					<div class="row">
						<div class="col-lg-12">

							<div class="panel-body">
								<div class="form">


									<form:form method="post" action="sawonjoin" name="bon_joinForm"
										id="bon_joinForm" commandName="BonsaVO">

										<div class="form-group" style="font-family: '210 나무고딕'">
											<span style="display: block;">아이디 :</span> <input
												style="width: 20%;" class="form-control" id="bon_"
												name="bon_" type="text" value="bon_" readonly="readonly" />
											<form:input path="bon_id" style="width: 30%"
												class="form-control" id="bon_id" name="bon_id" type="text"
												maxlength="8" />
											<form:errors path="bon_id" cssClass="error" />
										</div>
										<%-- ID 중복 확인 : ajax 사용 --%>
										<div id="viewID"></div>

										<%-- 비밀번호  --%>
										<div class="form-group" style="font-family: '210 나무고딕'">
											<span style="display: block;">비밀번호 :</span>
											<form:password path="bon_pwd" class="form-control"
												id="bon_pwd" name="bon_pwd" style="width: 40%" />
											<form:errors path="bon_pwd" cssClass="error" />
										</div>
										<div class="form-group" style="font-family: '210 나무고딕'">
											<span style="display: block;">비밀번호 확인 :</span> <input
												class="form-control" id="bon_pwd_ck" name="bon_pwd_ck"
												type="password" style="width: 40%" minlength="6" />

										</div>
										<%-- 비밀번호 확인 결과--%>
										<div id="viewPWD"></div>

										<%-- 성명 --%>
										<div class="form-group" style="font-family: '210 나무고딕'">
											<span style="display: block">성 명 :</span>
											<form:input path="bon_name" style="width: 30%"
												class="form-control" id="bon_name" name="bon_name"
												type="text" />
											<form:errors path="bon_name" cssClass="error" />
										</div>
										<%-- 연락처 --%>
										<div class="form-group " style="font-family: '210 나무고딕'">
											<span style="display: block">연락처 :</span> <select
												style="width: 20%" class="form-control">
												<option>KT</option>
												<option>LG</option>
											</select>- <input path="bon_tel1" style="width: 23%"
												class="form-control" id="bon_tel1" maxlength="3" type="text" />-
											<input style="width: 23%" class="form-control" id="bon_tel2"
												maxlength="4" type="text" />- <input style="width: 23%"
												class="form-control" id="bon_tel3" maxlength="4" type="text" />
										</div>
										<!-- Footer -->
										<div class="form-group" style="font-family: '210 나무고딕'">
											<button type="button" class="btn btn-default"
												id="submit_button">요청</button>
										</div>
										<input type="hidden" id="bon_tel" name="bon_tel">
									</form:form>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	</section>
	</div>
</body>
</html>
