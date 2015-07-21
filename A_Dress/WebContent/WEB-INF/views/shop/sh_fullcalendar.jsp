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
   
   selectable: false,   // 달력 선택
   selectHelper: false,
   // 캘린더 셀렉트 된 값을 컬럼에 표시...
   select: function(start, end, event) {
	    var title = prompt('Event Title:');
	    var eventData;
	    if (title) {
		     eventData = {
		      title: title,
		      start: start,
		      end: end
		     };
	
	     	$('#calendarTagert').fullCalendar('renderEvent', eventData, true); // stick? = true
	    }
	    $('#calendarTagert').fullCalendar('unselect');

	         
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
			<div class="row" style="font-size: 15px; width: 125%;">
				<div class="col-lg-12" >
					<div>
					<h3 class="page-header">
						<span><img src = "img/work.ico" style="width: 20pt; height: 15pt;"></span> 일정 관리
					</h3></div>
						<div id="calendarTagert"></div>
				</div>
			</div>
		</section>
	</section>
</section>
