<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<!-- 본사 상품관리의 상품삭제 페이지입니다. -->
<section class="wrapper">
	<section id="main-content" >
		<form class="form-validate form-horizontal" id="feedback_form"
			method="post" action="sh.apos">
			<input type="hidden" name="cmd" value="bproduct"> <input
				type="hidden" name="subcmd" value="add">
		


		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o" >상품삭제</i>
				</h3>
			</div>
			
			<div class="panel-body">
				<div class="form">
					<div class="col-lg-6">
						<div class="form-group ">
											<label style="width: 200px;" for="cname" class="control-label col-lg-2">이름
											</label>
											<div class="col-lg-4">
												<input class="form-control" id="sname_ps" name="name"
													minlength="2" onkeydown="startSuggest();"
													autocomplete="off" type="text" >
											</div>
											<input class="form-control6" type="submit" id="btn"
												name="btn" value="조회">
										</div>
						<div class="form-group ">
							<br /><br /> <label style="width: 200px;" for="cname"
								class="control-label col-lg-2">물품명</label>
							<div class="col-lg-2">
								<input class="form-control" style="width: 260px;" id="name"
									name="name" minlength="2" type="text" required />
							</div>
						</div>
						<br />
						<div class="form-group ">
							<label style="width: 200px;" for="cname"
								class="control-label col-lg-2">사이즈</label>
							<div class="col-lg-2">
								<input class="form-control" style="width: 260px;" id="name"
									name="name" minlength="2" type="text" required />
							</div>
						</div>
						<br />
						<div class="form-group ">
							<label style="width: 200px;" for="cname"
								class="control-label col-lg-2">판매금액</label>
							<div class="col-lg-2">
								<input class="form-control" style="width: 260px;" id="name"
									name="name" minlength="2" type="text" required />
							</div>
						</div>
					</div>
					<%-- col-lg-6:1의 끗--%>
					<div class="col-lg-6">

						<div
							style="width: 200px; height: 120px; border: 2px solid black; margin-top: 10px; margin-left: 100px;"
							id="img" name="img"></div>
						<div
							style="width: 200px; height: 120px; border: 2px solid black; margin-top: 10px; margin-left: 100px;"
							id="img" name="img"></div>
					</div>
				</div>

			</div>
		</div>

		<%-- form의 끗 --%>
		<div class="row">
		<br/>
			<div class="col-sm-10">
					<table class="table">
						<thead>
							<tr>
								<th>해당지점</th>
								<th>사이즈</th>
								<th>수량</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
						</tbody>
					</table>
			</div>
		</div>
		<%--panel-body 끗 --%>
		</form>
	</section>
</section>

