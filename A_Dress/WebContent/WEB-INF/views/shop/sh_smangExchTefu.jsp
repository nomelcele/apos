<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- 매장의 판매관리 - 교환/환불  페이지입니다. --%>
<script>
var receipNo ;
$(function(){
	$("#sh_exc").click(function(){
		receipNo = $("#receiptno").val();
		//alert("test");
		$.ajax({ //ajax로 보냄
			type:"POST", //헤더에 넣어서보냄 (URL로 안보임)
			url:"sh_ajaxsmangexc",
			data:{sell_sell:$("#receiptno").val()},
			success:function(data){
					$('#receiptView').html(data);
				}
		});
		return false;//서브밋후에 페이지가 안바뀌도록 false리턴
	});
});

function sh_managEx(num){
	
	var UP;
	UP=confirm("환불 하겠습니까?");
	if(UP){
		alert(num+"번 영수증을 환불했습니다.");
		location= "sh_smangrefund?sell_num="+num;
	} else {
	
	}
}
</script>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<section class="panel">
				<div class="col-lg-12">

					<h3 class="page-header" style="font-family: '210 나무고딕' ">
						<sapn><img src = "img/smang.ico" style="width: 16pt; height: 15pt;"></sapn>상품 환불
					</h3>
				</div>
			</section>
			<section class="panel">
				<div class="col-lg-12" style="width: 125%">

					<div class="panel-body">
						<form class="form-inline" role="form">
							<div class="form-group">
								<input type="text" class="form-control"
									id="receiptno" placeholder="영수증번호"
									onKeypress="javascript:if(event.keyCode==13) {return false;}">
							</div>
							<button type="button" class="btn btn-primary" id="sh_exc">검색</button>
						</form>
						<div class="table-responsive" style="font-size: 15px;">
							<table class="table">
								<thead style="font-family: '210 나무고딕' ">
									<tr>
										<th style="color: black;"><img src = "img/num.ico" style="width: 15px; height: 15px;" >판매번호</th>
										<th style="color: black;"><img src = "img/man.ico" style="width: 15px; height: 15px;" >고객성명</th>
										<th style="color: black;"><img src = "img/product.ico" style="width: 15px; height: 15px;" >상품번호</th>
										<th style="color: black;"><img src = "img/s.ico" style="width: 15px; height: 15px;" >판매가</th>
										<th style="color: black;"><img src = "img/sn.ico" style="width: 20px; height: 18px;" >수량</th>
										<th style="color: black;"><img src = "img/ex.ico" style="width: 20px; height: 18px;" >환불</th>

									</tr>
								</thead>
								<tbody id="receiptView">
									<%-- 반복 --%>

								</tbody>



							</table>
							
						</div>
					</div>
				</div>
			</section>

		</div>
		<%-- 환불 교환 --%>

	</section>
</section>