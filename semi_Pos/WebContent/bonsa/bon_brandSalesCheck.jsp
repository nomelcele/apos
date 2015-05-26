<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>



<!-- 본사 정산관리의 브랜드 매출관리 페이지 입니다. -->


<section id="main-content">
	<section class="wrapper">

		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 브랜드 매출관리
				</h3>
			</div>
		</div>
		<button type="submit" class="btn btn-primary"
												style="margin-left: 100px;">1일</button>
												
												<button type="submit" class="btn btn-primary"
												style="margin-left: 100px;">3개월</button>
												
												<button type="submit" class="btn btn-primary"
												style="margin-left: 100px;">6개월</button>
												
												<button type="submit" class="btn btn-primary"
												style="margin-left: 100px;">1년</button>
												
												<button type="submit" class="btn btn-primary"
												style="margin-left: 100px;">3년</button>



<html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawVisualization);

function drawVisualization() {
  // Some raw data (not necessarily accurate)
  var data = google.visualization.arrayToDataTable([
    ['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'],
    ['2004/05',  165,      938,         522,             998,           450,      614.6],
    ['2005/06',  135,      1120,        599,             1268,          288,      682],
    ['2006/07',  157,      1167,        587,             807,           397,      623],
    ['2007/08',  139,      1110,        615,             968,           215,      609.4],
    ['2008/09',  136,      691,         629,             1026,          366,      569.6]
  ]);

  var options = {
    title : '매출관리를 해볼까?',
    vAxis: {title: "돈내놔"},
    hAxis: {title: "Month"},
    seriesType: "bars",
    series: {5: {type: "line"}}
  };

  var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
  chart.draw(data, options);
}
    </script>
  </head>
  <body>
    <div id="chart_div" style="width: 900px; height: 500px;"></div>
  </body>
</html>









<!-- 파이형태 차트 -->


<html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      7],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);

        var options = {
          title: '안녕 난 파이라고해',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
    
    
  </body>
</html>









	</section>
</section>