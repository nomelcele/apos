<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 본사 회원관리 - 회원가입 페이지입니다. -->
	<section id="main-content"> <section class="wrapper">

	<div class="row" style="font-size: 15px;">
		<div class="col-lg-12">
			<h3 class="page-header">
				<i class="fa fa-files-o"></i> 회원가입
			</h3>

			<div class="row">
				<div class="col-lg-12">
					<section class="panel"> <!--                           <header class="panel-heading"> -->
					<!--                           </header> -->
					<div class="panel-body">
						<div class="form">


							<form method="post" action="sawonjoin" name="bon_joinForm"
								id="bon_joinForm" autocomplete="off">

								<%-- ID 입력 --%>
								<div class="form-group">
									<span style="display: block;">아이디 :</span> <input
										style="width: 20%" class="form-control" id="bon_" name="bon_"
										type="text" value="bon_" readonly="readonly" /> <input
										style="width: 79%" class="form-control" id="bon_id"
										name="bon_id" type="text" minlength="5" required />
								</div>
								<%-- ID 중복 확인 : ajax 사용 --%>
								<div id="viewID"></div>

								<%-- 비밀번호  --%>
								<div class="form-group">
									<span style="display: block;">비밀번호 :</span> <input
										class="form-control" id="bon_pwd" name="bon_pwd"
										type="password" minlength="6" required />
								</div>
								<div class="form-group">
									<span style="display: block;">비밀번호 확인 :</span> <input
										class="form-control" id="bon_pwd_ck" name="bon_pwd_ck"
										type="password" minlength="6" required />
								</div>
								<%-- 비밀번호 확인 결과--%>
								<div id="viewPWD"></div>

								<%-- 성명 --%>
								<div class="form-group">
									<span style="display: block">성 명 :</span> <input
										class="form-control" id="bon_name" name="bon_name" type="text"
										required />
								</div>
								<%-- 연락처 --%>
								<div class="form-group ">
									<span style="display: block">연락처 :</span> <select
										style="width: 23%" class="form-control">
										<option>SKT</option>
										<option>KT</option>
										<option>LG</option>
									</select>- <input style="width: 23%" class="form-control" id="bon_tel1"
										name="bon_tel1" maxlength="3" type="tel" required />- <input
										style="width: 23%" class="form-control" id="bon_tel2"
										name="bon_tel2" maxlength="4" type="tel" required />- <input
										style="width: 23%" class="form-control" id="bon_tel3"
										name="bon_tel3" maxlength="4" type="tel" required />
								</div>
								<!-- Footer -->
								<div class="form-group">
									<button type="submit" class="btn btn-default">요청</button>
								</div>
							</form>
						</div>
					</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	</section> </section>
</body>
</html>
</body>
</html>