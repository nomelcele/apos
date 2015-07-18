<%@page import="java.util.List"%>
<%@page import="or.adress.mvc.dao.BonsaDao"%>
<%@page import="vo.CalendarVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	#calendarTagert{
		width: 70%;
		height : 70%;
		float: left;
	}
</style>
<script>
 $(function(){
  var currentLangCode = 'ko';
  $('#calendarTagert').fullCalendar('destroy');
  $('#calendarTagert').fullCalendar({
   //lang: currentLangCode,
   dragable:false,  //드래그앤 드랍 옵션
            timeFormat: 'hh:mm', //시간 포멧
           // lang: 'ko',  //언어타입
            header: {
			     left: '',
			     center: 'title',
			     right: 'prev,next today'
		    },
      		// 클릭이벤트 - 삭제 
            eventClick : function(calEvent,jsEvent,view){ 
            	var r=confirm("Delete " + calEvent.title+":"+calEvent._id);
	            if (r===true){
	            	$('#calendarTagert').fullCalendar('removeEvents', calEvent._id);
	            	// 삭제 -DB 연동
	            	var calen_start = $.fullCalendar.formatDate( calEvent.start, 'yyyy-MM-dd' );
	    			var calen_end = $.fullCalendar.formatDate( calEvent.end, 'yyyy-MM-dd' );
	            	var res = calEvent.title.split("/");
	            	alert(res[0]);
	            	$.ajax({
		  	              url: "bon_ajaxdeletecalendar",
		  	              type: "POST",
		  	              data: {
		  	            	  calen_num :  res[0],
				              calen_start : calen_start,
			            	  calen_end :  calen_end
		  	              },
		  	              dataType: "html",
		  	              success: function(a) {
		  	            	  //alert(a);
		  	              },
		  	              error: function(a, b) {
		  	                  alert("Request: " + JSON.stringify(a));
		  	              }
		  	          });
	            }
            },defaultView: 'month',//기본 뷰 - 옵션   //첫 페이지 기본 뷰 옵션
            editable: false,                                             //에디터 가능 옵션
   
   selectable: true,   // 달력 선택
   selectHelper: true,
   // 캘린더 셀렉트 된 값을 컬럼에 표시...
   select: function(start, end, event) {
	    var title = prompt('Event Title:');
	    var eventData;
	    if (title) {
		     eventData = {
		      title: title,
		      start: start,
		      end: end
		     }
	     	$('#calendarTagert').fullCalendar('renderEvent', eventData, true); // stick? = true
		     var start2 = $.fullCalendar.formatDate( start, 'yyyy-MM-dd' );
			 var end2 = $.fullCalendar.formatDate( end, 'yyyy-MM-dd' );
			          $.ajax({
			              url: "bon_ajaxcalendar",
			              type: "POST",
			              data: {
			            	  calen_start : start2,
			            	  calen_end :  end2,
			            	  calen_content : title,
			            	  calen_color : '#CC0000'
			              },
			              dataType: "html",
			              success: function(a) {
			            	  alert(a);
			              },
			              error: function(a, b) {
			                  alert("Request: " + JSON.stringify(a));
			              }
			          });
	    }
	    $('#calendarTagert').fullCalendar('unselect');
	     //alert("selected from: " + start.format() + "//, to: " + end.format());
	     // 셀렉트된 결과를 서버로 전송
	     // getDate : 일수, getMonth  : 달수, getFullYear : 년수
	  
   },
   editable: false,
   eventLimit: true,
   events: [${list}]
  })
 });
</script>
</head>

<section id="main-content">
	<section class="wrapper">
		<section class="panel">
			<div class="row" style="font-size: 15px;">
				<div class="col-lg-12" style="width: 125%">
					<div>
					<h3 class="page-header">
						<i class="fa fa-files-o"></i> 일정관리
					</h3></div>
						<div id="calendarTagert"></div>
				</div>
			</div>
		</section>
	</section>
</section>
