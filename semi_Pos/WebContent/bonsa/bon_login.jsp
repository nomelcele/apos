<%@page import="captchas.CaptchasDotNet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin Template</title>

    <!-- Bootstrap CSS -->    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="../css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="../css/elegant-icons-style.css" rel="stylesheet" />
    <link href="../css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function() {
		$('#SignUpBtn').click(function() {
				$('#modal2').modal('show');
		});
		// ID 중복체크
		$('#bon_id').keyup(function(){
			$('#viewID').load("bon_sawonidcheck.jsp?id="+$('#bon_id').val());
		});
		
		$('#bon_pwd_ck').keyup(function(){
			if($('#bon_pwd').val() == $('#bon_pwd_ck').val()){
				$('#viewPWD').css("color","green");
				$('#viewPWD').text("비밀번호가 일치합니다");
			}else{
				$('#viewPWD').css("color","red");
				$('#viewPWD').text("비밀번호가 일치하지 않습니다");
			}
		});
		
		$("#captcha").hide();	// 첨에 captcha 숨겨놓는다.
		
		// count 수 증가시켜서 3이 되면 captcha 보이게!!
		var count = 0;
		$("#bon_login").click(
				function() {
					$.ajax({
						url : "bon_checkcaptcha.jsp?id="+$('#bon_login_id').val() + "&pwd=" + $('#bon_login_pwd').val(),
						type : "POST",
						dataType : "html",
						success : function(res) {
							// 실패했을떄
							if (res.trim() == "false") {
								alert("아이디와 비밀번호 확인하세요.");
								count++;
								if (count >= 3) {
									$("#captcha").show();
									$("#targetCapt").load("bon_checkcapt.jsp", {
										password : encodeURIComponent($("#captchapwd").val())
									}, function(res) {
										var captcha = $("#targetCapt").text().trim();
										console.log(captcha)
										if (captcha == "ok") {
											console.log("로그인가능");
											// 여기서 location으로 보내주기 controller로 보내기?
											// id랑 pw 보내줘야행
											$('#bon_loginform').submit();
										} else {
											alert("보안문자 확인해주세요.");
										}
									});
								}
							} else {
								// res.trim()== "true" 일때 (성공)
								$('#bon_loginform').submit();
							}
						}
					});
				});
		
		// ID/PWD 찾기 버튼- 모달열기
		$('#find').click(function() {
			$('#find_modal').modal('show');
		});
		// ID 찾기 버튼을 눌렀을때
		$('#findid').click(function(){
			$('#findidform').show();
			$('#findpwdform').hide();
			// 찾기 버튼 
			$('#findBtn').click(function(){
				$.ajax({
					url : "bon_findid.jsp?name=" + $('#find_name1').val()+ "&tel1=" + $('#find_tel1').val()+ "&tel2=" + $('#find_tel2').val()+ "&tel3=" + $('#find_tel3').val(),
					type : "POST",
					dataType : "html",
					success : function(res) {
						// 실패 했을 때
						if (res.trim() == "") {
							alert("아이디와 비밀번호 확인하세요.");
						} else {
							alert("입력하신 E-mail로  ID가 전송되었습니다.");
							$.ajax({
									url : "*.apos?cmd=mailSelect&subcmd=findid&mail=" +$('#find_email1').val()+"&name="+$('#find_name1').val()+ "&tel2=" + "&id="+res.trim(),
									type : "POST",
									dataType : "html",
									success : function() {
									}
								});
							$('#findidform').submit();
						}
					}
				});
			});
		});
		// PWD 찾기 버튼을 눌렀을때
		$('#findpwd').click(function(){
			$('#findpwdform').show();
			$('#findidform').hide();
			// 찾기 버튼 
			$('#findBtn').click(function(){
				$.ajax({
					url : "bon_findpwd.jsp?name="+$('#find_name2').val()+"&id=" + $('#find_id').val(),
					type : "POST",
					dataType : "html",
					success : function(res) {
						// res는 pwd
						if (res.trim()=="") {
							alert("입력한 정보가 없습니다.");
						} else {
							alert("입력하신 E-mail로  PWD가 전송되었습니다.");
							$.ajax({
								url : "*.apos?cmd=mailSelect&subcmd=findpwd&mail="+$('#find_email2').val()+"&name="+$('#find_name2').val()+"&pwd="+res.trim(),
								type : "POST",
								dataType : "html",
								success : function() {
								}
							});
							$('#findpwdform').submit();
						}
					}
				});
				
			});
		});
		
		
	});
</script>
<%
	// Construct the captchas object (Default Values)
	CaptchasDotNet captchas = new captchas.CaptchasDotNet(
			request.getSession(true), // Ensure session
			"jtrip", // client
			"3yNe6F7kItK5fHjFZtGCMey6d6PNtYfva6Uqht4i" // secret
	);
