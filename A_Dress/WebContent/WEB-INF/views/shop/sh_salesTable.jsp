<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<%@include file="logsession.jsp" %>
<!-- 본사 정산관리의 대리점별 매출순위 페이지 입니다. -->
<script src="../js/http.js"></script>
<script src="../js/json2.js"></script>
<script src="../js/suggest_shop_pk.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script>
	var shop_num = "${sessionScope.shop_num}";
	$(function() {

		$('#btn_out2')
				.click(
						function() {
							//alert(shop_num);
// 							alert("shopnum=" + shop_num + "date_ps="
// 									+ $('#date_ps').val());

							
									//alert("test2");
									$
											.ajax({
												url : "sh_ajaxsaletable.jsp?shop_num="
														+ shop_num
														+ "&date_ps="
														+ $('#date_ps').val(),
												type : "post",
												dataType : "html",
												success : function(data) {
													//alert(data);
													str = data.trim();
													document
															.getElementById("view_product").innerHTML = str;
												}

											});
							
						})
	})

</script>

<section id="main-content">
	<section class="wrapper">


		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 판매현황
				</h3>
				</br>
				<form action="*.apos" id="otsearch" method="post"
					onsubmit="return false;">
					<div class="form-group">




						<div style="margin-left: 10px;">
							<label for="cname" class="control-label col-lg-2"><p
									align="left">날짜</p> </label> <input id="date_ps" name="date_ps"
								minlength="2" autocomplete="off" type="date" required /> <input class="form-control6"
								style="margin-left: 10px;" type="button" id="btn_out2" name="btn2"
								value="조회">

						</div>

					</div>
					</br> </br>

				</form>


				<table class="table table-striped table-advance table-hover">
					<thead>
						<p></p>
						<tr>
							<th><i class="icon_profile"></i>날짜</th>
							<th><i class="icon_profile"></i>상품번호</th>
							<th><i class="icon_mail_alt"></i>판매 액</th>
							<th><i class="icon_pin_alt"></i>판매 수량</th>
							<th><i class="icon_profile"></i>구매 고객 번호</th>
						</tr>

					</thead>
					<tbody id="view_product">

					</tbody>
				</table>
				<div id="chart_div" style="width: 900px; height: 500px;"></div>


				<!-- 				<div class="form-group" style="margin-left: 700px;"> -->
				<!-- 					<label>총액</label> -->
				<!-- 					<div class="col-lg-2"> -->
				<!-- 						<input class="form-control7" id="sname_ps" name="name" -->
				<!-- 							minlength="2" onkeydown="startSuggest();" autocomplete="off" -->
				<!-- 							type="text" style="margin-left: 120px;" required /> -->
				<!-- 						<div id="view"></div> -->
				<!-- 					</div> -->

				<!-- 				</div> -->


			</div>

		</div>
	</section>
</section>