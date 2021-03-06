<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>login_hotkey</title>

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
</head>
<!-- 매장의 회원관리 - 회원가입 페이지입니다. -->
<section id="main-content">
	<section class="wrapper">

		<div class="row" style="font-size: 15px; width: 100%; height: 100%">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> Hotkey 발급
				</h3>

				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<!--                           <header class="panel-heading"> -->
							<!--                           </header> -->
							<div class="panel-body">
								<div class="form">

									<form class="form-validate form-horizontal" id="member_form"
										method="post" action="sh_memberjoinjoin">
										<div class="form-group ">
											<label for="cname" class="control-label col-lg-2">성명<span
												class="required">*</span></label>
											<div class="col-lg-2">
												<input class="form-control" style="width: 200px;" id="sname"
													name="mem_name" type="text" required />
											</div>
										</div>


										<div class="form-group ">
											<label for="cdate" class="control-label col-lg-2">사업자번호
												<span class="required">*</span>
											</label>
											<div class="col-lg-2">
												<input class="form-control1 " id="date" type="number"
													style="width: 200px;" name="mem_date" required />
											</div>
										</div>

										<div class="form-group ">
											<label for="cemail" class="control-label col-lg-2">Email
												<span class="required">*</span>
											</label>
											<div class="col-lg-4">
												<input class="form-control " id="smail" type="email"
													name="mem_email" style="width: 200px;" required />
											</div>
										</div>

	
			<input id="requesthotbtn" type="submit" class="btn btn-default" value="요청">
		</div>
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
	
	<!-- body -->
	
</body>
</html>