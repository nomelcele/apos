<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<!-- 매장의 상품관리 - 상품조회 페이지입니다. -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="../js/http.js"></script>
<script src="../js/json2.js"></script>
<script src="../js/suggestProduct_pk.js"></script>

<script>
	var shop_num = "${sessionScope.shop_num}";
	var genderKey = null;
	function Product(str) {
		genderKey = str;
		var key = "key=" + encodeURIComponent(str) + "&shop_num="
				+ encodeURIComponent(shop_num);

		sendRequest("sh_AjaxProductSearch.jsp", key, res2, "post");
	}

	var jsonObj = null;

	function res2() {

		if (xhr.readyState == 4) {
			if (xhr.status == 200) {

				if (genderKey == 1) {
					document.getElementById("view_product").style.display = 'view';
					var response = xhr.responseText;
					var str = response.trim();

					document.getElementById("view_product").innerHTML = str;
				} else if (genderKey == 2) {
					document.getElementById("view_product2").style.display = 'view';
					var response = xhr.responseText;
					var str = response.trim();

					document.getElementById("view_product2").innerHTML = str;
				} else if (genderKey == 3) {
					document.getElementById("view_product3").style.display = 'view';
					var response = xhr.responseText;
					var str = response.trim();

					document.getElementById("view_product3").innerHTML = str;
				}
				//innerHTMLviewTable2();
			} else {
				document.getElementById("view_product").style.display = 'none';
			}
		}
	}
	function viewTable2() {
		var vD = document.getElementById("view_product");
		var htmlTxt = jsonObj;

		vD.innerHTML = response;
		vD.style.display = "block";
	}
</script>
<%-- 전체보기 위한 form --%>
<!-- <form id="all"> -->
<!-- 	<input type="hidden" id="cmd" name="cmd" value="sproduct"> <input -->
<!-- 		type="hidden" id="subcmd" name="subcmd" value="pcheck"> <input -->
<!-- 		type="hidden" id="childcmd" name="childcmd" value="psearch"> <input -->
<!-- 		type="hidden" id="childcmd" name="check" value="%"> -->
<!-- </form> -->
<%-- <%-- 남자 상품 form --%>

<!-- <form id="men"> -->
<!-- 	<input type="hidden" id="cmd" name="cmd" value="sproduct"> <input -->
<!-- 		type="hidden" id="subcmd" name="subcmd" value="pcheck"> <input -->
<!-- 		type="hidden" id="childcmd" name="childcmd" value="psearch"> <input -->
<!-- 		type="hidden" id="childcmd" name="check" value="1"> -->
<!-- </form> -->
<%-- <%-- 여자 상품 form --%>

<!-- <form id="woman"> -->
<!-- 	<input type="hidden" id="cmd" name="cmd" value="sproduct"> <input -->
<!-- 		type="hidden" id="subcmd" name="subcmd" value="pcheck"> <input -->
<!-- 		type="hidden" id="childcmd" name="childcmd" value="psearch"> <input -->
<!-- 		type="hidden" id="childcmd" name="check" value="2"> -->
<!-- </form> -->
<!-- <form id="kid"> -->
<!-- 	<input type="hidden" id="cmd" name="cmd" value="sproduct"> <input -->
<!-- 		type="hidden" id="subcmd" name="subcmd" value="pcheck"> <input -->
<!-- 		type="hidden" id="childcmd" name="childcmd" value="psearch"> <input -->
<!-- 		type="hidden" id="childcmd" name="check" value="3"> -->
<!-- </form> -->
<section id="main-content">
	<section class="wrapper">
		<section class="panel">

			<div class="row" style="font-size: 15px;">
				<div class="col-lg-12">
					<h3 class="page-header">
						<i class="fa fa-files-o"></i> 상품조회
					</h3>

					<header class="panel-heading tab-bg-primary ">
						<div class="form-group " style="margin-left: -3%">
							<form action="sh.apos" method="post">

								<div style="margin-bottom: -1%">
									<label for="cname" class="control-label col-lg-1"
										style="font-size: 13px;">이름 </label>
									<div class="col-lg-3" style="margin-left: -5%">

										<input type="hidden" id="cmd" name="cmd" value="sproduct">
										<input type="hidden" id="subcmd" name="subcmd" value="pcheck">
										<input type="hidden" id="childcmd" name="childcmd"
											value="search"> <input type="hidden" id="shop_num"
											name="shop_num" value="${sessionScope.shop_num}"> <input
											class="form-control" id="sname_ps" name="name" minlength="2"
											onkeydown="startSuggest();" autocomplete="off" type="text"
											required />

										<div id="view"></div>
									</div>
									<input class="form-control6" type="submit" id="btn1"
										name="btn1" value="조회">
								</div>
							</form>
						</div>

						<ul class="nav nav-tabs">
							<li class=""><a data-toggle="tab" href="#search"
								id="ajevery">search</a></li>
							<li class="" id="ajman"><a data-toggle="tab" href="#man"
								onclick="javascript:Product(1)">man</a></li>
							<li class=""><a data-toggle="tab" href="#woman"
								onclick="javascript:Product(2)">woman</a></li>
							<li class=""><a data-toggle="tab" href="#kids"
								onclick="javascript:Product(3)">kids</a></li>
						</ul>
					</header>

					<div class="panel-body">
						<div class="tab-content">

							<div id="search" class="tab-pane active">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
											</tr>
										</thead>
										<tbody>
											<%-- 반복 --%>
											<c:forEach var="stList" items="${list}">
												<tr>
													<th>0</th>
													<th>${stList.pro_name}</th>
													<th>${stList.pro_code}</th>
													<th>${stList.sto_size}</th>
													<th>${stList.sto_amount}</th>
													<th>${stList.pro_price}</th>
													<th><img src='../upload/${stList.pro_img}'style="width: 100px;"></td></th>
													<th><img src='../upload/${stList.pro_barcode}'style="width: 100px;"></th>

												</tr>
											</c:forEach>


											<%-- 반복 --%>
										</tbody>
									</table>

								</div>
							</div>

							<%-- 남자 시작--%>
							<div id="man" class="tab-pane">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
											</tr>
										</thead>
										<tbody id="view_product">

										</tbody>
									</table>

								</div>
							</div>


							<%-- 여자 시작--%>
							<div id="woman" class="tab-pane">

								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
											</tr>
										</thead>
										<tbody id="view_product2">

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
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
											</tr>
										</thead>
										<tbody id="view_product3">

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