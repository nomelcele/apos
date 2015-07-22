<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 본사 정산관리의 대리점별 매출순위 페이지 입니다. -->
<script src="resources/js/http.js"></script>
<script src="resources/js/json2.js"></script>
<script src="resources/js/suggest_shop_pk.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script>
// 차트에 들어갈 데이터 자료
	var time, res, res2,shop_name;
	time = [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep',
			'Oct', 'Nov', 'Dec' ]
	res = [ 49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1,
			95.6, 59.4 ];
	$(function() {
		$('#btn_out')
				.click(
						function() {
							// 							alert("shopname=" + $('#shop_name').val()
							// 									+ "date_ps=" + $('#date_ps').val()
							// 									+ "&date_ps2=" + $('#date_ps2').val());

							if ($('#date_ps').val() != ""
									&& $('#date_ps2').val() != "") {
								if ($('#date_ps').val() < $('#date_ps2').val()) {
									//alert("test2");
									shop_name=$('#shop_name').val();
									$
											.ajax({
												url : "bon_ajaxoutletsale?shop_name="
														+ $('#shop_name').val()
														+ "&startdate="
														+ $('#date_ps').val()
														+ "&enddate="
														+ $('#date_ps2').val(),
												type : "post",
												dataType : "html",
												success : function(data) {
													//alert(data);
													str = data.trim();
													document
															.getElementById("view_product").innerHTML = str;
												}

											});
									$.ajax({
										url : "bon_ajaxoutletChart?shop_name="
												+ $('#shop_name').val()
												+ "&startdate="
												+ $('#date_ps').val()
												+ "&enddate="
												+ $('#date_ps2').val(),
										type : "post",
										dataType : "html",
										success : function(data) {
											//alert("callback");
											res2 = eval(data);
											var result = eval(res2);
											//alert(res2);
											drawVisualization();
											res2 = null;
										}

									});

								} else {
									alert("날짜선택을 잘못하셧습니다.시작날짜가 마지막 날짜보다 큽니다.");
								}
							} else

							{
								alert("날짜를 선택 안하셧습니다.날짜를 선택하세요")
							}

						});
		$('#container3')
				.highcharts(
						{
							chart : {
								zoomType : 'xy'
							},
							title : {
								text : '대리점별 매출순위 '
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
												color : Highcharts.getOptions().colors[1]
											}
										},
										title : {
											text : '판매 량',
											style : {
												color : Highcharts.getOptions().colors[1]
											}
										}
									},
									{ // Secondary yAxis
										title : {
											text : '판매 금액',
											style : {
												color : Highcharts.getOptions().colors[0]
											}
										},
										labels : {
											format : '{value} 원',
											style : {
												color : Highcharts.getOptions().colors[0]
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
							series : [
									{
										name : 'Rainfall',
										type : 'column',
										yAxis : 1,
										data : res,
										tooltip : {
											valueSuffix : ' mm'
										}

									},
									{
										name : 'Temperature',
										type : 'spline',
										data : [ 7.0, 6.9, 9.5, 14.5, 18.2,
												21.5, 25.2, 26.5, 23.3, 18.3,
												13.9, 9.6 ],
										tooltip : {
											valueSuffix : '°C'
										}
									} ]
						});
	});
</script>

<section id="main-content">
	<section class="wrapper">


		<div class="row" style="font-size: 15px; width: 100%; height: 100%">
			<div class="col-lg-12">
				<h3 class="page-header" style="font-family: '210 나무고딕'">
					<span><img src="img/sales.ico"
						style="width: 17pt; height: 15pt;"></span>대리점별 매출순위
				</h3>
				</br>
				<form action="*.apos" id="otsearch" method="post"
					onsubmit="return false;">
					<div class="form-group" style="font-family: '210 나무고딕'">

						<div style="margin-left: 10px;">
							<label for="cname" class="control-label col-lg-2"><p>매장검색</p>
							</label> <input id="shop_name" name="name" autocomplete="off" type="text"
								onkeydown="startSuggest();" required />

							<div id="view"></div>

							<div class="col-lg-2" style="margin-left: -5%;"></div>
							</br>

							<div style="margin-left: 10px;">
								<label for="cname" class="control-label col-lg-2"><p
										align="left">기간</p> </label> <input id="date_ps" name="date_ps"
									minlength="2" autocomplete="off" type="date" required />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<input id="date_ps2"
									name="date_ps2" minlength="2" autocomplete="off" type="date"
									required /> <input class="form-control6"
									style="margin-left: 10px;" type="button" id="btn_out"
									name="btn" value="조회">

							</div>

						</div>
						</br> </br>

					</div>
				</form>

				<script src="resources/js/highcharts.js"></script>
				<script src="resources/js/modules/exporting.js"></script>
				<div id="container3"
					style="min-width: 80%; height: 100%; margin: 0 auto"></div>
				<table class="table table-striped table-advance table-hover"
					style="width: 100%; height: 100%">
					<thead style="font-family: '210 나무고딕'">
						<p></p>
						<tr>
							<th><i class="icon_calendar"></i>날짜</th>
							<th><img src="img/shopimg.ico"
								style="width: 18px; height: 15px;">대리점명</th>
							<th><img src="img/s.ico" style="width: 15px; height: 15px;">판매
								액</th>
							<th><img src="img/sn.ico" style="width: 20px; height: 18px;">판매
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