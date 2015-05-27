<%@page import="captchas.CaptchasDotNet"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="vo.ShopHotkeyVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ShopDao"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin
	Template</title>

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
		$('#getHotkey').click(function() {
			$('#modal1').modal({
				remote : 'sh_gethotkey.jsp'
			});
		});
		$('#SignUpBtn').click(function() {
				$('#modal2').modal('show');
		});
		
		$('#nextJoinBtn').click(function(){
            $.ajax({
                   url: "sh_NCRHOTcheck.jsp?email="+$('#email').val()+"&crnum="+$('#crnum').val()+"&hotkey="+$('#hotkey').val(),
                   type: "POST",
                   dataType: "html",
                   success: function(data) {
                    if(data.trim() == "true"){
                    	alert("success!")
                    	$('#checkhot').submit();
                    }else{
                    	alert("입력된 정보가 잘 못 되었습니다.")
                    }
                   },
                   error: function(a, b) {
                       alert("Request: " + JSON.stringify(a));
                   }
               });
		});
		
		// --------------- captcha Start --------------
		$("#captcha").hide();	// 첨에 captcha 숨겨놓는다.
		
		// count 수 증가시켜서 3이 되면 captcha 보이게!!
		var count = 0;

		$("#loginBtn").click(
				function() {
					$.ajax({
						url : "sh_checkcaptcha.jsp?id="+$('#id').val() + "&pwd=" + $('#pwd').val(),
						type : "POST",
						dataType : "html",
						success : function(res) {
							console.log(res.trim());
							// 실패했을떄
							if (res.trim() == "false") {
								alert("아이디와 비밀번호 확인하세요.");
								count++;
								if (count >= 3) {
									$("#captcha").show();
									//$("#loginBtn").hide();
									$("#targetCapt").load("sh_checkcapt.jsp", {
										password : encodeURIComponent($("#captchapwd").val())
									}, function(res) {
										var captcha = $("#targetCapt").text().trim();
										console.log(captcha)
										if (captcha == "ok") {
											console.log("로그인가능");
											// 여기서 location으로 보내주기 controller로 보내기?
											// id랑 pw 보내줘야행
											$('#loginForm').submit();
										} else {
											alert("보안문자 확인해주세요.");
										}
									});
								}
							} else {
								// res.trim()== "true" 일때 (성공)
								$('#loginForm').submit();
							}
						}
					});
				})

		// 그리고 captcha 인증 성공하면 로그인 시도하도록!
		// ok시에 로그인시도 가능...
// 		$("#captLogin").click(function() {
			
// 		});
		
		// --------------- captcha END --------------
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
<body class="login-img3-body">
	<div id="modal1" class="modal fade">
		<div class="modal-dialog" style="width: 400px; text-align: center;">
			<div class="modal-content"></div>
		</div>
	</div>

	<div id="modal2" class="modal fade">
		<div class="modal-dialog" style="width: 600px; height:auto; text-align: center;">
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
				<form method="post" action="sh_shopjoin.jsp" name="checkhot" id="checkhot">
				<input type="hidden">
				<input type="hidden">
					<div style="width: 100%;">
						<div class="modal-body2">
							E-mail:<input type="text" class="form-control4 block" id="email" name="email" placeholder="email" autofocus>
						</div>
						<div class="modal-body2">
							사업자 번호:<input type="text" class="form-control4 block" id="crnum"name="crnum" placeholder="crnum" autofocus>
						</div>
						<div class="modal-body2">
							HotKey:<input type="text" class="form-control4 block" id="hotkey" name="hotkey" placeholder="hotkey" autofocus>
						</div>
						<div id="target"></div>
						<div class="hidebtn" style="text-align: center;">**hotkey가 없으신분은 발급받으시길 바랍니다**</div>
						<input type="button" id="nextJoinBtn" class="btn btn-default hidebtn" value="다음">
					</div>
				</form>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<form class="login-form" action="sh_index.jsp" id="loginForm" autocomplete="off">
			<div class="login-wrap">
				<p class="login-img">
					<i class="icon_lock_alt"></i>
				</p>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" placeholder="User_id" id="id" autofocus>
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="password" class="form-control" placeholder="Password" id="pwd">
				</div>
				<label class="checkbox"> <input type="checkbox"
					value="remember-me"> Remember me <span class="pull-right">
						<a href="sh_shopSearch.jsp"> Forgot Password?</a>
				</span>
				</label>
				
				<%-- captcha Start --%>
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
					<tr">
						<td></td>
						<td><input class="form-control" id="captchapwd" size="16" /></td>
					</tr>
					
				</table>
				<div id="targetCapt" style="display: none;"></div>
				<%-- captcha END --%>
				
				<input type="button" class="btn btn-primary btn-lg btn-block" id="loginBtn" value="Login">
				<input class="btn btn-info btn-lg btn-block" type="button" value="SignUp" id="SignUpBtn"> 
					
			</div>
		</form>
	</div>
</body>
</html>
