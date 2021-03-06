<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<%@include file="logsession.jsp"%>
<%-- 매장의 판매관리 - 교환/환불  페이지입니다. --%>
<script>
var receipNo ;
$(function(){
	$("#sh_exc").click(function(){
		receipNo = $("#receiptno").val();
		//alert("test");
		$.ajax({ //ajax로 보냄
			type:"POST", //헤더에 넣어서보냄 (URL로 안보임)
			url:"sh_ajaxsmangexc.jsp",
			data:{name:$("#receiptno").val()},
			success:function(data){
					$('#receiptView').html(data);
				}
		});
		return false;//서브밋후에 페이지가 안바뀌도록 false리턴
	});
});
</script>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<section class="panel">
				<div class="col-lg-12">

					<h3 class="page-header">
						<i class="fa fa-files-o">상품 환불</i>
					</h3>
				</div>
			</section>
			<section class="panel">
				<div class="col-lg-12">

					<div class="panel-body">
						<form class="form-inline" role="form">
							<div class="form-group">
								<input type="text" class="form-control"
									id="receiptno" placeholder="영수증번호">
							</div>
							<button type="button" class="btn btn-primary" id="sh_exc">검색</button>
						</form>
						<div class="table-responsive" style="font-size: 15px;">
							<table class="table">
								<thead>
									<tr>
										<th>판매번호</th>
										<th>고객성명</th>
										<th>상품번호</th>
										<th>판매가</th>
										<th>수량</th>

									</tr>
								</thead>
								<tbody id="receiptView">
									<%-- 반복 --%>

								</tbody>



							</table>
							<a class="btn btn-warning" data-toggle="modal" href="#myModal2">
								환불 </a>
						</div>
					</div>
				</div>
			</section>

		</div>
		<%-- 환불 교환 --%>

	</section>
</section>