<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
 	
 	function saleaccept(salerate, pro_code){
 		$('#go_pro_code').val(pro_code);
 		$('#go_salerate').val(salerate);
 		$('#godiscount').submit();
 	}
 </script>
<!-- ���� ��ǰ���� - ��ǰ���� -->
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
						<i class="fa fa-files-o"></i> ��ǰ��ȸ
					</h3>

					<header class="panel-heading tab-bg-primary ">
						<div class="form-group " style="margin-left: -3%">
							<form action="sh_productsaerch" method="post"
								id="productcheckform">

								<div style="margin-bottom: -1%">

									<div class="col-lg-3" style="margin-left: -5%">
										 <label for="cname" class="control-label col-lg-6" style="font-size: 13px;">�̸�
										</label> <input class="form-control" id="pro_code" name="pro_code"
											style="width: 50%" autocomplete="off" type="text" required />
										<button class="form-control6" type="button"
											onclick="javascript:productcheckaction()" id="btn1"
											name="btn1">��ȸ</button>
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
												<th>��ǰ�̸�</th>
												<th>��ǰ�ڵ�</th>
												<th>����</th>
												<th>��ǰ����</th>
												<th>���ڵ�</th>
												<th >������</th>
												<th>����</th>
											</tr>
										</thead>
										<tbody id="bpdtarget">
											<%-- �ݺ� --%>
<%-- 											<c:forEach var="stList" items="${list}"> --%>
<!-- 												<tr> -->
<!-- 													<th>i</th> -->
<%-- 													<th>${stList.pro_name}</th> --%>
<%-- 													<th>${stList.pro_code}</th> --%>
<%-- 													<th>${stList.sto_size}</th> --%>
<%-- 													<th>${stList.sto_amount}</th> --%>
<%-- 													<th>${stList.pro_price}</th> --%>
<%-- 													<th><img src='upload/${stList.pro_img}' --%>
<!-- 														style="width: 100px;"> -->
<!-- 													</td> -->
<!-- 													</th> -->
<%-- 													<th><img src='upload/${stList.pro_barcode}' --%>
<!-- 														style="width: 100px;"></th> -->

<!-- 												</tr> -->
<!-- 											</c:forEach> -->


											<%-- �ݺ� --%>
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