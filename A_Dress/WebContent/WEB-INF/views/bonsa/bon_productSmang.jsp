<%@page import="java.util.ArrayList"%>
<%-- ---<%@page import="dao.ShopDao"%>--%>
<%@page import="vo.ShopHotkeyVO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
			function gostockyn(req_status, req_num){
				if(req_status=="Yes"){
					var UP;
					   UP=confirm("정말 승인하시겠습니까?");
					   if(UP){
						   $("#req_status").val(req_status);
							$("#req_num").val(req_num);
						      document.getElementById("stockyn").submit();
					   }else{
						   
					   }
				}else{
					
					alert("거절하였습니다.");
					if(req_status=="No"){
						 $("#req_status").val(req_status);
							$("#req_num").val(req_num);
						      document.getElementById("stockyn").submit();
						
					}
					
					
				}
			}
	
</script>
<script>

function openview1(img2)
{
 window.open(img2,'popup', 'width=250, height=300, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
}


</script>

<script>
function openview2(img3)
{
 window.open(img3,'popup', 'width=280, height=100, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
}
</script>

<!-- 본사 상품관리의 상품재고관리 페이지 입니다.-->
<section id="main-content">
	<section class="wrapper">
		<div class="row" style="font-size: 5px; width: 100%; height: 100%">
			<div class="col-lg-12">

				<h3 class="page-header" style="font-family: '210 나무고딕' ">
					<span><img src = "img/product.ico" style="width: 14pt; height: 14pt;"></span>매장 재고관리
				</h3>

				<div class="row">
					<br />
					<div class="col-sm-10" style="width: 130%; height: 100%">
						<table class="table">
							<thead style="font-family: '210 나무고딕' ">
								<tr>
									<th style="width: 6%;">번호</th>
									<th style="width: 8%;">매장</th>
									<th style="width: 10%;">이름</th>
									<th style="width: 10%;">코드</th>
									<th>사이즈</th>
									<th>사진</th>
									<th>수량</th>
									<th>현황</th>
									<th>날짜</th>
									<th style="width: 5%;">Yes/</th>
									<th style="width: 5%;">No</th>
								</tr>
							</thead>
							<tbody style="font-family: '210 나무고딕' ">

								<form action="bon_productSale_1" method="post" id="stockyn">
									<td><input type="hidden" class="form-control"
										name='req_status' id="req_status" value=""></td>
									<td><input type="hidden" class="form-control"
										name='req_num' id="req_num" value=""></td>
									</tr>
								</form>

								<c:forEach var="bon_product" items="${list}" varStatus="status">
									<tr>
										<td>${status.index+1}</td>
										<td>${bon_product.shop_name}</td>
										<td>${bon_product.pro_name}</td>
										<td>${bon_product.pro_code}</td>
										<td>${bon_product.pro_size}</td>
										<td><a
											href="javascript:openview1('product/${bon_product.pro_img}')">
												<img src='product/${bon_product.pro_img}'
												style="width: 40px; cursor: hand;">
										</a></td>
										<td>${bon_product.pro_amount}</td>
										<td>${bon_product.req_status }</td>
										<td>${bon_product.req_date }</td>


										<!-- 
										select s.shop_name, s.shop_num,p.pro_name,p,pro_code,q.pro_size,q.pro_price,p.pro_img,p.pro_barcode,
q.pro_amount -->
										<!-- 
										
										<th>순 번</th>
									<th>매장명</th>
									<th>상품 이름</th>
									<th>코드</th>
									<th>사이즈</th>
									<th>가격</th>
									<th>상품 사진</th>
									<th>바코드</th>
									<th>신청 수량</th>
									<th>Yes/</th>
									<th>No</th> -->


										<td><input type="button" class="form-control" id="yes"
											value="YES" style="color: #008fcc;"
											onclick="javascript:gostockyn('Yes',${bon_product.req_num})" /></td>
										<%--location='*.apos?cmd=mailSelect&subcmd=ok&child=${shopinfo.key_email}' --%>
										<%--javascript:goUrl('YES') --%>
										<td><input type="button" class="form-control" id="no"
											value="NO" style="color: #ed1e1a;"
											onclick="javascript:gostockyn('No',${bon_product.req_num})" /></td>
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
