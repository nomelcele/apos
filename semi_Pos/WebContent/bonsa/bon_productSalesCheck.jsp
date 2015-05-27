<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<!-- 본사 정산관리의 품목별 매출순위 페이지 입니다. -->

<section id="main-content">
	<section class="wrapper">


		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 품목별 매출순위
				</h3>


				<div class="form-group ">
					<div class="col-lg-2">
						<input class="form-control" id="sname_ps" name="name"
							minlength="2" onkeydown="startSuggest();" autocomplete="off"
							type="text" required />
						<div id="view"></div>
					</div>
					<input class="form-control6" type="submit" id="btn" name="btn"
						value="조회">
				</div>



				<div class="row">
					<br />
					<div class="col-sm-10">
						<table class="table">
							<thead>
								<tr>
									<th>물품</th>
									<th>사이즈</th>
									<th>가격</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Mark</td>
									<td>95</td>
									<td>95,000</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>


				<div class="form-group" style="margin-left: 280px;">
					<label>총액</label>
					<div class="col-lg-2">
						<input class="form-control7" id="sname_ps" name="name"
							minlength="2" onkeydown="startSuggest();" autocomplete="off"
							type="text" style="margin-left: 115px;" required />
						<div id="view"></div>
					</div>
						
				</div>




			</div>
		</div>
	</section>
</section>