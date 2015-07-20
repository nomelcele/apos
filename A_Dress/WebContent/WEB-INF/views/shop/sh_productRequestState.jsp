<%@page import="java.util.ArrayList"%>
<%-- ---<%@page import="dao.ShopDao"%>--%>
<%@page import="vo.ShopHotkeyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 매장 상품관리의 상품신청현황 페이지 입니다.-->
<script>

function open_win2(img2)
{
 window.open(img2,'popup', 'width=250, height=300, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
}


</script>

<script>
function open_win3(img3)
{
 window.open(img3,'popup', 'width=280, height=100, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
}


</script>
<section id="main-content">
	<section class="wrapper">
		<div class="row" style="font-size: 13px; width:100%; height:100%">
			<div class="col-lg-12">

				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 상품 신청 현황 
				</h3>

				<div class="row">
					<br />
					<div class="col-sm-10" style="width: 125%;height: 100%">
						<table class="table">
							<thead>
								<tr>
									<th>신청번호</th>
									<th>매장명</th>
									<th>상품 이름</th>
									<th>코드</th>
									<th>사이즈</th>
									<th>가격</th>
									<th>상품 사진</th>
									<th>바코드</th>
									<th>신청 수량</th>
									<th>신청현황</th>
									<th>신청일</th>
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

								<c:forEach var="state" items="${list}">
									<tr>
										<td>${state.req_num}</td>
										<td>${state.shop_name}</td>
										<td>${state.pro_name}</td>
										<td>${state.pro_code}</td>
										<td>${state.pro_size}</td>
										<td>${state.pro_price}</td>
										<td><a href="javascript:open_win2('product/${state.pro_img}')">
										<img src='product/${state.pro_img}'style="width:100px;"></a></td>
										
										<td><a href="javascript:open_win3('barcode/${state.pro_barcode}')">
										<img src='barcode/${state.pro_barcode}'style="width:100px;"></a></td>
										<td>${state.pro_amount}</td>
										<td>${state.req_status }</td>
										<td>${state.req_date }</td>
						
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