%>
<body class="login-img4-body">
	<%-- MODAL  --%>
    <div class="container">
	<div id="modal2" class="modal fade">
		<div class="modal-dialog" style="width: 500px; height:auto; text-align: center;">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title"style="font-weight: bold; font-family: '나눔바른고딕체 Light'">회원 가입</h4>
				</div>
				<div>
				<!-- body -->
									
				<form method="post" action="*.apos" name="bon_joinForm" id="bon_joinForm" autocomplete="off">
				<input type="hidden" name="cmd" value="bshop">
				<input type="hidden" name="subcmd" value="sawonjoin">
						<%-- ID 입력 --%>
						<div class="modal-body2" ><span style="display: block;">아이디 :</span>
								<input class="form-control" id="bon_id" name="bon_id" type="text" minlength="5" required />
						</div>
						<%-- ID 중복 확인 : ajax 사용 --%>
						<div id="viewID"></div>
						
						<%-- 비밀번호  --%>
						<div class="modal-body2" ><span style="display: block;">비밀번호 :</span>
								<input class="form-control" id="bon_pwd" name="bon_pwd" type="password" minlength="6" required /></div>
						<div class="modal-body2" ><span style="display: block;">비밀번호 확인 :</span>
								<input class="form-control" id="bon_pwd_ck" name="bon_pwd_ck" type="password" minlength="6" required /></div>
						<%-- 비밀번호 확인 결과--%>
						<div id="viewPWD"></div>	
										 	
						<%-- 성명 --%>
						<div class="modal-body2"><span style="display: block">성 명 :</span>
							<input class="form-control" id="bon_name" name="bon_name" type="text" required /></div>
						<%-- 연락처 --%>
						<div class="modal-body2 "><span style="display: block">연락처 :</span>
						 	<select style="width: 20%" class="form-control">
	                                          		<option>SKT</option>
	                                          		<option>KT</option>
	                                          		<option>LG</option>
                             </select>-
							 <input style="width: 20%" class="form-control" id="bon_tel1" name="bon_tel1" maxlength="3" type="tel" required />-
                             <input style="width: 20%" class="form-control" id="bon_tel2" name="bon_tel2" maxlength="4" type="tel" required />-
                             <input style="width: 20%" class="form-control" id="bon_tel3" name="bon_tel3" maxlength="4" type="tel" required />
						</div>
						<!-- Footer -->
						<div class="modal-footer" >
							<button type="submit" class="btn btn-default" >요청</button>
						</div>
				</form>
				
				</div>
			</div>
		</div>
	</div>
      <form class="login-form" action="*.apos" id="bon_loginform" autocomplete="off">     
      			<input type="hidden" name="cmd" value="bshop">
				<input type="hidden" name="subcmd" value="sawonlogin">
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
              <input type="text" id="bon_login_id" name="bon_login_id" class="form-control" placeholder="bonsa_id" autofocus>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" id="bon_login_pwd" name="bon_login_pwd" class="form-control" placeholder="Password">
            </div>
            <label class="checkbox">
                <span class="pull-right" id="find"> <a href="#"> Find ID/PWD</a></span>
            </label>
            <table id="captcha" style="width: 90%">
				<tr>
					<td></td>
					<td>
					<%-- 
		            % it's possible to set a random in captchas.image("xyz"),
		            % captchas.imageUrl("xyz") and captchas.audioUrl("xyz").
		            % This is only needed at the first request
		            --%> <%=captchas.image()%><br>
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input class="form-control" id="captchapwd" size="16" /></td>
				</tr>
			</table>
			<div id="targetCapt" style="display: none;"></div>
			<input class="btn btn-primary btn-lg btn-block" id="bon_login" type="button" value="LogIn">
            <input class="btn btn-info btn-lg btn-block" type="button" value="SignUp" id="SignUpBtn">
        </div>
      </form>

    </div>
    
    <%--Modal2 ID/PWD 찾기  : START --%>
	<div class="container">
	<div id="find_modal" class="modal fade">
		<div class="modal-dialog" style="width: 500px; height:auto; text-align: center;">
			<div class="modal-content">
			<!-- header -->
				<div class="modal-header">
				<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title"style="font-weight: bold; font-family: '나눔바른고딕체 Light'">회원 가입</h4>
				</div>
				<div>
				<!-- body -->
					<input type="radio" id="findid" name="radio" value="findid" > ID
					<input type="radio" id="findpwd" name="radio" value="findpwd" > /PWD
					
					<%-- ID 찾기 --%>
					<form method="post" action="*.apos" name="findidform" id="findidform" autocomplete="off" style="display: none">
					<input type="hidden" name="cmd" value="bshop">
					<input type="hidden" name="subcmd" value="findId">
						<div class="modal-body2" ><span style="display: block;">E-mail</span>
								<input class="form-control" id="find_email1" name="find_email1" type="email"  required />
						</div>
										 	
						<div class="modal-body2"><span style="display: block">성 명 :</span>
							<input class="form-control" id="find_name1" name="find_name1" type="text" required /></div>

						<div class="modal-body2 "><span style="display: block">연락처 :</span>
						 	<select style="width: 20%" class="form-control">
	                                          		<option>SKT</option>
	                                          		<option>KT</option>
	                                          		<option>LG</option>
                             </select>-
							 <input style="width: 20%" class="form-control" id="find_tel1" name="find_tel1" maxlength="3" type="tel" required />-
                             <input style="width: 20%" class="form-control" id="find_tel2" name="find_tel2" maxlength="4" type="tel" required />-
                             <input style="width: 20%" class="form-control" id="find_tel3" name="find_tel3" maxlength="4" type="tel" required />
						</div>
						<div id="findid_res"></div>
					</form>

					<%-- PWD 찾기 --%>
					<form method="post" action="*.apos" name="findpwdform" id="findpwdform" autocomplete="off" style="display: none">
					<input type="hidden" name="cmd" value="bshop">
					<input type="hidden" name="subcmd" value="findPwd">
						<div class="modal-body2" ><span style="display: block;">ID</span>
								<input class="form-control" id="find_id" name="find_id" type="text"  required />
						</div>
						
						<div class="modal-body2" ><span style="display: block;">E-mail</span>
								<input class="form-control" id="find_email2" name="find_email2" type="email"  required />
						</div>
										 	
						<div class="modal-body2"><span style="display: block">성 명 :</span>
							<input class="form-control" id="find_name2" name="find_name2" type="text" required />
						</div>
						<div id="findid_res"></div>
					</form>
					
						<!-- Footer -->
						<div class="modal-footer" >
							<input type="button" id="findBtn" class="btn btn-default" value="찾기">
						</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<%--Modal2 ID/PWD 찾기  : END --%>
  </body>
</html>
