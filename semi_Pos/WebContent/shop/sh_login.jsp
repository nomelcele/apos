<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_mapaddress.jsp" %>
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
	});
</script>
<script type="text/javascript">
	function showjoin() {
		$('.showc').show();
		$('.hidebtn').hide();
		$('.block').attr('readonly', true).css('background', 'gray').css('color', 'white');
	}
</script>
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

				<!-- body -->
				<form method="post" action="#" name="checkhot" id="checkhot">
					<div style="width: 100%;">
						<div class="modal-body2">
							E-mail:<input type="text" class="form-control4 block" name="name" placeholder="name" autofocus>
						</div>
						<div class="modal-body2">
							사업자 번호:<input type="text" class="form-control4 block" name="crnum" placeholder="crnum" autofocus>
						</div>
						<div class="modal-body2">
							HotKey:<input type="text" class="form-control4 block" name="hotkey" placeholder="hotkey" autofocus>
						</div>
						<div class="hidebtn" style="text-align: center;">**hotkey가 없으신분은 발급받으시길 바랍니다**</div>
						<button type="button" class="btn btn-default hidebtn" onclick="location='javascript:showjoin()'">다음</button>
					</div>
				</form>
									
				<form method="post" action="#" name="join" id="join">
						<div class="row" style="display: block;">
							<div class=".col-md-4 modal-body2 showc" style="display: none; width: 50%; height: 120px;">
								<span style="display: block">아이디 :</span>
									<input class="form-control" id="shop_id" name="shop_id" type="text" required />
								<span style="display: block">비밀번호 :</span>
									<input class="form-control" id="shop_pwd" name="shop_pwd" type="text" required />
							</div>
							<div class=".col-md-1" style="width: 40px;">사진:</div>
						</div>
					
					
					
					
					
					<div class="modal-body2 showc" style="display: none">성 명 :
						<input class="form-control" id="shop_name" name="shop_name" type="text" required /></div>
					<div class="modal-body2 showc" style="display: none">연락처 :
						<input class="form-control" id="shop_tel" name="shop_tel" type="text" required /></div>
					<div class="modal-body2 showc" style="display: none">매장명 :
						<input class="form-control" id="shop_name" name="shop_name" type="text" required /></div>
					<div class="modal-body2 showc" style="display: none">
						<span style="display: block;">주소 :</span> 
							<input class="form-control2" type="text" id="sample4_postcode1" name="adr1">- 
							<input class="form-control2" style="display: inline;" type="text" id="sample4_postcode2" name="adr2">
							<input class="form-control5" style="display: inline;" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기 "><br>
					</div>

					<div class="modal-body2 showc" style="display: none">
						<span style="display: block;">상세주소 :</span> 
							<input class="form-control3" style="width: 100%" type="text" id="sample4_roadAddress" placeholder="도로명주소" name="adr3"> 
							<input class="form-control3" style="width: 49%; display: inline;" type="text" id="sample4_jibunAddress" placeholder="지번주소" name="adr4">
							<input class="form-control3" style="width: 50%;" type="text" id="sample4_detailAddress" placeholder="나머지주소" name="adr5">
					</div>
				
					<div class="modal-body2 showc" style="display: none">
						<span style="display: block;">사진 :</span>
					</div>
					<!-- Footer -->
					<div class="modal-footer showc" style="display: none">
						<button type="submit" class="btn btn-default" data-dismiss="modal">요청</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="container">
		<form class="login-form" action="sh_index.jsp">
			<div class="login-wrap">
				<p class="login-img">
					<i class="icon_lock_alt"></i>
				</p>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" placeholder="Username"
						autofocus>
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="password" class="form-control" placeholder="Password">
				</div>
				<label class="checkbox"> <input type="checkbox"
					value="remember-me"> Remember me <span class="pull-right">
						<a href="#"> Forgot Password?</a>
				</span>
				</label> <label class="checkbox"> <span class="pull-right"
					id="getHotkey" style="cursor: pointer;">Get HotKey</span>
				</label>
				<button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
				<input class="btn btn-info btn-lg btn-block" type="button" value="SignUp" id="SignUpBtn"> 
					
			</div>
		</form>
	</div>
</body>
</html>
