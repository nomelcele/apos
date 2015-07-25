<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	//상품 정보 가져오기
	var pre_img;
	function productcheckaction() {

		$.ajax({
			url : "bon_precommand",
			type : "POST",
			data : {
				pro_code : $('#pro_code').val()
			},
			success : function(data) {
				$("#bpdtarget").html(data);
			}
		});
	}
	// 가져온 상품 정보 입력
	function pro_chk(pro_num, pro_code, pro_name, pro_price, pro_img) {
		$('#pre_pro_num').val(pro_num);
		$('#pre_pro_code').val(pro_code);
		$('#pre_pro_name').val(pro_name);
		$('#pre_pro_img').html(
				"<img src='product/"+pro_img+"' style=\"width: 100px;\">");
		$('#pre_pro_price').val(pro_price);

		pre_img = pro_img;
	}
	//상품 코드에 맞는 고객 찾기 
	function bon_searchmem() {
		$.ajax({
			url : "bon_precommandsearchmem",
			type : "POST",
			data : {
				pro_code : $('#pre_pro_code').val()
			},
			success : function(data) {

				if (data.trim() != "") {
					$("#mpdtarget").html(data);
				} else {
					alert("적합한 대상이 없습니다.")
				}
			}
		});
	}

	//메일 전송
	function pro_chkmail(mail, name) {
		var res;
		res = "상품 이름 :" + $('#pre_pro_name').val() + "</td></tr><tr><td>" + "상품 가격 :"
				+ $('#pre_pro_price').val() + "\n\r";
		if (confirm(name + "님에게 " + $('#pre_pro_name').val() + "을 추천 하시겠습니까 ?") == true) { //확인
			$.ajax({
				url : "bon_precommandsearchmail",
				type : "POST",
				data : {
					mail : mail,
					name : name,
					res : res,
					img : pre_img
				},
				success : function(data) {

				}
			});
			alert("Mail전송이 완료되었습니다.");
		} else { //취소
			return;
		}

	}
</script>
<!-- 본사 상품관리 - 상품세일 -->
<section id="main-content">
	<section class="wrapper">
		<section class="panel">
			<div class="row" style="font-size: 15px;">
				<div class="col-lg-12" style="width: 125%">
					<h3 class="page-header" style="font-family: '210 나무고딕' ">
						<span><img src = "img/work.ico" style="width: 16pt; height: 15pt;"></span>상품 추천
					</h3>

					<header class="panel-heading tab-bg-primary ">
						<div class="form-group " style="margin-left: -3%">
							<form action="sh_productsaerch" method="post"
								id="productcheckform">

								<div style="margin-bottom: -1%">

									<div class="col-lg-3" style="margin-left: -5%">
										<label for="cname" class="control-label col-lg-6"
											style="font-size: 15px; font-family: '210 나무고딕' ">상품 코드 </label> <input
											class="form-control" id="pro_code" name="pro_code"
											style="width: 50%" autocomplete="off" type="text" required 
											onKeypress="javascript:if(event.keyCode==13) {return false;}"/>
										<button class="form-control6" type="button"
											onclick="javascript:productcheckaction()" id="btn1"
											name="btn1"     style="font-family: '210 나무고딕' ">조회</button>
										<div id="view"></div>
									</div>

								</div>
							</form>
						</div>

					</header>

					<div class="panel-body" style="width: 100%">
						<div class="tab-content" style="width: 100%">

							<div id="search" class="tab-pane active">
								<div class="table-responsive" style="width: 100%">
									<table class="table">
										<thead style="font-family: '210 나무고딕' ">
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
												<th>선택</th>
											</tr>
										</thead>
										<tbody id="bpdtarget">
										</tbody>
									</table>

								</div>
							</div>
							<table class="table">
								<thead style="font-family: '210 나무고딕' ">
									<tr>
										<th>상품번호</th>
										<th>상품이름</th>
										<th>상품 코드</th>
										<th>상품 사진</th>
										<th>상품 가격</th>
										<th>추천</th>
									</tr>
								</thead>
								<tbody>

									<tr class="active">
										<td><input type="text" class="form-control"
											name='pre_pro_num' id="pre_pro_num" value=""
											readonly="readonly"></td>
										<td><input type="text" class="form-control"
											name='pre_pro_name' id="pre_pro_name" readonly="readonly"></td>
										<td><input id="pre_pro_code" name="pre_pro_code"
											class="form-control" autocomplete="off" type="text"
											readonly="readonly" /></td>
										<td><div id="pre_pro_img"></div></td>
										<td><input id="pre_pro_price" name="pre_pro_price"
											autocomplete="off" type="text" readonly="readonly"
											class="form-control" /></td>

										<td rowspan="2"><div class="btn-group">
												<a class="btn btn-success" href="javascript:bon_searchmem()"><i
													class="icon_check_alt2"></i></a>
											</div></td>
									</tr>



								</tbody>
							</table>
							<table class="table">
								<thead style="font-family: '210 나무고딕' ">
									<tr>
										<th>고객 번호</th>
										<th>고객 이름</th>
										<th>고객 E-mail</th>
										<th>고객 전화번호</th>
										<th>추천</th>
									</tr>
								</thead>
								<tbody>
								<tbody id="mpdtarget">
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</section>
</section>