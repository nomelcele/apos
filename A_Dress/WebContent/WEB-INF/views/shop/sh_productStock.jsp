<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			//alert($("#pnum3").val())
			$.ajax({
				type : "POST",
				url : "sh_productStock_callback",
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

	function proset(pcode, psize) {
		$("#pcode").val(pcode);
		$("#psize").val(psize);
	}

	function pstoeditaction() {
		document.getElementById("productstockedit").submit();
		alert("신청이 완료되었습니다.");
	}
</script>
<section id="main-content">
	<section class="wrapper">

		<div class="row" >
			<div class="col-lg-12" >
				<h3 class="page-header" style="font-family: '210 나무고딕' ">
					<span><img src = "img/product.ico" style="width: 18pt; height: 15pt;"></span>재고조정
				</h3>
				<div class="row" style="font-size: 13px; width: 125%; ">
					<div class="col-lg-12">
						<section class="panel">
							<div class="panel-body">
								<div class="form-group">
									<table>
										<tr>
											<td><input 	class="form-control" id="pcode3"
												name="pcode3" onkeydown="startSuggest();" autocomplete="off"
												type="text" placeholder="상품코드"></td>

											<td>
												<button class="btn btn-default" type="button"
													id="bon_p_numbtn">조회</button>
											</td>
										</tr>
									</table>
								</div>

								<div class="table-responsive" style="height: 100%; width: 100%">

									<table class="table" style="width: 100%;">
										<thead>
											<tr>
												<th>no</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
												<th>선택</th>
											</tr>
										</thead>

										<tbody id="target2" >

										</tbody>




										<table class="table" style="width: 100%; height: 100%">
											<thead>
												<tr>
													<th>대리점</th>
													<th>상품코드</th>
													<th>사이즈</th>
													<th>수량</th>
												</tr>
											</thead>
											<tbody>

												<form action="sh_productstockreq" method="post"
													id="productstockedit">
													<input type="hidden" name="shop_num"
														value="${sessionScope.shop_num}" id="pnum3">
													<tr class="active">
														<td><input type="text" class="form-control"
															name='shop' id="shop" value="${sessionScope.shop_name}"
															readonly="readonly"></td>
														<td><input type="text" class="form-control"
															name='pcode' id="pcode" value="" readonly="readonly"></td>
														<td><input type="text" class="form-control"
															name='psize' id="psize" value="" readonly="readonly"></td>
														<td><input type="number" class="form-control"
															name='pro_amount' id="pamount" value="0"></td>
													</tr>
												</form>


											</tbody>
										</table>

									</table>
									<button class="btn btn-default" type="button"
										onclick="javascript:pstoeditaction()">신청</button>


								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</section>
</section>