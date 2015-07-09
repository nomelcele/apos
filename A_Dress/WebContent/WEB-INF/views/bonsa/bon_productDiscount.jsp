<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- 본사 상품관리 - 상품세일 -->
<section id="main-content">
	<section class="wrapper">
		<section class="panel">

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

										<input type="hidden" id="shop_num" name="shop_num"
											value="${sessionScope.shop_num}"> <label for="cname"
											class="control-label col-lg-6" style="font-size: 13px;">이름
										</label> <input class="form-control" id="pro_name" name="pro_name"
											style="width: 50%" onkeydown="startSuggest();"
											autocomplete="off" type="text" required />
										<button class="form-control6" type="button"
											onclick="javascript:productcheckaction()" id="btn1"
											name="btn1">조회</button>
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
										<thead>
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
											</tr>
										</thead>
										<tbody>
											<%-- 반복 --%>
											<c:forEach var="stList" items="${list}">
												<tr>
													<th>i</th>
													<th>${stList.pro_name}</th>
													<th>${stList.pro_code}</th>
													<th>${stList.sto_size}</th>
													<th>${stList.sto_amount}</th>
													<th>${stList.pro_price}</th>
													<th><img src='upload/${stList.pro_img}'
														style="width: 100px;">
													</td>
													</th>
													<th><img src='upload/${stList.pro_barcode}'
														style="width: 100px;"></th>

												</tr>
											</c:forEach>


											<%-- 반복 --%>
										</tbody>
									</table>

								</div>
							</div>

							<%-- 남자 시작--%>
							<div id="man" class="tab-pane">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
											</tr>
										</thead>
										<tbody id="view_product">

										</tbody>
									</table>

								</div>
							</div>


							<%-- 여자 시작--%>
							<div id="woman" class="tab-pane">

								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
											</tr>
										</thead>
										<tbody id="view_product2">

										</tbody>
									</table>

								</div>
							</div>
							<%-- 여자 끗--%>

							<%-- 키즈 시작--%>
							<div id="kids" class="tab-pane">

								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>no</th>
												<th>상품이름</th>
												<th>상품코드</th>
												<th>사이즈</th>
												<th>재고</th>
												<th>가격</th>
												<th>상품사진</th>
												<th>바코드</th>
											</tr>
										</thead>
										<tbody id="view_product3">

										</tbody>
									</table>

								</div>

							</div>
							<%-- 키즈 끗--%>
						</div>
					</div>
				</div>
			</div>
		</section>
	</section>
</section>