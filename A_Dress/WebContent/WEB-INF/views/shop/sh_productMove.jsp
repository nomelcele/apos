<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 매장의 상품관리 - 상품이동요청 페이지입니다. -->
<section id="main-content">
	<section class="wrapper">
		<section class="panel">

			<div class="row" style="font-size: 15px;">
				<div class="col-lg-12">
					<h3 class="page-header">
						<span><img src = "img/product.ico" style="width: 18pt; height: 15pt;"></span>상품이동요청
					</h3>
					<form action="sh.apos" method="post"
						style="margin-top: 50px; margin-left: 50px;">
						<label for="cname" class="control-label col-lg-2"
							style="font-size: 17px;">상품코드 </label>
						<div class="col-lg-2">
							<input type="hidden" id="cmd" name="cmd" value="sproduct">
							<input type="hidden" id="subcmd" name="subcmd" value="pmove">
							<input type="hidden" id="childcmd" name="childcmd" value="search">
							<input class="form-control" id="sname_ps" name="name"
								minlength="2" onkeydown="startSuggest();" autocomplete="off"
								type="text" required />

						</div>
						<input class="form-control6" type="submit" id="btn1" name="btn1"
							value="조회">

						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>no</th>
										<th>상품코드</th>
										<th>상품명</th>
										<th>사이즈</th>
										<th>수량</th>
										<th>재고</th>
										<th>할인가</th>
										<th>판매가</th>
									</tr>
								</thead>
								<tbody>
									<%-- 반복 --%>
									<tr>
										<td><input type="checkbox" name="chk_info" value="HTML"></td>
										<th>15110004</th>
										<th>상품명이란무엇인가구매욕구를자극해야하며</th>
										<th>95</th>
										<th>5</th>
										<th>0</th>
										<th>25000</th>
										<th>25000</th>
									</tr>

									<%-- 반복 --%>
								</tbody>
							</table>
							<a class="btn btn-warning" data-toggle="modal" href="#myModal2">
								완료 </a>
						</div>
						<div class="col-sm-12">
							<table class="table">
								<thead>
									<tr>
										<th>확인</th>
										<th>이름</th>
										<th>전화번호</th>
										<th>마일리지</th>
									</tr>
								</thead>
								<tbody>
									<tr class="active">
										<td>1</td>
										<td>서경연님</td>
										<td>안알려줄꺼야</td>
										<td>1000000점</td>
									</tr>

								</tbody>
							</table>
						</div>
						<a class="btn btn-warning" data-toggle="modal" href="#myModal2">
							요청 </a>
					</form>
				</div>
			</div>
		</section>
	</section>
</section>