<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<script>
	$(function() {
		$('#pnamebtn').click(function() {
			//alert($('#pname1').val());
			$.ajax({
				url : "bon_product_ajax.jsp?pname1=" + $('#pname1').val(),
				type : "POST",
				dataType : "html",
				success : function(data) {
					//alert(data);
					var str = data.trim();
					document.getElementById("view_product").innerHTML = str;
					//                  if(data.trim() == "true"){
					//                  	alert("success!")
					//                  	$('#checkhot').submit();
					//                  }else{
					//                  	alert("입력된 정보가 잘 못 되었습니다.")
					//                  }
				},
				error : function(a, b) {
					// alert("Request: " + JSON.stringify(a));
				}
			});

		});
		$('#shbtn').click(function() {
			//alert("shbtn");
		});
		$('#shnumbtn')
				.click(
						function() {
							//alert($('#pcode3').val()+" , "+$('#pnum3').val());
							$
									.ajax({
										url : "bon_product_ajax2.jsp?pcode3="
												+ $('#pcode3').val()
												+ "&pnum3=" + $('#pnum3').val(),
										type : "POST",
										dataType : "html",
										success : function(data) {
											//alert(data);
											var str = data.trim();
											document
													.getElementById("view_product2").innerHTML = str;
										},
										error : function(a, b) {
											//alert("Request: " + JSON.stringify(a));
										}
									});
						});
		$('#ptablebtn').click(function() {
			//alert("ptablebtn");
		});

	});

	$(function() {
		$("#bon_p_numbtn").click(function() {

			$.ajax({
				type : "POST",
				url : "bon_productSale_callback.jsp",
				data : {
					pcode : $("#pcode3").val(),
					shopnum : $("#pnum3").val()
				},
				success : function(data) {
					$('#target2').html(data);
				}
			});
			return false;
		});
	});

	function proset(shopname, pcode, psize, pamount) {
		$("#shop").val(shopname);
		$("#pcode").val(pcode);
		$("#psize").val(psize);
		$("#pamount").val(pamount);
	}

	function pstoeditaction() {
		document.getElementById("productstockedit").submit();
	}
</script>
<section id="main-content">
	<section class="wrapper">

		<div class="row" style="font-size: 15px; width:1200px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 재고조정
				</h3>


				<div class="row">
					<div class="col-lg-12" >
						<section class="panel">
							<div class="panel-body">



								

									<div class="form-group">
										<div class="col-lg-4">
											<input class="form-control" id="pcode3" name="pcode3"
												minlength="2" onkeydown="startSuggest();" autocomplete="off"
												type="text" placeholder="상품코드">
										</div>

										<div class="col-lg-4">
											<input class="form-control" id="pnum3" name="pnum3"
												minlength="2" onkeydown="startSuggest();" autocomplete="off"
												type="text" placeholder="지점번호">
										</div>
										<button class="btn btn-default" type="button"
											id="bon_p_numbtn">조회</button>
									</div>






									<!-- 									<div class="col-lg-12" style="width: 700px;"> -->
									<!-- 										<table class="table table-striped table-advance table-hover"> -->
									<!-- 											<thaed> -->
									<!-- 												<tr> -->
									<!-- 													<th>상품명</th> -->
									<!-- 													<th>지점</th> -->
									<!-- 													<th>사이즈</th> -->
									<!-- 													<th>수량</th> -->
									<!-- 												</tr> -->
									<!-- 												</thaed> -->
									<!-- 												<tbody id ="view_product2"> -->
									<!-- 												<tr> -->
									<!-- 													<td id="tpname"></td> -->
									<!-- 													<td></td> -->
									<!-- 													<td></td> -->
									<!-- 													<td></td> -->
									<!-- 												</tr> -->
									<!-- 											</tbody> -->
									<!-- 										</table> -->
									<!-- 										<button class="btn btn-default" type="button" id="ptablebtn" -->
									<!-- 											style="margin-left: 500px;">완료</button> -->
									<!-- 									</div> -->




									<div class="table-responsive">

										<table class="table">
											<thead>
												<tr>
													<th>no</th>
													<th>대리점</th>
													<th>상품코드</th>
													<th>사이즈</th>
													<th>재고</th>
													<th>가격</th>
													<th>상품사진</th>
													<th>바코드</th>
													<th>선택</th>
												</tr>
											</thead>
											</table>
											<table class="table">
											<tbody id="target2">

												<%-- 반복 
									 <c:forEach var="ptlist" items="${plist}">
									 	<tr>
									 		<td>${ptlist.pro_code}</td>
									 		<td>${ptlist.sto_size }</td>
									 		<td>${ptlist.sto_amount }</td>
									 		<td>${ptlist.pro_price }</td>
									 		<td>할인가</td>
									 	</tr>
									 </c:forEach>
									 반복 --%>
											</tbody>
										</table>
									</div>



									<table class="table" style="width: 800px;">
										<thead>
											<tr>
												<th>대리점</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>수량</th>
											</tr>
										</thead>
										<tbody>

											<form action="bon.apos" method="post" id="productstockedit">
												<tr class="active">
													<td><input type="text" class="form-control"
														name='shop' id="shop" value="" readonly="readonly"></td>
													<td><input type="text" class="form-control"
														name='pcode' id="pcode" value="" readonly="readonly"></td>
													<td><input type="text" class="form-control"
														name='psize' id="psize" value="" readonly="readonly"></td>
													<td><input type="number" class="form-control"
														name='pamount' id="pamount" value="0"></td>
												</tr>
												<input type="hidden" name="cmd" value="bproduct"> <input
													type="hidden" name="subcmd" value="stoedit">
											</form>

										</tbody>
									</table>

									<button class="btn btn-default" type="button"
										onclick="javascript:pstoeditaction()">완료</button>

								</div>
							
						</section>
					</div>
				</div>
			</div>
		</div>
	</section>
</section>