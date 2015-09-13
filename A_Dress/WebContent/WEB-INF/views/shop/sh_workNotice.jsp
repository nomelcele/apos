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
	<section class="wrapper" >
		<div class="row" >
			<div class="col-lg-12" style="width:125%;">
				<section class="panel">
					<div class="row" style="font-size: 15px; 
					margin-top: -3%; ">
						<div class="col-lg-12">

					&nbsp

							<h3 class="page-header" style="font-family: '210 나무고딕'; color: #000000 ">
								<span><img src = "img/work.ico" style="width: 16pt; height: 15pt;"></span>공지사항

							</h3>
						</div>
					</div>

					<table class="table table-striped table-advance table-hover"
						style="font-size: 15px; ">
						<tbody>
							<tr>
								<th  style="font-family: '210 나무고딕'; color: #000000 ">#</th>
								<th  style="font-family: '210 나무고딕'; color: #000000 "><img src = "img/pen.ico" style="width: 15px; height: 15px;" > 제목</th>
								<th  style="font-family: '210 나무고딕'; color: #000000 "><i class="icon_profile"></i> 작성자</th>
								<th  style="font-family: '210 나무고딕'; color: #000000 "><i class="icon_calendar" ></i> 날짜</th>
							</tr>
							<c:forEach var="stList" items="${list}" >
								<tr style="font-family: '210 나무고딕' ">
									<td style= "background-color: #F4F4F4">${stList.no}</td>
									<td style= "background-color: #F4F4F4"><a
										href="javascript:godetail('${stList.no}')">
											${stList.title}[${stList.cnt }]</a></td>
									
									<td style= "background-color: #F4F4F4">${stList.writer}</td>
									<td style= "background-color: #F4F4F4">${stList.regdate}</td>
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
								<td  style="font-family: '210 나무고딕' "><a class="btn btn-danger btn-sm"
									href="javascript:gourl2()" title="Bootstrap 3 themes generator" style="margin-left: 1675%;">목록</a>
								</td>
							</tr>
						</table>
					</div>
				</section>
			</div>
		</div>


	</section>
</section>