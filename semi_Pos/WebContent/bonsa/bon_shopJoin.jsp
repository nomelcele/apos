<%@page import="java.util.ArrayList"%>
<%@page import="dao.ShopDao"%>
<%@page import="vo.ShopHotkeyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 본사 매장관리의 매장가입 페이지 입니다.-->

<section id="main-content">
	<section class="wrapper">
		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 매장 Hotkey 발급  대기자
				</h3>
				
				<div class="row">
					<br />
					<div class="col-sm-10">
						<table class="table">
							<thead>
								<tr>
									<th>순 번</th>
									<th>성 명</th>
									<th>사업자 번호</th>
									<th>E-Mail</th>
									<th>신청 날짜</th>
								</tr>
							</thead>
							<tbody>
									<c:forEach var="shopinfo" items="${list}">
									<tr>
										<td>${shopinfo.key_num}</td>
										<td>${shopinfo.key_name}</td>
										<td>${shopinfo.key_crnum}</td>
										<td>${shopinfo.key_email}</td>
										<td>${shopinfo.key_date}</td>
										<td><input type="button" class="form-control" id="approve" value="승인"/></td>
										<td><input type="button" class="form-control" id="decline" value="거절"/></td>
									</tr>
									</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
</section>