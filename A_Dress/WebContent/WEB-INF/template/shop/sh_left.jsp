<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- javascripts -->

<!-- full Calendar  -->
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src='resources/js/lang-all.js'></script>
	<script src='resources/js/moment.min.js'></script>
	<script src='resources/js/fullcalendar.min.js'></script>
	
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery-ui-1.10.4.min.js"></script>
<script src="resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="resources/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="resources/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="resources/js/jquery.scrollTo.min.js"></script>
<script src="resources/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="resources/assets/jquery-knob/js/jquery.knob.js"></script>
<script src="resources/js/jquery.sparkline.js" type="text/javascript"></script>
<script
	src="resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="resources/js/owl.carousel.js"></script>
<!-- jQuery full calendar -->
<script src="resources/js/fullcalendar.min.js"></script>
<!-- Full Google Calendar - Calendar -->
<script src="resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="resources/js/calendar-custom.js"></script>
<script src="resources/js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="resources/js/jquery.customSelect.min.js"></script>
<script src="resources/assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="resources/js/scripts.js"></script>
<!-- custom script for this page-->
<script src="resources/js/sparkline-chart.js"></script>
<script src="resources/js/easy-pie-chart.js"></script>
<script src="resources/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="resources/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="resources/js/xcharts.min.js"></script>
<script src="resources/js/jquery.autosize.min.js"></script>
<script src="resources/js/jquery.placeholder.min.js"></script>
<script src="resources/js/gdp-data.js"></script>
<script src="resources/js/morris.min.js"></script>
<script src="resources/js/sparklines.js"></script>
<script src="resources/js/charts.js"></script>
<script src="resources/js/jquery.slimscroll.min.js"></script>
<script>
	$(function(){
		$('#send').click(function(){
			$.ajax({
				url : "sh_add_chat",
				type : "POST",
				data : {
					chat : $('#chat').val()
				},
				success : function(){
					$("#chat").val("");
				}
			});
			return false;
		});
	});
	</script>
<script>
	function goUrl(str) {
		if (str == "memberJoin") {
			document.getElementById("memberJoin").submit();
		} else if (str == "productCheck") {
			document.getElementById("productCheck").submit();
		} else if (str == "change") {
			document.getElementById("change").submit();
		} else if (str == "out") {
			document.getElementById("out").submit();
		} else if (str == "notice") {
			document.getElementById("notice").submit();
		} else if (str == "workitr") {
			document.getElementById("workitr").submit();
		} else if (str == "videochat") {
			document.getElementById("videochat").submit();
		} else if (str == "workTel") {
			document.getElementById("workTel").submit();
		} else if (str == "workData") {
			document.getElementById("workData").submit();
		} else if (str == "pcheck") {
			document.getElementById("pcheck").submit();
		} else if (str == "move") {
			document.getElementById("move").submit();
		} else if (str == "memberCheck") {
			document.getElementById("memberCheck").submit();
		} else if (str == "rank") {
			document.getElementById("rank").submit();
		} else if (str == "smangRegis") {
			document.getElementById("smangRegis").submit();
		} else if (str == "smangExchTefu") {
			document.getElementById("smangExchTefu").submit();
		} else if (str == "productStock") {
			document.getElementById("productStock").submit();
		} else if (str == "productRequestState") {
			document.getElementById("productRequestState").submit();
		} else if (str == "productgallery") {
			document.getElementById("productgallery").submit();
		} else if (str == "sh_salesTable") {
			document.getElementById("sh_salesTable").submit();
		} else if(str == "calendar"){
			document.getElementById("calendar").submit();
		}else if(str == "workPay"){
			document.getElementById("workPay").submit();
		}
	}

	
/////////////////////////////////////////chat/////////////////////////////////
	//receive
	//push Client설정
	console.log("typeof:"+typeof(EventSource));
	if(typeof(EventSource) != "undefined"){ //push를 받을 수 있는 브라우저인지 판단 (타입오브 -> 객체의 타입확인)
	var eventSource = new EventSource("sh_chatload");
	// EventSource EventListener의 종류
	// onmessage : 서버가 보낸 push 메세지가 수신되면 발생(리스너)
	// onerror : 서버가 보낸 push에서 에러가 발생되었을 때 발생
	// onopen : 서버가 연결이 되었을 때 발생
	var str = "";
	var first = true;
	eventSource.onmessage = function(event){ //리스너형식으로 돌아가고 있는 콜백함수
		
		var spl = event.data.split("<@>");
		if(spl[1] != "i" && str != spl[0]){
			if(first){
				first=false;
				str = spl[0];
			}else{
				str = spl[0];
				showNotification();
			}
		}
		document.getElementById("target").innerHTML="<div class='padd sscroll'><ul class='chats'>"+
		spl[0]+"</ul></div>";
// 		$("#target").html("<div class='panel-body'><div class='padd sscroll'><ul class='chats'>"+
// 				event.data+"</ul></div>");
		
	};
	}else{
		$("#target").html("해당 브라우저는 지원이 안됩니다.")
	}
	
	
	
