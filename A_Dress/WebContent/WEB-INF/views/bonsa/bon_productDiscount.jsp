<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- ���� ��ǰ���� - ��ǰ���� -->
<section id="main-content">
	<section class="wrapper">
		<section class="panel">

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

										<input type="hidden" id="shop_num" name="shop_num"
											value="${sessionScope.shop_num}"> <label for="cname"
											class="control-label col-lg-6" style="font-size: 13px;">�̸�
										</label> <input class="form-control" id="pro_name" name="pro_name"
											style="width: 50%" onkeydown="startSuggest();"
											autocomplete="off" type="text" required />
										<button class="form-control6" type="button"
											onclick="javascript:productcheckaction()" id="btn1"
											name="btn1">��ȸ</button>
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
												<th>��ǰ�̸�</th>
												<th>��ǰ�ڵ�</th>
												<th>������</th>
												<th>���</th>
												<th>����</th>
												<th>��ǰ����</th>
												<th>���ڵ�</th>
											</tr>
										</thead>
										<tbody>
											<%-- �ݺ� --%>
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


											<%-- �ݺ� --%>
										</tbody>
									</table>

								</div>
							</div>

							<%-- ���� ����--%>
							<div id="man" class="tab-pane">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>no</th>
												<th>��ǰ�̸�</th>
												<th>��ǰ�ڵ�</th>
												<th>������</th>
												<th>���</th>
												<th>����</th>
												<th>��ǰ����</th>
												<th>���ڵ�</th>
											</tr>
										</thead>
										<tbody id="view_product">

										</tbody>
									</table>

								</div>
							</div>


							<%-- ���� ����--%>
							<div id="woman" class="tab-pane">

								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>no</th>
												<th>��ǰ�̸�</th>
												<th>��ǰ�ڵ�</th>
												<th>������</th>
												<th>���</th>
												<th>����</th>
												<th>��ǰ����</th>
												<th>���ڵ�</th>
											</tr>
										</thead>
										<tbody id="view_product2">

										</tbody>
									</table>

								</div>
							</div>
							<%-- ���� ��--%>

							<%-- Ű�� ����--%>
							<div id="kids" class="tab-pane">

								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>no</th>
												<th>��ǰ�̸�</th>
												<th>��ǰ�ڵ�</th>
												<th>������</th>
												<th>���</th>
												<th>����</th>
												<th>��ǰ����</th>
												<th>���ڵ�</th>
											</tr>
										</thead>
										<tbody id="view_product3">

										</tbody>
									</table>

								</div>

							</div>
							<%-- Ű�� ��--%>
						</div>
					</div>
				</div>
			</div>
		</section>
	</section>
</section>