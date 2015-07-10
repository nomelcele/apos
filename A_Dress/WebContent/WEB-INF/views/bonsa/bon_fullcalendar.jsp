<%@page import="java.util.List"%>
<%@page import="or.adress.mvc.dao.BonsaDao"%>
<%@page import="vo.CalendarVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel='stylesheet' href='http://fullcalendar.io/js/fullcalendar-2.3.1/lib/cupertino/jquery-ui.min.css' />
<link href='http://fullcalendar.io/js/fullcalendar-2.3.1/fullcalendar.css' rel='stylesheet' />
<link href='http://fullcalendar.io/js/fullcalendar-2.3.1/fullcalendar.print.css' rel='stylesheet' media='print' />
<script	src='http://fullcalendar.io/js/fullcalendar-2.3.1/lib/moment.min.js'></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src='http://fullcalendar.io/js/fullcalendar-2.3.1/fullcalendar.min.js'></script>
<script src='http://fullcalendar.io/js/fullcalendar-2.3.1/lang-all.js'></script>
<script>
 $(function(){
  var currentLangCode = 'ko';
  $('#calendar').fullCalendar('destroy');
  $('#calendar').fullCalendar({
   //lang: currentLangCode,
   dragable:false,  //드래그앤 드랍 옵션
            timeFormat: 'hh:mm', //시간 포멧
           // lang: 'ko',  //언어타입
            header: {
     left: 'prev,next today',
     center: 'title',
     right: ''
      },
      // 클릭이벤트 - 삭제 
            eventClick : function(calEvent,jsEvent,view){ 
              var r=confirm("Delete " + calEvent.title+":"+calEvent._id);
              if (r===true)
                {
                    $('#calendar').fullCalendar('removeEvents', calEvent._id);
                }
             },
             defaultView: 'month',//기본 뷰 - 옵션   //첫 페이지 기본 뷰 옵션
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
     };

     $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
    }
    $('#calendar').fullCalendar('unselect');
  
    //alert("selected from: " + start.format() + "//, to: " + end.format());
     // 셀렉트된 결과를 서버로 전송
          $.ajax({
              url: "bon_ajaxcalendar",
              type: "POST",
              data: {
            	  calen_start :  start.format(),
            	  calen_end :  end.format(),
            	  calen_content : title
              },
              dataType: "html",
              success: function(a) {
            	  alert(a);
              },
              error: function(a, b) {
                  alert("Request: " + JSON.stringify(a));
              }
          });
   },
   editable: true,
   eventLimit: true,
   events: [${list}]
  })
 });
</script>

<style>
	body {
		margin:auto;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}
	#calendar {
		max-width: 70%;
		max-height : 70%;
		margin-top: 130px;
		margin-left: 220px;
	}
</style>
</head>
<body>
	<div id="calendar"></div>
</body>
</html>