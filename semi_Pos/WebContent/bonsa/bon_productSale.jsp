<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>

<section id="main-content">
	<section class="wrapper">

		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 입고
				</h3>


				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<div class="panel-body">
								<div class="form-group">
									<label style="width: 100px;" for="cname"
										class="control-label col-lg-2">상품명</label>
									<div class="col-lg-4">
										<input class="form-control" id="pcode" name="pcode"
											minlength="2" onkeydown="startSuggest();" autocomplete="off"
											type="text">
									</div>
									<button class="btn btn-default" type="button">조회</button>
								</div>
								<table class="table table-striped table-advance table-hover">
									<tbody>
										<tr>
											<th>상품명</th>
											<th>상품코드</th>
											<th>등록날짜</th>
											<th>판매가격</th>
										</tr>
										<tr>
											<td>쀼요쀼요</td>
											<td>아이셔</td>
											<td>찰떡아이스</td>
											<td>더위사냥</td>
										</tr>
									</tbody>
								</table>
								<div>
									<div class="form-group">
										<label style="width: 80px;">지점번호</label> <input
											class="form-control" style="width: 170px;"> <label
											style="width: 80px; margin-left: 50px;">지점</label> <input
											class="form-control" style="width: 170px;">
									</div>
									<div class="form-group">
										<label style="width: 80px;">수량</label> <input
											class="form-control" style="width: 170px;">

										<button class="btn btn-default" type="button"
											style="margin-left: 250px;">완료</button>
									</div>
								</div>



								<div class="row" style="font-size: 15px;">
									<h3 class="page-header">재고조정</h3>
									<div class="form-group">
										<div class="col-lg-4">
											<input class="form-control" id="pcode" name="pcode"
												minlength="2" onkeydown="startSuggest();" autocomplete="off"
												type="text" placeholder="지점번호">
										</div>

										<div class="col-lg-4">
											<input class="form-control" id="pcode" name="pcode"
												minlength="2" onkeydown="startSuggest();" autocomplete="off"
												type="text" placeholder="지점번호">
										</div>
										<button class="btn btn-default" type="button" id="pcodebtn"
											onclick="javascript:goDel(str)">조회</button>
									</div>
									<div class="col-lg-12" style="width: 700px;">
										<table class="table table-striped table-advance table-hover">
											<tbody>
												<tr>
													<th>상품명</th>
													<th>지점</th>
													<th>사이즈</th>
													<th>수량</th>
												</tr>
												<tr>
													<td>아이스슈맛있어</td>
													<td>진짠데</td>
													<td>먹고싶당</td>
													<td><input type="number"></td>
												</tr>
											</tbody>
										</table>
										<button class="btn btn-default" type="button"
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