<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 본사 정산관리의 상품별 매출순위 페이지 입니다. -->
<script src="resources/js/http.js"></script>
<script src="resources/js/json2.js"></script>
<script>
	var time, resnum, rescash, shop_name;
	time = [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep',
			'Oct', 'Nov', 'Dec', ]
	resnum = [ 49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4,
			194.1, 95.6, 59.4, ];
	rescash = [ 7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9,
			9.6, ];

	$(function() {
		$('#btn')
				.click(
						function() {
							// 							alert("shopname=" + $('#shop_name').val()
							// 									+ "date_ps=" + $('#date_ps').val()
							// 									+ "&date_ps2=" + $('#date_ps2').val());
							if ($('#shop_name').val() != "") {
							if ($('#date_ps').val() != ""
									&& $('#date_ps2').val() != "") {
								if ($('#date_ps').val() < $('#date_ps2').val()) {
									//alert("test2");
									$
											.ajax({
												url : "bon_ajaxproductsmang?pro_code="
														+ $('#pro_code').val()
														+ "&startdate="
														+ $('#date_ps').val()
														+ "&enddate="
														+ $('#date_ps2').val(),
												type : "post",
												dataType : "html",
												success : function(data) {
													//alert(data);
													str = data.trim();
													if (str == "") {
														alert("지정한 날짜에 해당 상품 판매 기록이 없습니다.");
													} else {
														document
																.getElementById("view_product").innerHTML = str;
													}
												}

											});

									$.ajax({
										url : "bon_ajaxproductChart?pro_code="
												+ $('#pro_code').val()
												+ "&startdate="
												+ $('#date_ps').val()
												+ "&enddate="
												+ $('#date_ps2').val(),
										type : "post",
										dataType : "html",
										success : function(event) {

											var res = event.trim().split("@");
											time = eval(res[0]);
											resnum = eval(res[1]);
											rescash = eval(res[2]);
										
											if (time != "") {
												chartstart();
											} else {
												alert("검색한 상품의 지정한 날짜에 판매한 기록이 없습니다.");
											}
										}

									});
								} else {
									alert("날짜선택을 잘못하셧습니다.시작날짜가 마지막 날짜보다 큽니다.");
								}
							} else

							{
								alert("날짜를 선택 안하셧습니다.날짜를 선택하세요")
							}
							}else{
								alert("상품 코드을 입력하세요.");
							}
						});
		function chartstart() {

			$('#container3')
					.highcharts(
							{
								chart : {
									zoomType : 'xy'
								},
								title : {
									text : '상품별 매출순위 '
								},
								subtitle : {
									text : shop_name
								},
								xAxis : [ {
									categories : time,
									crosshair : true
								} ],
								yAxis : [
										{ // Primary yAxis
											labels : {
												format : '{value}개',
												style : {
													color : Highcharts
															.getOptions().colors[1]
												}
											},
											title : {
												text : '판매 량',
												style : {
													color : Highcharts
															.getOptions().colors[1]
												}
											}
										},
										{ // Secondary yAxis
											title : {
												text : '판매 금액',
												style : {
													color : Highcharts
															.getOptions().colors[0]
												}
											},
											labels : {
												format : '{value} 원',
												style : {
													color : Highcharts
															.getOptions().colors[0]
												}
											},
											opposite : true
										} ],
								tooltip : {
									shared : true
								},
								legend : {
									layout : 'vertical',
									align : 'left',
									x : 120,
									verticalAlign : 'top',
									y : 100,
									floating : true,
									backgroundColor : (Highcharts.theme && Highcharts.theme.legendBackgroundColor)
											|| '#FFFFFF'
								},
								series : [ {
									name : '판매 금액',
									type : 'column',
									yAxis : 1,
									data : resnum,
									tooltip : {
										valueSuffix : '원'
									}

								}, {
									name : '판매 량',
									type : 'spline',
									data : rescash,
									tooltip : {
										valueSuffix : '개'
									}
								} ]
							});
		}
	});
</script>

<section id="main-content">
	<section class="wrapper">


		<div class="row" style="font-size: 15px; width: 100%; height: 100%">
			<div class="col-lg-12">
				<h3 class="page-header" style="font-family: '210 나무고딕'">
					<span><img src="img/sales.ico"
						style="width: 17pt; height: 15pt;"></span>품목별 매출순위
				</h3>
				</br>
				<form action="*.apos" id="otsearch" method="post"
					onsubmit="return false;">
					<div class="form-group" style="font-family: '210 나무고딕'">

						<div style="margin-left: 10px;">
							<label for="cname" class="control-label col-lg-2" style="margin-left: 1.2%;">물품코드번호</label> 
							<input id="pro_code" name="name" width="80%" autocomplete="off"
								type="text" onkeydown="startSuggest();" required />
<br/>
							<div id="view"></div>
							<div style="margin-left: 10px;">
								<label for="cname" class="control-label col-lg-2"><p>기간</p>
								</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="date_ps" name="date_ps" autocomplete="off"
									type="date" required />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<input id="date_ps2"
									name="date_ps2" autocomplete="off" type="date" required /> <input
									class="form-control6" style="margin-left: 10px;" type="button"
									id="btn" name="btn" value="조회">

							</div>

						</div>
						</br> </br>

					</div>
				</form>
				<script src="resources/js/highcharts.js"></script>
				<script src="resources/js/modules/exporting.js"></script>
				<div id="container3"
					style="min-width: 80%; height: 100%; margin: 0 auto"></div>

				<table class="table table-striped table-advance table-hover">
					<thead style="font-family: '210 나무고딕'">

						<tr>
							<th><i class="icon_calendar"></i>날짜</th>
							<th><img src="img/tag.jpg"
								style="width: 18px; height: 15px;">물품명</th>
							<th><img src="img/s.ico" style="width: 15px; height: 15px;">판매
								액</th>
							<th><img src="img/sn.ico" style="width: 19px; height: 18px;">판매
								수량</th>
						</tr>

					</thead>
					<tbody id="view_product">

					</tbody>
				</table>



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