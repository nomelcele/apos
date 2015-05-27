<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script src="../js/http.js"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawVisualization);
var res=[
         ['Month', '남성', '여성', '유아', ],
         ['2004/05',  165,      938,         522,           ],
         ['2005/06',  135,      1120,        599,           ],
         ['2006/07',  157,      1167,        587,           ],
         ['2007/08',  139,      1110,        615,           ],
         ['2008/09',  136,      691,         629,           ]
       ] ;
       var res2= [
                  ['Month', '남성', '여성', '유아', ],
                  ['2004/05',  165,      938,         522,           ],
                  ['2005/06',  135,      1120,        599,           ],
                  ['2006/07',  157,      1167,        587,           ]
                ] ;
function drawVisualization() {
  // Some raw data (not necessarily accurate)
  var data = google.visualization.arrayToDataTable(res2);

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
    
<script>
	$(function(){
		$('#oneday').click(function(){
			alert("test");
			$.ajax({
                url: "bon_chartmoney.jsp?term="+"-6"+"&enddate="+"sysdate" ,
                type: "POST",
                dataType: "html",
                success: function(data) {
                	res=data;
                 if(data.trim() == "true"){
                 	alert("success!")
                 	$('#checkhot').submit();
                 }else{
                 	alert("입력된 정보가 잘 못 되었습니다.")
                 }
                },
                error: function(a, b) {
                    alert("Request: " + JSON.stringify(a));
                }
            });
			
		});
	});

</script>

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
										<div style="margin-left: 150px; margin-top: 10px;">
												<button type="button" id="oneday" class="btn btn-primary"
												style="margin-left: 100px;">1일</button>
												
												<button type="button" id="tmonth" class="btn btn-primary"
												style="margin-left: 100px;">3개월</button>
												
												<button type="button" id="smonth" class="btn btn-primary"
												style="margin-left: 100px;">6개월</button>
										</div>		

 
    <div id="chart_div" style="width: 900px; height: 500px;"></div>
  

















	</section>
</section>