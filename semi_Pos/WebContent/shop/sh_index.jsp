<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<%@include file="logsession.jsp" %>

<script>
   function goindexterm(str){
      if(str == "term"){
         document.getElementById("term").submit();
      }
   }
</script>


<form method="post" action="sh.apos" id="term">
<input type="hidden" name="cmd" value="swork">
<input type="hidden" name="subcmd" value="term">
</form>


 <section id="main-content">
 	<section class="wrapper">
 	
 	
 	
 	<div><img src="../img/bg-50.jpg"; width="1180"; align="center"></div>
 </br>
 
			<table align="center">
			<tr style="font-size: 1pt">
			<td><a href="javascript:goindexterm('term')">서비스이용약관</a></td> 
			<td>--</td>
			<td>개인정보취급방침</td>
			<td>--</td>
			<td>이메일무단수집거부</td>
			<td>--</td>
			<td>인재채용</td>
			</tr>
			</table>
			
			<P style="font-size: 1pt" align="center">경기도 성남시 분당구 삼평동 대왕판교로 670길 유스페이스2 B동 8층
			담당자: 박경찬 한광호 윤홍기 윤성현 서경연 도하진 </P>
 	
 	</section>
 	
 	</section>
 	



