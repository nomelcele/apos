<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<!-- 본사 매장관리의 매장 조회 페이지 입니다. -->


<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading"> 매장 정보다이놈의시키이시키 </header>
					<table class="table">
						<thead>
							<tr>
								<th>지점명</th>
								<th>주소</th>
								<th>사업자번호</th>
								<th>매장주이름</th>
								<th>매장전화번호</th>
								<th>매장주email</th>
								<th>매장주사진</th>
							</tr>
						</thead>
						
						<tbody>
						<c:forEach var="shlist" items="${list}">
							<tr class="warning">
								<th>${shlist.name}</th>
								<th>${shlist.adr}</th>
								<th>${shlist.num}</th>
								<th>${shlist.master}</th>
								<th>${shlist.tel}</th>
								<th>${shlist.mail}</th>
								<th>${shlist.img}</th>
								
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</section>
			</div>
		</div>
	</section>
</section>
