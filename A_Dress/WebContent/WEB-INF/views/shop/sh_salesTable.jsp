<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 매장 정산관리의 판매현황 입니다. -->
<script src="resources/js/http.js"></script>
<script src="resources/js/json2.js"></script>
<script src="resources/js/suggest_shop_pk.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script>
	var shop_num = "${sessionScope.shop_num}";
	$(function() {
		$('#btn_out2')
				.click(
						function() {
						
							if ($('#date_ps').val() != "") {
								$
										.ajax({
											url : "sh_salesGetTable_ajax?shop_num="
													+ shop_num
													+ "&date_ps="
													+ $('#date_ps').val(),
											type : "post",
											dataType : "html",
											success : function(data) {
												str = data.trim();
												document
														.getElementById("view_product").innerHTML = str;
											}

										});

							} else {
								alert("날짜를 입력해주세요");
							}
						})
			
		
	});
	
	function exceldown(){
		$('#shop_num').val(shop_num);
		$('#excel_date').val($('#date_ps').val());
		$('#exceldown').submit();
	}
</script>

<section id="main-content">
	<section class="wrapper">
	<form action="sh_excel" method="post" id="exceldown">
		<input type="hidden" id="shop_num" name="shop_num" value="">
		<input type="hidden" id="excel_date" name="excel_date" value="">
	</form>


		<div class="row" style="font-size: 15px;width: 100%">
			<div class="col-lg-12">
				<h3 class="page-header" style="font-family: '210 나무고딕'; color: black; ">
					<span><img src = "img/sales.ico" style="width: 17pt; height: 15pt;"></span>판매현황
				</h3>
				</br>

				<div class="form-group"  style="font-family: '210 나무고딕' ">
					<div style="margin-left: 10px;">
						<label for="cname" class="control-label col-lg-2">
							<p align="left">날짜</p>
						</label> <input id="date_ps" name="date_ps" minlength="2"
							autocomplete="off" type="date" required /> <input
							class="form-control6" style="margin-left: 10px;" type="button"
							id="btn_out2" name="btn2" value="조회">
							<input
							class="form-control6" style="margin-left: 10px;" type="button"
							id="btn_excel" name="btn_excel" value="Excel" onclick="javascript:exceldown()">
					</div>
				</div>
			<input type="hidden" id="shop_num" name="shop_num"
					value="${sessionScope.shop_num}">



				<table class="table table-striped table-advance table-hover">
					<thead  style="font-family: '210 나무고딕' ">
						<p></p>
						<tr>
							<th style="color: black;"><i class="icon_profile"></i>날짜</th>
							<th style="color: black;"><i class="icon_profile"></i>상품번호</th>
							<th style="color: black;"><i class="icon_profile"></i>상품 사진</th>
							<th style="color: black;"><i class="icon_mail_alt"></i>판매 액</th>
							<th style="color: black;"><i class="icon_pin_alt"></i>판매 수량</th>
							<th style="color: black;"><i class="icon_profile"></i>구매 고객 번호</th>
							<th style="color: black;"><i class="icon_profile"></i>영수증 번호</th>
						</tr>

					</thead>
					<tbody id="view_product">

					</tbody>
				</table>
				<div id="chart_div" style="width: 900px; height: 500px;"></div>


			</div>

		</div>
	</section>
</section>