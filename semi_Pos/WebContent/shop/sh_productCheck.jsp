<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<!-- 매장의 상품관리 - 상품조회 페이지입니다. -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="../js/http.js"></script>
<script src="../js/json2.js"></script>
<script src="../js/suggest_pk.js"></script>
<section id="main-content">
	<section class="wrapper">
		<section class="panel">

			<div class="row" style="font-size: 15px;">
				<div class="col-lg-12">
					<h3 class="page-header">
						<i class="fa fa-files-o"></i> 상품조회
					</h3>

					<header class="panel-heading tab-bg-primary ">
						<div class="form-group ">
							<form action="sh.apos">
								<label for="cname" class="control-label col-lg-1"
									style="font-size: 17px;">이름 </label>
								<div class="col-lg-2">

									<input type="hidden" id="cmd" name="cmd" value="sproduct">
									<input type="hidden" id="subcmd" name="subcmd" value="pcheck">
									<input type="hidden" id="childcmd" name="childcmd"
										value="search"> <input class="form-control"
										id="sname_ps" name="name" minlength="2"
										onkeydown="startSuggest();" autocomplete="off" type="text"
										required />

									<div id="view"></div>
								</div>
								<input class="form-control6" type="submit" id="btn1" name="btn1"
									value="조회">
							</form>
						</div>

						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#every">every</a>
							</li>
							<li class=""><a data-toggle="tab" href="#man">man</a></li>
							<li class=""><a data-toggle="tab" href="#woman">woman</a></li>
							<li class=""><a data-toggle="tab" href="#kids">kids</a></li>
						</ul>
					</header>
					<div class="panel-body">
						<div class="tab-content">
							<div id="every" class="tab-pane active">전체야</div>
							<%-- 남자 시작--%>
							<div id="man" class="tab-pane">

							<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>

												<th>상품번호</th>
												<th>상품명</th>
												<th>매장명</th>
												<th>사이즈</th>
												<th>수량</th>
												<th>재고</th>
												<th>할인가</th>
												<th>판매가</th>
												<th>사진</th>
											</tr>
										</thead>
										<tbody>
											<%-- 반복 --%>
											<tr>
												<th>2</th>
												<th>나이키운동화</th>
												<th>야탑점</th>
												<th>사이즈많음</th>
												<th>수량없어</th>
												<th>재고읎ㅓ</th>
												<th>할인가</th>
												<th>판매가</th>
												<th>사진</th>
											</tr>

											<%-- 반복 --%>
										</tbody>
									</table>

								</div>
							</div>
							<%-- 남자 끝--%>

							<%-- 여자 시작--%>
							<div id="woman" class="tab-pane">


								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>

												<th>상품번호</th>
												<th>상품명</th>
												<th>매장명</th>
												<th>사이즈</th>
												<th>수량</th>
												<th>재고</th>
												<th>할인가</th>
												<th>판매가</th>
												<th>사진</th>
											</tr>
										</thead>
										<tbody>
											<%-- 반복 --%>
											<tr>
												<th>1</th>
												<th>나이키운동화</th>
												<th>야탑점</th>
												<th>사이즈많음</th>
												<th>수량없어</th>
												<th>재고읎ㅓ</th>
												<th>할인가</th>
												<th>판매가</th>
												<th>사진</th>
											</tr>

											<%-- 반복 --%>
										</tbody>
									</table>

								</div>
							</div>
							<%-- 여자 끗--%>

							<%-- 키즈 시작--%>
							<div id="kids" class="tab-pane">

								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>

												<th>상품번호</th>
												<th>상품명</th>
												<th>매장명</th>
												<th>사이즈</th>
												<th>수량</th>
												<th>재고</th>
												<th>할인가</th>
												<th>판매가</th>
												<th>사진</th>
											</tr>
										</thead>
										<tbody>
											<%-- 반복 --%>
											<tr>
												<th>3</th>
												<th>나이키운동화</th>
												<th>야탑점</th>
												<th>사이즈많음</th>
												<th>수량없어</th>
												<th>재고읎ㅓ</th>
												<th>할인가</th>
												<th>판매가</th>
												<th>사진</th>
											</tr>

											<%-- 반복 --%>
										</tbody>
									</table>

								</div>

							</div>
							<%-- 키즈 끗--%>
						</div>
					</div>
				</div>
			</div>
		</section>
	</section>
</section>