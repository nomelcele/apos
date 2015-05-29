<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 본사 업무관리의 공지사항 페이지 입니다. --%>
<script>
	function gourl3() {
		document.getElementById("write").submit();
	}
</script>
<script>
	function gourl2() {
		document.getElementById("notice").submit();
	}
</script>
<form method="post" action="bon.apos" id=write>
<input type="hidden" name="cmd" value="bwork">
<input type="hidden" name="subcmd" value="in">
</form>
<form method="post" action="bon.apos" id=notice>
<input type="hidden" name="cmd" value="bwork">
<input type="hidden" name="subcmd" value="notice">
<input type="hidden" name="page" value="1">
</form>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading"> 공지사항 게시판 </header>

					<table class="table table-striped table-advance table-hover">
						<tbody>
							<tr>
								<th>#</th>
								<th><i class="icon_mail_alt"></i> 제목</th>
								<th><i class="icon_profile"></i> 작성자</th>
								<th><i class="icon_calendar"></i> 날짜</th>
							</tr>
							<c:forEach var="stList" items="${list}">
					<tr>
						<td>${stList.no}</td>
						<td>
						<a href="bon.apos?cmd=bwork&subcmd=boardDetail&no=${stList.no}&page=1">
						${stList.title}</a>
						</td>
						<td>${stList.writer}</td>
						<td>${stList.regdate}</td>
					</tr>
				</c:forEach>
						</tbody>
					</table>
				</section>
			</div>
		</div>
		<!-- page end-->
		<section class="panel">
        <div class="panel-body">
		<c:set var="pageUrl" value="bon.apos?cmd=bwork&subcmd=notice"/>
		<%@include file="page.jsp" %>
		</div>
		</section>
		<div>
			<tr align="right">
				<td ><input type="button" value="글작성" 
					onclick="gourl3()"></td>
				<td ><input type="button" value="목록" 
					onclick="gourl2()"></td>
			</tr>
		</div>
		</div>
	</section>