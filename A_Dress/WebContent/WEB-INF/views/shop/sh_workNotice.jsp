<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 매장 업무관리의 공지사항 페이지 입니다. --%>
<script>
	function gourl2() {
		document.getElementById("notice").submit();
	}
</script>
<script>
	function gourl31(page){
		document.getElementById("movepage").innerHTML="<input type='hidden' name='page' value='"+page+"'>";
		document.getElementById("movepage").submit();
	}
</script>
<script>
	function godetail(dno){
		document.getElementById("dno").value=dno;
		document.getElementById("godetail").submit();
	}
</script>
<form method="post" action="sh_workNotice" id=notice>
<input type="hidden" name="page" value="1">
</form>
<form action="sh_workNoticedetail" method="post" id="godetail">
	<input type="hidden" name="no" value="" id="dno">
	<input type="hidden" name="page" value="1">
</form>
<section id="main-content" >
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12" style="width:125%;">
				<section class="panel">
					<div class="row" style="font-size: 15px; margin-top: -3%; ">
						<div class="col-lg-12">
							<h3 class="page-header">
								<span><img src = "img/work.ico" style="width: 20pt; height: 15pt;"></span>공지사항
							</h3>
						</div>
					</div>

					<table class="table table-striped table-advance table-hover"
						style="font-size: 15px; ">
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
									<td><a
										href="javascript:godetail('${stList.no}')">
											${stList.title}[${stList.cnt }]</a></td>
									
									<td>${stList.writer}</td>
									<td>${stList.regdate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- page end-->

					<c:set var="pageUrl" value="sh_workNotice" />
						<%@include file="page.jsp" %>

					<div>
						<table>
							<tr>
								<td><a class="btn btn-danger btn-sm"
									href="javascript:gourl2()" title="Bootstrap 3 themes generator">목록</a>
								</td>
							</tr>
						</table>
					</div>
				</section>
			</div>
		</div>


	</section>
</section>