<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<form method="post" action="bon_noticein" id=write>
</form>

<form method="post" action="bon_workNotice" id=notice>
	<input type="hidden" name="page" value="1">
</form>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12" style="width:125%">
				<section class="panel">
					<div class="row" style="font-size: 15px; margin-top: -3%; widows: 100%;">
						<div class="col-lg-12">
							<h3 class="page-header" style="font-family: '210 나무고딕' ">
								<span><img src = "img/work.ico" style="width: 16pt; height: 15pt;"></span>공지사항 
							</h3>
						</div>
					</div>

					<table class="table table-striped table-advance table-hover"
						style="font-size: 15px;">
						<tbody style="font-family: '210 나무고딕' ">
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
									<form action="bon_workNoticedetail" method="post" id="godetail">
										<input type="hidden" name="no" value="" id="dno">
										<input type="hidden" name="page" value="1">
									</form>
									<td>${stList.writer}</td>
									<td>${stList.regdate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- page end-->
					<section class="panel">

						<c:set var="pageUrl" value="bon_workNotice" />
						<%@include file="page.jsp" %>
					

						<div>

							<table>
								<tr>
									<td><a class="btn btn-danger btn-sm"
										href="javascript:gourl3()"
										title="Bootstrap 3 themes generator">글작성</a></td>
									<td><a class="btn btn-danger btn-sm"
										href="javascript:gourl2()"
										title="Bootstrap 3 themes generator">목록</a></td>

								</tr>
							</table>

						</div>

					</section>
				</section>
			</div>
		</div>
	</section>
</section>