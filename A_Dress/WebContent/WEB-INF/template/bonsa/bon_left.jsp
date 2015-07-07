<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
           <!-- javascripts -->
   
    <script src="resources/js/jquery.js"></script>
   <script src="resources/js/jquery-ui-1.10.4.min.js"></script>
    <script src="resources/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="resources/js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="resources/js/jquery.scrollTo.min.js"></script>
    <script src="resources/js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="resources/assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="resources/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="resources/js/owl.carousel.js" ></script>
    <!-- jQuery full calendar -->
    <<script src="resources/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
   <script src="resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="resources/js/calendar-custom.js"></script>
   <script src="resources/js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="resources/js/jquery.customSelect.min.js" ></script>
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
				url : "bon_add_chat",
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
  
	function goUrl(str){
		if(str == "notice"){
			document.getElementById("notice").submit();
		}else if(str == "move"){
			document.getElementById("move").submit();
		}else if(str == "join"){
			document.getElementById("join").submit();
		}else if(str == "infor"){
			document.getElementById("infor").submit();
		}else if(str == "check"){
			document.getElementById("check").submit();
		}else if(str == "scheck"){
			document.getElementById("scheck").submit();
		}else if(str == "add"){
			document.getElementById("add").submit();
		}else if(str == "del"){
			document.getElementById("del").submit();
		}else if(str == "sale"){
			document.getElementById("sale").submit();
		}else if(str == "brandsch"){
			document.getElementById("brandsch").submit();
		}else if(str == "productsch"){
			document.getElementById("productsch").submit();
		}else if(str == "outletsch"){
			document.getElementById("outletsch").submit();
		}
// 		else if(str == "YES"){
//  			document.getElementById("reqOk").submit();
// 		}else if(str== "NO"){
// 			document.getElementById("reqNo").submit();
// 		}
	}
	
	
	
	/////////////////////////////////////////chat/////////////////////////////////
	//receive
	//push Client설정
	console.log("typeof:"+typeof(EventSource));
	if(typeof(EventSource) != "undefined"){ //push를 받을 수 있는 브라우저인지 판단 (타입오브 -> 객체의 타입확인)
	var eventSource = new EventSource("bon_chatload");
	// EventSource EventListener의 종류
	// onmessage : 서버가 보낸 push 메세지가 수신되면 발생(리스너)
	// onerror : 서버가 보낸 push에서 에러가 발생되었을 때 발생
	// onopen : 서버가 연결이 되었을 때 발생
	var str = "";
	eventSource.onmessage = function(event){ //리스너형식으로 돌아가고 있는 콜백함수
		
		if(str != event.data){
			str = event.data;
			showNotification();
			window.webkitNotifications.requestPermission();
		}
		document.getElementById("target").innerHTML="<div class='padd sscroll'><ul class='chats'>"+
		event.data+"</ul></div>";
// 		$("#target").html("<div class='panel-body'><div class='padd sscroll'><ul class='chats'>"+
// 				event.data+"</ul></div>");
		
	};
	}else{
		$("#target").html("해당 브라우저는 지원이 안됩니다.")
	}

	
// Ajax로 사용자의 데이터를 보내는 쪽 
//사용자가 입력한 내용을 서버에 저장
// 	$(function(){
// 		$("form").submit(function(){
// 			var fdata = {
// 					u_id:encodeURIComponent($("#u_id").val()),
// 					chat:encodeURIComponent($("#chat").val())};
// 			$.ajax({ //ajax로 보냄
// 				type:"POST", //헤더에 넣어서보냄 (URL로 안보임)
// 				url:"chat_add.jsp",
// 				data:fdata
// 			});
// 			return false;//서브밋후에 페이지가 안바뀌도록 false리턴
// 		});
// 	});
////////////////////////////notification////////////////////////////////
function showNotification(){
if(window.webkitNotifications) { //notification 이 다 되는 것이 아니에요.
		if(window.webkitNotifications.checkPermission() == 0 ){ 
//처음에 승인 요구를 받음.

			var logo= 'http://sstatic.naver.net/search/2015/h_logo.png'; //삽입될 그림
			var sub = 'new Message';//타이틀
			var con = 'HTML5 notification';    //내용  
			var n = window.webkitNotifications.createNotification(logo, sub, con);
//글을 보여줌.
			n.show();
			var n2 = window.webkitNotifications.createHTMLNotification("http://192.168.0.2:8080/A_Dress");//브라우저를 보여줌.

			n2.show();      
		}
		else{
			requestPermission(showNotification);//승인 요구를 함.
			//Notification.requestPermission();
			//window.webkitNotifications.requestPermission(showNotification);
		}   
	}
	else{
		alert("지원을 안합니다.");
	}
}


function requestPermission (callback) {
	alert("이거호출댐?");
	window.webkitNotifications.requestPermission(callback);
}
</script>

<!--본사 - 업무관리 - 공지사항 -->
<form method=post action="bon_workNotice" id="notice">
	<input type="hidden" name="page" value="1">
</form>
<!--본사 - 매장관리 - 매장가입 -->
<form method="post" action="bon_shopJoin" id="join"></form>
<!--본사 - 매장관리 - 매장조회 -->
<form method="post" action="bon_shopCheck" id="check"></form>
<!-- 본사 상품관리 상품추가 -->
<form method="post" action="bon_productAdd" id="add"></form>
<!-- 본사 상품관리 상품재고관리 -->
<form method="post" action="bon_productSale" id="sale"></form>
<!-- 품목별 매출순위 -->
<form method="post" action="bon_productSalesCheck" id="productsch"></form>
<!--  대리점별 매출순위-->
<form method="post" action="bon_outletSalesCheck" id="outletsch"></form>


      <!--sidebar start-->
      <aside>
         <div id="sidebar"  class="nav-collapse " style="font-family:'1훈바람언덕'">
       
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
             
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_documents_alt"></i>
                          <span>업무관리</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">                          
                          <li><a class="" href="javascript:goUrl('notice')">공지사항</a></li>
                           </ul>
                  </li>
              <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>매장관리</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="javascript:goUrl('join')">매장 가입</a></li>   
                          <li><a class="" href="javascript:goUrl('check')">매장 조회</a></li>
                      </ul>
                  </li>       
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>상품관리</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="javascript:goUrl('add')">상품추가</a></li>
                          <li><a class="" href="javascript:goUrl('sale')">상품 재고 관리</a></li>
                      </ul>
                  </li>
                <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>정산관리</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="javascript:goUrl('productsch')">품목별 매출순위</a></li>
                          <li><a class="" href="javascript:goUrl('outletsch')">대리점별 매출순위</a></li>
                          
                      </ul>
                  </li>
                  
                  
              </ul>
              <!-- sidebar menu end-->
  

		</div>
      </aside>
      <!--sidebar end-->