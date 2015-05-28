<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<script>
	$(function() {
		$('#pnamebtn').click(function() {
			alert($('#pname1').val());
			$.ajax({
                url: "bon_product_ajax.jsp?pname1="+$('#pname1').val(),
                type: "POST",
                dataType: "html",
                success: function(data) {
                	alert(data);
                	var str=data.trim();
                	document.getElementById("view_product").innerHTML = str;
//                  if(data.trim() == "true"){
//                  	alert("success!")
//                  	$('#checkhot').submit();
//                  }else{
//                  	alert("입력된 정보가 잘 못 되었습니다.")
//                  }
                },
                error: function(a, b) {
                    alert("Request: " + JSON.stringify(a));
                }
            });

		});
		$('#shbtn').click(function(){
			alert("shbtn");
		});
		$('#shnumbtn').click(function(){
			alert($('#pcode3').val()+" , "+$('#pnum3').val());
			$.ajax({
                url: "bon_product_ajax2.jsp?pcode3="+$('#pcode3').val()+"&pnum3="+$('#pnum3').val(),
                type: "POST",
                dataType: "html",
                success: function(data) {
                	alert(data);
                	var str=data.trim();
                	document.getElementById("view_product2").innerHTML = str;
                },
                error: function(a, b) {
                    alert("Request: " + JSON.stringify(a));
                }
            });
		});
		$('#ptablebtn').click(function(){
			alert("ptablebtn");
		});
		
	});

</script>
<section id="main-content">
	<section class="wrapper">

		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 입고</h3>


				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<div class="panel-body">
								<div class="form-group">
									<label style="width: 100px;" for="cname"
										class="control-label col-lg-2">상품명</label>
									<div class="col-lg-4">
										<input class="form-control" id="pname1" name="pname1"
											minlength="2" onkeydown="startSuggest();" autocomplete="off"
											type="text">
									</div>
									<button class="btn btn-default" type="button" id="pnamebtn">조회</button>
								</div>
								<table class="table table-striped table-advance table-hover">
									<thead>
										<tr>
											<th>상품명</th>
											<th>상품코드</th>
											<th>등록날짜</th>
											<th>판매가격</th>
										</tr>
										</thead>
										<tbody id ="view_product">
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</tbody>
								</table>
								<div>
									<div class="form-group">
										<label style="width: 80px;">지점번호</label> <input
											class="form-control" style="width: 170px;" id="shnum2" name="shnum2"> 
											<label	style="width: 80px; margin-left: 50px;">지점</label>
											<input class="form-control" style="width: 170px;" id="sh2" name="shnum2">
									</div>
									<div class="form-group">
										<label style="width: 80px;">수량</label> 
										<input class="form-control" style="width: 170px;" id="pnum2" name="pnum2">

										<button class="btn btn-default" type="button" id="shbtn"
											style="margin-left: 250px;">완료</button>
									</div>
								</div>



								<div class="row" style="font-size: 15px;">
									<h3 class="page-header">재고조정</h3>
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
										<button class="btn btn-default" type="button" id="shnumbtn">조회</button>
									</div>
									<div class="col-lg-12" style="width: 700px;">
										<table class="table table-striped table-advance table-hover">
											<thaed>
												<tr>
													<th>상품명</th>
													<th>지점</th>
													<th>사이즈</th>
													<th>수량</th>
												</tr>
												</thaed>
												<tbody id ="view_product2">
												<tr>
													<td id="tpname"></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</tbody>
										</table>
										<button class="btn btn-default" type="button" id="ptablebtn"
											style="margin-left: 500px;">완료</button>
									</div>


								</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</section>
</section>