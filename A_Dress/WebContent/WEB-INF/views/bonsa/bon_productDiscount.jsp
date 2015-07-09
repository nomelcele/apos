<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <script>
 	function productcheckaction(){
 		$('#go_pro_name').val($('#pro_name').val());
 		
 		$.ajax({
			url : "bpd_chk",
			type : "POST",
			data : {
				pro_code : $('#pro_code').val()
			},
			success : function(data){
				$("#bpdtarget").html(data);
			}
		});
 	}
 	
 	function saleaccept(pro_code){
 		
 		$('#go_pro_code').val(pro_code);
 		$('#go_salerate').val(salerate);
 		$('#godiscount').submit();
 	}
 </script>
<!-- 본사 상품관리 - 상품세일 -->
<section id="main-content">
	<section class="wrapper">
		<section class="panel">
			<form action="godiscount" id="godiscount" method="post">
				<input type="hidden" id="go_pro_code" name="go_pro_code" value="">
				<input type="hidden" id="go_salerate" name="go_salerate" value="">
			</form>
			<div class="row" style="font-size: 15px;">
				<div class="col-lg-12" style="width: 125%">
					<h3 class="page-header">
						<i class="fa fa-files-o"></i> 상품조회
					</h3>

					<header class="panel-heading tab-bg-primary ">
						<div class="form-group " style="margin-left: -3%">
							<form action="sh_productsaerch" method="post"
								id="productcheckform">

								<div style="margin-bottom: -1%">

									<div class="col-lg-3" style="margin-left: -5%">
										 <label for="cname" class="control-label col-lg-6" style="font-size: 13px;">이름
										</label> <input class="form-control" id="pro_code" name="pro_code"
											style="width: 50%" autocomplete="off" type="text" required />
										<button class="form-control6" type="button"
											onclick="javascript:productcheckaction()" id="btn1"
											name="btn1">조회</button>
										<div id="view"></div>
									</div>

								</div>
							</form>
						</div>
						
					</header>

					<div class="panel-body" style="width: 80%">
						<div class="tab-content" style="width: 100%">

							<div id="search" class="tab-pane active">
								<div class="table-responsive" style="width: 100%">
									<table class="table">
										<thead>
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
												<th >할인율</th>
												<th>적용</th>
											</tr>
										</thead>
										<tbody id="bpdtarget">
										</tbody>
									</table>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</section>
	</section>
</section>