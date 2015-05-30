<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<!-- 본사 정산관리의 대리점별 매출순위 페이지 입니다. -->
<script src="../js/http.js"></script>
<script src="../js/json2.js"></script>
<script src="../js/suggest_shop_pk.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script>
	var shop_name = "${sessionScope.shop_name}";
	$(function() {

		$('#btn_out')
				.click(
						function() {
							alert(shop_name);
							alert("shopname=" + shop_name + "date_ps="
									+ $('#date_ps').val() + "&date_ps2="
									+ $('#date_ps2').val());

							if ($('#date_ps').val() != ""
									&& $('#date_ps2').val() != "") {
								if ($('#date_ps').val() < $('#date_ps2').val()) {
									alert("test2");
									$
											.ajax({
												url : "sh_ajaxoutletsale.jsp?shop_name="
														+ shop_name
														+ "&date_ps="
														+ $('#date_ps').val()
														+ "&date_ps2="
														+ $('#date_ps2').val(),
												type : "post",
												dataType : "html",
												success : function(data) {
													alert(data);
													str = data.trim();
													document
															.getElementById("view_product").innerHTML = str;
												}

											});
								} else {
									alert("날짜선택을 잘못하셧습니다.시작날짜가 마지막 날짜보다 큽니다.");
								}
							} else

							{
								alert("날짜를 선택 안하셧습니다.날짜를 선택하세요")
							}
							$.ajax({
								url : "sh_ajaxoutletChart.jsp?shop_name="
										+ shop_name + "&date_ps="
										+ $('#date_ps').val() + "&date_ps2="
										+ $('#date_ps2').val(),
								type : "post",
								dataType : "html",
								success : function(data) {
									alert("callback");
									res2 = eval(data);
									var result = eval(res2);
									alert(res2);
									drawVisualization();
									res2 = null;
								}

							});
						})
	})

	google.load("visualization", "1", {
		packages : [ "corechart" ]
	});
	google.setOnLoadCallback(drawVisualization);
	var res = [ [ 'Month', '판매 금액', '판매량' ], [ '2004/05', 165, 938 ],
			[ '2005/06', 135, 1120 ], [ '2006/07', 157, 1167 ],
			[ '2007/08', 139, 1110 ], [ '2008/09', 136, 691 ] ];
	var res2 = [ [ 'Month', '남성', '여성', '유아', ], [ '2004-05', 165, 938, 522, ],
			[ '2005-06', 135, 1120, 599, ], [ '2006-07', 157, 1167, 587, ] ];
	function drawVisualization() {
		// Some raw data (not necessarily accurate)
		var data = google.visualization.arrayToDataTable(res2);

		var options = {
			title : '매출관리',
			vAxis : {
				title : "금액"
			},
			hAxis : {
				title : "Month"
			},
			seriesType : "bars",
			series : {
				5 : {
					type : "line"
				}
			}
		};

		var chart = new google.visualization.ComboChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);
	}
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
									align="left">기간</p> </label> <input id="date_ps" name="date_ps"
								minlength="2" autocomplete="off" type="date" required />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<input id="date_ps2"
								name="date_ps2" minlength="2" autocomplete="off" type="date"
								required /> <input class="form-control6"
								style="margin-left: 10px;" type="button" id="btn_out" name="btn"
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
							<th><i class="icon_profile"></i>대리점명</th>
							<th><i class="icon_mail_alt"></i>판매 액</th>
							<th><i class="icon_pin_alt"></i>판매 수량</th>
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