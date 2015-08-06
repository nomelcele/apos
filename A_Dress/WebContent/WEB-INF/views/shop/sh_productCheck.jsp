<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 매장의 상품관리 - 상품조회 페이지입니다. -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="resources/js/http.js"></script>
<script src="resources/js/json2.js"></script>
<script src="resources/js/suggestProduct_pk.js"></script>
<script>
	function open_win(img) {
		window
				.open(
						img,
						'popup',
						'width=280, height=310, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
	}
</script>
<script>
	function open_win1(img1) {
		window
				.open(
						img1,
						'popup',
						'width=280, height=100, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
	}
</script>
<script>
	var shop_num = "${sessionScope.shop_num}";
	var genderKey = null;
	function Product(str) {

		genderKey = str;
		var key = "key=" + encodeURIComponent(str) + "&shop_num="
				+ encodeURIComponent(shop_num);

		sendRequest("sh_AjaxProductSearch", key, res2, "post");
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

	function productcheckaction() {
		document.getElementById("productcheckform").submit();
	}
	//receive
	//push Client설정
	console.log("typeof:" + typeof (EventSource));
	if (typeof (EventSource) != "undefined") { //push를 받을 수 있는 브라우저인지 판단 (타입오브 -> 객체의 타입확인)
		var eventSource2 = new EventSource("android_barcodeRead");
		// EventSource EventListener의 종류
		// onmessage : 서버가 보낸 push 메세지가 수신되면 발생(리스너)
		// onerror : 서버가 보낸 push에서 에러가 발생되었을 때 발생
		// onopen : 서버가 연결이 되었을 때 발생
		var str = "";
		var first = true;
		//리스너형식으로 돌아가고 있는 콜백함수
		eventSource2.onmessage = function(e) { 
			console.log("리스너 실행");
			//xml에서 파싱한 값을 @@@을 기준으로 매장 id와 바코드 넘버로 분리한다.
			var spl = event.data.split("@@@");
			//null이 아니라 바코드 넘버가 있을경우 해당 칸에 바코드 넘버를 삽입한다.
			if (spl[0]=="${sessionScope.shop_id}" && spl[1] != "no"  ) {
				$("#pro_name").val(spl[1]);
				console.log("리스너 실행");
				initbarcode();
			}
			console.log("no");

		};
	} else {
		alert("test");
	}

	function initbarcode() {

		$.ajax({
			url : "androidbarcode?id=null&barcode=no",
			type : "post",
			dataType : "html",
			success : function(data) {
			}

		});
	};
	
</script>

<section id="main-content">
	<section class="wrapper">
		<section class="panel">

			<div class="row" style="font-size: 13px;width: 100%;">
				<div class="col-lg-12" >
					<h3 class="page-header" style="font-family: '210 나무고딕'; color: black ">
						<span><img src = "img/product.ico" style="width: 14pt; height: 14pt;"></span>상품조회
					</h3>

					<header class="panel-heading tab-bg-primary ">
						<div class="form-group " style="margin-left: -3%">
							<form action="sh_productsaerch" method="post"
								id="productcheckform">

								<div style="margin-bottom: -1%">

									<div class="col-lg-3" style="margin-left: -5% "font-family: '210 나무고딕'">

										<input type="hidden" id="shop_num" name="shop_num"
											value="${sessionScope.shop_num}"> 
											<label for="cname" class="control-label col-lg-6" style="font-size: 13px;  font-family: '210 나무고딕' ">이름</label> 
											<input class="form-control" id="pro_name" name="pro_name"
											style="width: 50%" onkeydown="startSuggest();"
											autocomplete="off" type="text" required />
										<button class="form-control6" type="button"
											onclick="javascript:productcheckaction()" id="btn1"
											name="btn1"  style="font-family: '210 나무고딕' ">조회</button>
										<div id="view"></div>
									</div>

								</div>
							</form>
						</div>
						<div>
							<ul class="nav nav-tabs"  style="font-family: '210 나무고딕' ">
								<li class=""><a data-toggle="tab" href="#search"
									id="ajevery">search</a></li>
								<li class="" id="ajman"><a data-toggle="tab" href="#man"
									onclick="javascript:Product(1)">man</a></li>
								<li class=""><a data-toggle="tab" href="#woman"
									onclick="javascript:Product(2)">woman</a></li>
								<li class=""><a data-toggle="tab" href="#kids"
									onclick="javascript:Product(3)">kids</a></li>
							</ul>
						</div>
					</header>

					<div class="panel-body" style="width: 100%">
						<div class="tab-content" style="width: 100%">

							<div id="search" class="tab-pane active">
								<div class="table-responsive" style="width: 100%">
									<table class="table">
										<thead>
											<tr>
												<th style="font-family: '210 나무고딕'; color: black ">no</th>
												<th style="font-family: '210 나무고딕'; color: black ">상품이름</th>
												<th style="font-family: '210 나무고딕'; color: black ">상품코드</th>
												<th style="font-family: '210 나무고딕'; color: black ">사이즈</th>
												<th style="font-family: '210 나무고딕'; color: black ">재고</th>
												<th style="font-family: '210 나무고딕'; color: black ">가격</th>
												<th style="font-family: '210 나무고딕'; color: black ">할인율</th>
												<th style="font-family: '210 나무고딕'; color: black ">상품사진</th>
												<th style="font-family: '210 나무고딕'; color: black ">바코드</th>
											</tr>
										</thead>
										<tbody style="font-family: '210 나무고딕' ">
											<%-- 반복 --%>
											<c:forEach var="stList"  items="${list}" varStatus="status">
												<tr>
													<th>${status.index+1 }</th>
													<th>${stList.pro_name}</th>
													<th>${stList.pro_code}</th>
													<th>${stList.sto_size}</th>
													<th>${stList.sto_amount}</th>
													<th>${stList.pro_price}</th>
													<th>${stList.pro_salerate}</th>
													<th><a href="javascript:open_win('product/${stList.pro_img}')">
													<img src='product/${stList.pro_img}'
													style="width: 100px; cursor: hand;">
													</a></th>
													<th><a href="javascript:open_win1('barcode/${stList.pro_barcode}')">
													<img src='barcode/${stList.pro_barcode}'
													style="width: 100px; cursor: hand;">
													</a>
													</td>
													</th>




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
										<thead style="font-family: '210 나무고딕' ">
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>할인율</th>
												<th>상품사진</th>
												<th>바코드</th>
											</tr>
										</thead>
										<tbody id="view_product" style="font-family: '210 나무고딕' ">

										</tbody>
									</table>

								</div>
							</div>


							<%-- 여자 시작--%>
							<div id="woman" class="tab-pane" style="font-family: '210 나무고딕' ">

								<div class="table-responsive">
									<table class="table">
										<thead style="font-family: '210 나무고딕' ">
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>할인율</th>
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
							<div id="kids" class="tab-pane" style="font-family: '210 나무고딕' ">

								<div class="table-responsive">
									<table class="table">
										<thead style="font-family: '210 나무고딕' ">
						
										
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>할인율</th>
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