////////////////////////////notification////////////////////////////////
	function showNotification(){
		// Let's check if the browser supports notifications
		  if (!("Notification" in window)) {
		    alert("This browser does not support desktop notification");
		  }

		  // Let's check whether notification permissions have alredy been granted
		  else if (Notification.permission === "granted") {
		    // If it's okay let's create a notification
		    var notification = new Notification("Hi there!", options);
		  }

		  // Otherwise, we need to ask the user for permission
		  else if (Notification.permission !== 'denied') {
		    Notification.requestPermission(function (permission) {
		      // If the user accepts, let's create a notification
		      if (permission === "granted") {
		        var notification = new Notification("Hi there!", options);
		      }
		    });
		  }
	}
		 //var noty = new notification(titleText)
		 //setTimeout(noty.close.bind(noty), 5000); 

		var options = {
			      body: 'new Message',
			      tag: 'notificationPopup',
			      icon: 'http://localhost/A_Dress/resources/img/bg-86.JPG'
			  }
</script>



<!-- 공지사항 -->
<form method="post" action="sh_workNotice" id=notice>
	<input type="hidden" name="page" value="1">
</form>

<!-- 내부규정 -->
<form method="post" action="sh_workItr" id=workitr></form>


<!-- 연락처 -->
<form method="post" action="sh_workTel" id=workTel></form>

<!-- 화상 회의 -->
<form method="post" action="sh_videochat" id=videochat>
<input type="hidden" name="shop_num" value="${sessionScope.shop_num}">
</form>

<!-- 출결 -->
<form method="post" action="ssh_workData" id=workData></form>

<!-- 급여 -->
<form method="post" action="ssh_workPay" id=workPay></form>


<!-- 회원가입 -->
<form method="post" action="sh_memberJoin" id=memberJoin></form>

<!-- 회원조회/수정 -->
<form method="post" action="sh_memberCheck" id=memberCheck></form>

<!-- 상품조회 -->
<form method="post" action="sh_productCheck" id=productCheck></form>

<!-- 상품재고관리 -->
<form method="post" action="sh_productStock" id=productStock></form>

<!-- 상품신청현황 -->
<form method="post" action="sh_productRequestState"
	id="productRequestState"><input type="hidden" name="shop_num" value="${shop_num}"></form>
<!-- 상품갤러리 -->
<form method="post" action="sh_productgallery" id="productgallery"></form>

<!-- 판매등록 -->
<form method="post" action="sh_smangRegis" id=smangRegis></form>

<!-- 교환/환불 -->
<form method="post" action="sh_smangExchTefu" id=smangExchTefu></form>

<!-- 정산관리/판매현황 -->
<form method="post" action="ssh_salesTable" id="sh_salesTable"></form>

<!-- 정산관리/기간별판매현황 -->
<form method="post" action="ssh_salesRank" id="rank"></form>

<!-- 본사 - 업무관리 - 일정관리 -->
<form method=post action="sh_fullcalendar" id="calendar"></form>












<!--sidebar start-->
<aside>
	<div id="sidebar" class="nav-collapse " style="font-family: '1훈바람언덕'">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu">


			<li class="sub-menu"><a href="javascript:;" class="">
			<span><img src = "img/work.ico" style="width: 20pt; height: 15pt;"></span> 
			 <span>업무관리</span> <span
					class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="javascript:goUrl('notice')">✔ 공지사항</a></li>
					<li><a class="" href="javascript:goUrl('workitr')">✔ 내부 규정</a></li>
					<li><a class="" href="javascript:goUrl('workTel')">✔ 매장 직원 연락처</a></li>
					<li><a class="" href="javascript:goUrl('calendar')">✔ 일정관리</a></li>
					<li><a class="" href="javascript:goUrl('videochat')">✔ 화상 회의</a></li>
					
					
				</ul></li>

			<li class="sub-menu"><a href="javascript:;" class=""> 
			<span><img src = "img/member.ico" style="width: 20pt; height: 15pt;"></span> 
			<span>  회원관리</span> <span class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="javascript:goUrl('memberJoin')">✔ 회원가입</a></li>
					<li><a class="" href="javascript:goUrl('memberCheck')">✔ 회원조회/수정</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;" class="">
			 <span><img src = "img/product.ico" style="width: 18pt; height: 15pt;"></span>
			 <span> 상품관리</span> <span
					class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="javascript:goUrl('productCheck')">✔ 상품조회</a></li>
					<li><a class="" href="javascript:goUrl('productStock')">✔ 상품재고관리</a></li>
					<li><a class="" href="javascript:goUrl('productRequestState')">✔ 상품신청현황</a></li>
						<li><a class="" href="javascript:goUrl('productgallery')">✔ LOOKBOOK</a></li>

				</ul></li>
			<li class="sub-menu"><a href="javascript:;" class="">
			<sapn><img src = "img/smang.ico" style="width: 20pt; height: 15pt;"></sapn>
			<span>판매등록</span> <span
					class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="javascript:goUrl('smangRegis')">✔ 판매등록</a></li>
					<li><a class="" href="javascript:goUrl('smangExchTefu')"><span>✔ 교환/환불</span></a></li>
				</ul></li>

			<li class="sub-menu" id="hideMenu""><a href="javascript:;"
				class=""> <span><img src = "img/sales.ico" style="width: 20pt; height: 15pt;"></span> 
				<span> 정산관리</span> <span
					class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="javascript:goUrl('sh_salesTable')">✔ 판매현황</a></li>
					<li><a class="" href="javascript:goUrl('rank')"><span>✔ 기간별 판매현황</span></a></li>
					<li><a class="" href="javascript:goUrl('workData')">✔ 출결관리</a></li>
					<li><a class="" href="javascript:goUrl('workPay')">✔ 급여관리</a></li>
				</ul></li>
		</ul>
		<!-- sidebar menu end-->
	</div>
</aside>
<!--sidebar end-->

