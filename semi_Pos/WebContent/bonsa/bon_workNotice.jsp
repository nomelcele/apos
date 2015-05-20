<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<%-- 본사 업무관리의 공지사항 페이지 입니다. --%>
<script>
	function gourl() {
		location = "bon_workNoticeWriter.jsp";
	}
</script>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading"> 공지사항 게시판 </header>

					<table class="table table-striped table-advance table-hover">
						<tbody>
							<tr>
								<th><i class="icon_mail_alt"></i> 제목</th>
								<th><i class="icon_profile"></i> 작성자</th>
								<th><i class="icon_calendar"></i> 날짜</th>
								<th><i class="icon_pin_alt"></i> 조회</th>
							</tr>
							<tr>
								<td>첫공지사항이다.</td>
								<td>서경연회장님</td>
								<td>2015-05-20</td>
								<td>10000</td>
							</tr>
						</tbody>
					</table>
				</section>
			</div>
		</div>
		<!-- page end-->
		<div>
			<tr align="right">
				<td ><input type="button" value="글작성" 
					onclick="gourl()"></td>
			</tr>
		</div>
		</div>
	</section>