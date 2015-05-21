<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>

<!-- 본사의 상품관리의 상품추가 페이지 입니다. -->

<section id="main-content">
	<section class="wrapper">

		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 상품추가
				</h3>


				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<div class="panel-body">
								<div class="form">

									<form class="form-validate form-horizontal" id="feedback_form"
										method="post" action="sh.apos">
										<input type="hidden" name="cmd" value="bproduct"> <input
											type="hidden" name="subcmd" value="add">

										<div style="float: left; margin: 0; width: 400px;">
											<div class="form-group ">
												<label style="width: 100px;" for="cname"
													class="control-label col-lg-2">상품번호</label>
												<div class="col-lg-2">
													<input class="form-control" style="width: 260px;"
														id="sname" name="name" minlength="2" type="text" required />
												</div>
											</div>

											<div class="form-group ">
												<label style="width: 100px;" for="cname"
													class="control-label col-lg-2">물품명</label>
												<div class="col-lg-2">
													<input class="form-control" style="width: 260px;"
														id="sname" name="name" minlength="2" type="text" required />
												</div>
											</div>

											<div class="form-group ">
												<label style="width: 100px;" for="cname"
													class="control-label col-lg-2">물품코드</label>
												<div class="col-lg-2">
													<input class="form-control" style="width: 260px;"
														id="sname" name="name" minlength="2" type="text" required />
												</div>
											</div>

											<div class="form-group ">
												<label style="width: 100px;" for="cname"
													class="control-label col-lg-2">사이즈</label>
												<div class="col-lg-2">
													<input class="form-control" style="width: 260px;"
														id="sname" name="name" minlength="2" type="text" required />
												</div>
											</div>

											<div class="form-group ">
												<label style="width: 100px;" for="cname"
													class="control-label col-lg-2">바코드</label>
												<div class="col-lg-2">
													<input class="form-control" style="width: 260px;"
														id="sname" name="name" minlength="2" type="text" required />
												</div>
											</div>

											<div class="form-group ">
												<label style="width: 100px;" for="cname"
													class="control-label col-lg-2">판매금액</label>
												<div class="col-lg-2">
													<input class="form-control" style="width: 260px;"
														id="sname" name="name" minlength="2" type="text" required />
												</div>
											</div>
											<div style="float: right; margin-right: 50px;">
												<button type="submit" class="btn btn-primary">추가</button>
											</div>
										</div>


										<div class=".col-md-1"
											style="float: left; margin-right: 50px;">
											<button type="submit" class="btn btn-primary"
												style="margin-left: 100px;">사진추가</button>


											<div
												style="width: 200px; height: 120px; border: 2px solid black; margin-top: 10px; margin-bottom: 10px; margin-left: 100px;"
												id="img" name="img"></div>
										</div>
										<div style="float: left;"></div>


										<div class=".col-md-1"
											style="float: left; margin-right: 300px;">
											<button type="submit" class="btn btn-primary"
												style="margin-left: 100px;">바코드추가</button>

											<div
												style="width: 200px; height: 120px; border: 2px solid black; margin-top: 10px; margin-left: 100px;"
												id="img" name="img"></div>
										</div>
										<div style="float: left;"></div>



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
