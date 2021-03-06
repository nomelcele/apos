<%@page import="java.util.ArrayList"%>
<%@page import="dao.ShopDao"%>
<%@page import="vo.ShopHotkeyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 본사 매장관리의 매장가입 페이지 입니다.-->
<section id="main-content">
	<section class="wrapper">
		<div class="row" style="font-size: 15px; width:1500px;">
			<div class="col-lg-12">

				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 매장 Hotkey 발급 대기자
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
									<th>Hotkey</th>
									<th>YES/</th>
									<th>NO</th>
								</tr>
							</thead>
							<tbody>
								<%-- Hidden submit --%>
								<%-- YES --%>
<!-- 								<form method="post" action="sh.apos" id="reqOk"> -->
<!-- 									<input type="hidden" name="cmd" value="mailSelect">  -->
<!-- 									<input type="hidden" name="subcmd" value="yes"> <input -->
<%-- 										type="hidden" name="child" value="${shopinfo.key_email}"> --%>
<!-- 								</form> -->
				
<%-- 								NO --%>
<!-- 								<form method="post" action="sh.apos" id="reqNo"> -->
<!-- 									<input type="hidden" name="cmd" value="mailSelect"> <input -->
<!-- 										type="hidden" name="subcmd" value="no"> -->
<!-- 								</form> -->
								<%-- Hidden End --%>

								<c:forEach var="shopinfo" items="${list}">
									<tr>
										<td>${shopinfo.key_num}</td>
										<td>${shopinfo.key_name}</td>
										<td>${shopinfo.key_crnum}</td>
										<td>${shopinfo.key_email}</td>
										<td>${shopinfo.key_date}</td>
										<td>${shopinfo.key_hotkey}</td>

										<td><input type="button" class="form-control" id="yes" value="YES" onclick="location='*.apos?cmd=mailSelect&subcmd=ok&mail=${shopinfo.key_email}&hotkey=${shopinfo.key_hotkey}&name=${shopinfo.key_name}'" /></td>
											<%--location='*.apos?cmd=mailSelect&subcmd=ok&child=${shopinfo.key_email}' --%>
											<%--javascript:goUrl('YES') --%>
										<td><input type="button" class="form-control" id="no" value="NO" onclick="location='*.apos?cmd=mailSelect&subcmd=no&mail=${shopinfo.key_email}&name=${shopinfo.key_name}'" /></td>
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
