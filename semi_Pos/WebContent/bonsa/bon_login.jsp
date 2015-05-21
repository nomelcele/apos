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
	});
</script>
  <body class="login-img3-body">

    <div class="container">
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
									
				<form method="post" action="#" name="join" id="join">
						<%-- ID 입력 --%>
						<div class="modal-body2" ><span style="display: block;">아이디 :</span>
								<input class="form-control" id="shop_id" name="shop_id" type="text"  required />	</div>
						<%-- ID 중복 확인 : ajax 사용 --%>
						<div id="viewID"></div>
						
						<%-- 비밀번호  --%>
						<div class="modal-body2" ><span style="display: block;">비밀번호 :</span>
								<input class="form-control" id="shop_pwd" name="shop_pwd" type="text" required /></div>
						<div class="modal-body2" ><span style="display: block;">비밀번호 확인 :</span>
								<input class="form-control" id="shop_pwd" name="shop_pwd_ck" type="text" required /></div>
						<%-- 비밀번호 확인 결과--%>
						<div id="viewID"></div>	
										 	
						<%-- 성명 --%>
						<div class="modal-body2"><span style="display: block">성 명 :</span>
							<input class="form-control" id="shop_name" name="shop_name" type="text" required /></div>
						<%-- 연락처 --%>
						<div class="modal-body2 "><span style="display: block">연락처 :</span>
							<input class="form-control" id="shop_tel" name="shop_tel" type="text" required /></div>
						<!-- Footer -->
						<div class="modal-footer" >
							<button type="submit" class="btn btn-default" data-dismiss="modal">요청</button>
						</div>
						
				</form>
				</div>
			</div>
		</div>
	</div>
      <form class="login-form" action="bon_index.jsp">        
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
              <input type="text" class="form-control" placeholder="Username" autofocus>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" class="form-control" placeholder="Password">
            </div>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> <a href="#"> Forgot Password?</a></span>
            </label>
            <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
            <input class="btn btn-info btn-lg btn-block" type="button" value="SignUp" id="SignUpBtn">
        </div>
      </form>

    </div>


  </body>
</html>
