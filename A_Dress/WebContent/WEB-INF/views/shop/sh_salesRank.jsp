<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 매장 정산관리의 기간별 매출순위 페이지 입니다. -->

<script>
	//차트에 들어갈 데이터 자료
	var time, resnum, rescash, shop_name;
	time = [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep',
			'Oct', 'Nov', 'Dec', ]
	resnum = [ 49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4,
			194.1, 95.6, 59.4, ];
	rescash = [ 7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9,
			9.6, ];
	var shop_num = "${sessionScope.shop_num}";
	$(function() {

		$('#btn_out')
				.click(
						function() {
							//alert(shop_name);
							//alert("shopname=" + shop_name + "date_ps="+ $('#date_ps').val() + "&date_ps2="+ $('#date_ps2').val());

							if ($('#date_ps').val() != ""
									&& $('#date_ps2').val() != "") {
								if ($('#date_ps').val() <= $('#date_ps2').val()) {
									// alert("test2");
									$
											.ajax({
												url : "sh_ajax_outletsale?shop_num="
														+ shop_num
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

									$
											.ajax({
												url : "sh_ajaxoutletChart?shop_num="
														+ shop_num
														+ "&date_ps="
														+ $('#date_ps').val()
														+ "&date_ps2="
														+ $('#date_ps2').val(),
												type : "post",
												dataType : "html",
												success : function(event) {
													var res = event.trim()
															.split("@");
													time = eval(res[0]);
													resnum = eval(res[1]);
													rescash = eval(res[2]);
													
													
													if (time != "") {
														chartstart();
													} else {
														alert("지정한 날짜에 판매한 기록이 없습니다.");
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

						});

		function chartstart() {

			$('#container3')
					.highcharts(
							{
								chart : {
									zoomType : 'xy'
								},
								title : {
									text : '기간별 매출순위 '
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


		<div class="row" style="font-size: 15px; width: 100%">
			<div class="col-lg-12">
				<h3 class="page-header"
					style="font-family: '210 나무고딕'; color: black;">
					<span><img src="img/sales.ico"
						style="width: 17pt; height: 15pt;"></span>기간별 매출현황
				</h3>

				<form action="*.apos" id="otsearch" method="post"
					onsubmit="return false;">
					<div class="form-group" style="font-family: '210 나무고딕'">

						<br /> <br />


						<div style="margin-left: -2%;">
							<label for="cname" class="control-label col-lg-2"><p
									align="left">기간</p> </label> <input id="date_ps" name="date_ps"
								minlength="2" autocomplete="off" type="date" required />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<input id="date_ps2"
								name="date_ps2" minlength="2" autocomplete="off" type="date"
								required /> <input class="form-control6"
								style="margin-left: 10px;" type="button" id="btn_out" name="btn"
								value="조회">

						</div>

				

				</form>
				<script src="resources/js/highcharts.js"></script>
				<script src="resources/js/modules/exporting.js"></script>
				<div id="container3"
					style="min-width: 80%; height: 100%; margin: 0 auto"></div>


		
				<table class="table table-striped table-advance table-hover"
					style="font-family: '210 나무고딕'">

					<thead>
						<p></p>
						<tr>
							<th style="color: black;"><i class="icon_calendar"></i>날짜</th>
							<th style="color: black;"><img src = "img/shopimg.ico" style="width: 15px; height: 15px;" >대리점명</th>
							<th style="color: black;"><img src = "img/s.ico" style="width: 15px; height: 15px;" >판매 액</th>
							<th style="color: black;"><img src = "img/sn.ico" style="width: 22px; height: 18px;" >판매 수량</th>
						</tr>

					</thead>

					<tbody id="view_product" style="font-family: '210 나무고딕'">

					</tbody>
				</table>



				<!--             <div class="form-group" style="margin-left: 700px;"> -->
				<!--                <label>총액</label> -->
				<!--                <div class="col-lg-2"> -->
				<!--                   <input class="form-control7" id="sname_ps" name="name" -->
				<!--                      minlength="2" onkeydown="startSuggest();" autocomplete="off" -->
				<!--                      type="text" style="margin-left: 120px;" required /> -->
				<!--                   <div id="view"></div> -->
				<!--                </div> -->

				<!--             </div> -->


			</div>

		</div>
	</section>
</section>