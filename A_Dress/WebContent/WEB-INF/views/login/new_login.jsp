<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="vo.ShopHotkeyVO"%>
<%@page import="java.util.ArrayList"%>
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
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="resources/css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="resources/css/elegant-icons-style.css" rel="stylesheet" />
<link href="resources/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/style-responsive.css" rel="stylesheet" />

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
		//모달창띄우기~~~~~~~~~~~~~~~~
		$('#hotkey').click(function() {
			$('#modal2').modal('hide');
			$('#modal3').modal('show');
		});
		$('#join').click(function(){
			$('#modal2').modal('hide');
			$('#modal4').modal('show');
		});
		$('#shopmodal').click(function() {
				$('#modal2').modal('show');
		});
		$('#bonmodal').click(function() {
			
			$('#bon_bonjoinsubmit').submit();
	});
		//////////////////////////////////
		
		
		
		
		
		
		$('#nextJoinBtn').click(function(){
            $.ajax({
                   url: "NCRHOTcheck",
                   type: "POST",
                   data : {
                	   email : $('#email').val(),
                	   crnum : $('#crnum').val(),
                	   hotkey : $('#hotkey2').val()
                   },
                   success: function(data) {
                    if(data.trim() == "true"){
                    	alert("success!")
                    	$('#submithot').submit();
                    }else{
                    	alert("입력된 정보가 잘 못 되었습니다.")
                    }
                   },
                   error: function(a, b) {
                       alert("Request: " + JSON.stringify(a));
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
			$('#shidfindBtn').click(function(){
				$.ajax({
					url : "findid_sh",
					type : "POST",
					data : {
						email : $('#find_email1').val(),
						name : $('#find_name1').val(),
						tel : $('#find_tel1').val()+"-"+$('#find_tel2').val()+"-"+$('#find_tel3').val()
						
					},
					success : function(data) {
						// 실패 했을 때
						if (data.trim() == 'false') {
							alert("아이디와 비밀번호 확인하세요.");
						} else {
							alert("입력하신 E-mail로  ID가 전송되었습니다.");
							$('#find_modal').modal('hide');
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
			$('#shpwdfindBtn').click(function(){
				$.ajax({
					url : "findpwd_sh",
					type : "POST",
					data : {
						name : $('#find_name2').val(),
						id : $('#find_id').val(),
						email : $('#find_email2').val()
					},
					success : function(data) {
						// res는 pwd
						
						if (data.trim()=="false") {
							alert("입력한 정보가 없습니다.");
						} else {
							alert("입력하신 E-mail로  PWD가 전송되었습니다.");
							$('#find_modal').modal('hide');
						}
					}
				});
				
			});
		});
	});
	
</script>
<div style=margin-top:6%;>
<body class="login-img3-body">
<form action="submithot" id="submithot" method="post">
</form>

<form action="submitJoin" id="bon_bonjoinsubmit" method="post">
</form>

	<!-- 본사회원가입 모달 -->
	<div id="modal1" class="modal fade">
		<div class="modal-dialog" style="width: 400px; text-align: center;">
			<div class="modal-content">
			<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title"style="font-weight: bold; font-family: '나눔바른고딕체 Light'">회원 가입</h4>
				</div>
			<div>
			
				<!-- body -->
									
				<form method="post" action="sawonjoin" name="bon_joinForm" id="bon_joinForm" autocomplete="off">
				
						<%-- ID 입력 --%>
						<div class="modal-body2" ><span style="display: block;">아이디 :</span>
						<input style="width: 20%" class="form-control" id="bon_" name="bon_"type="text" value="bon_" readonly="readonly" />
						<input style="width: 79%" class="form-control" id="bon_id" name="bon_id" type="text" minlength="5" required />
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
						 	<select style="width: 23%" class="form-control">
	                                          		<option>SKT</option>
	                                          		<option>KT</option>
	                                          		<option>LG</option>
                             </select>-
							 <input style="width: 23%" class="form-control" id="bon_tel1" name="bon_tel1" maxlength="3" type="tel" required />-
                             <input style="width: 23%" class="form-control" id="bon_tel2" name="bon_tel2" maxlength="4" type="tel" required />-
                             <input style="width: 23%" class="form-control" id="bon_tel3" name="bon_tel3" maxlength="4" type="tel" required />
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

	<!-- 샵-핫키,가입 선택모달 -->
	<div id="modal2" class="modal fade">
		<div class="modal-dialog" style="width: 400px; height:auto; text-align: center;">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title"style="font-weight: bold; font-family: '나눔바른고딕체 Light'">회원 가입</h4>
				</div>
				<div >
				<!-- body -->
			
						<div style="width: 100%;" >
						
						
						
						<div class="modal-body2">
							<input type="button" value="hotkey" class="form-control4 block" id="hotkey" name="hotkey" placeholder="hotkey" autofocus>
						</div>
						
						<div class="modal-body2">
						<input type="button" value="join" class="form-control4 block" id="join" name="join" placeholder="hotkey" autofocus>
						</div>
						
						
						<div id="target"></div>
						<div class="hidebtn" style="text-align: center;"></div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 핫키발급 모달 -->
	<div id="modal3" class="modal fade">
		<div class="modal-dialog" style="width: 500px; height:auto; text-align: center;">
			<div class="modal-content">
			<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title"style="font-weight: bold; font-family: '나눔바른고딕체 Light'">회원 가입</h4>
				</div>
			<div>
			
				<!-- body -->
									
				<form method="post" action="requesthot" name="requesthot" id="requesthot" autocomplete="off">
						<%-- 성명 --%>
						<div class="modal-body2"><span style="display: block">성 명 :</span>
							<input class="form-control" id="key_name" name="key_name" type="text" required /></div>
						<%-- 사업자번호 --%>
						<div class="modal-body2"><span style="display: block">사업자번호 :</span>
							<input class="form-control" id="key_crnum" name="key_crnum" type="text" required /></div>
						<%-- 이메일 --%>
						<div class="modal-body2"><span style="display: block">e-mail :</span>
							<input class="form-control" id="key_email" name="key_email" type="text" required /></div>
						
						<!-- Footer -->
						<div class="modal-footer" >
							<button type="submit" class="btn btn-default" >요청</button>
						</div>
				</form>
				
				</div>	
				
				
			</div>
		</div>
	</div>
	
	
	<!-- 핫키확인모달 -->
<div id="modal4" class="modal fade">
		<div class="modal-dialog" style="width: 500px; height:auto; text-align: center;">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title"style="font-weight: bold; font-family: '나눔바른고딕체 Light'">회원 가입</h4>
				</div>
				<div >
				<!-- body -->
				<form method="post" action="submithot" name="checkhot" id="checkhot" autocomplete="off">
					<div style="width: 100%;" >
						<div class="modal-body2">
							<input type="text" class="form-control4 block" id="email" name="email" placeholder="이메일" autofocus>
						</div>
						<div class="modal-body2">
							<input type="text" class="form-control4 block" id="crnum"name="crnum" placeholder="사업자번호"  autofocus>
						</div>
						<div class="modal-body2">
							<input type="text" class="form-control4 block" id="hotkey2" name="hotkey" placeholder="hotkey" autofocus>
						</div>
						<div id="target"></div>
						<div class="hidebtn" style="text-align: center;"></div>
						<input type="button" id="nextJoinBtn" class="btn btn-default hidebtn" value="다음">
					</div>
				</form>
				</div>
			</div>
		</div>
	</div>
	
	

	<div class="container">
		<form class="login-form" action="loging" id="loginForm" autocomplete="off" method="post">
			<div class="login-wrap">
				<p class="login-img">
					<i class="icon_lock_alt"></i>
				</p>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" placeholder="User_id" id="id" name="username" autofocus>
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="password" class="form-control" placeholder="Password" id="pwd" name="password">
				</div>
				<label class="checkbox" style="padding-left: 0; font-weight: bold;">
					 
					
				<span class="pull-right" id="find"><a href="#"> Find ID/PWD</a>
				</span>
				</label>
				
<!-- 				<label class="checkbox"> -->
<!-- 				<span class="pull-right" id="getHotkey" style="cursor: pointer;"> Get HotKey!!</span> -->
<!-- 				</label> -->

				
				<div style="width: 100%; margin-bottom: 1%">
				<input class="btn btn-primary btn-lg btn-inline" type="button" value="bonsa" id="bonmodal" style="width: 50%">
				<input class="btn btn-danger btn-lg btn-inline" type="button" value="shop" id="shopmodal" style="width: 49.1%">
				</div>
				
				<input type="submit" class="btn btn-info btn-lg btn-block" id="loginBtn" value="Login">
					
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
					<input type="radio" id="findid" name="radioIDPWD" value="findid" > ID &nbsp;
					<input type="radio" id="findpwd" name="radioIDPWD" value="findpwd" > PWD
					<%-- ID 찾기 --%>
					<form method="post" action="*.apos" name="findidform" id="findidform" autocomplete="off" style="display: none">
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
						<input type="button" id="shidfindBtn" class="btn btn-default" value="찾기">
						<div id="findid_res"></div>
					</form>

					<%-- PWD 찾기 --%>
					<form method="post" action="*.apos" name="findpwdform" id="findpwdform" autocomplete="off" style="display: none">
					<input type="hidden" name="cmd" value="sjoin">
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
						<input type="button" id="shpwdfindBtn" class="btn btn-default" value="찾기">
						<div id="findid_res"></div>
					</form>
					
						<!-- Footer -->
						<div class="modal-footer" >
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<%--Modal2 ID/PWD 찾기  : END --%>
</body>
</html>
