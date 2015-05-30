<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<%@include file="logsession.jsp" %>
<%-- 매장의 판매관리 - 교환/환불  페이지입니다. --%>

<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading">구매목록 </header>
					<div class="panel-body">
						<form class="form-inline" role="form">
							<div class="form-group">
								<input type="text" class="form-control"
									id="exampleInputPassword2" placeholder="상품번호">
							</div>
							<input class="form-control8" type="date">
							<button type="submit" class="btn btn-primary">검색</button>
						</form>
						<div class="table-responsive" style="font-size: 15px;">
							<table class="table">
								<thead>
									<tr>
										<th>no</th>
										<th>판매번호</th>
										<th>고객성명</th>
										<th>상품번호</th>
										<th>사이즈</th>
										<th>수량</th>
										<th>마일리지</th>
										<th>판매가</th>
										<th><i class="icon_cogs"></i> 선택</th>
									</tr>
								</thead>
								<tbody>
									<%-- 반복 --%>
									<tr>
										<td></td>
										<td>0101</td>
										<td>서경연님</td>
										<td>비싼거임</td>
										<td>엄청비싼거</td>
										<td>하나밖없지롱</td>
										<td>없어없어</td>
										<td>할인안됨</td>
										
										<td>
										<a class="btn btn-success">
										<i class="icon_check_alt2"></i>
										</a>
										</td>
									</tr>
									<tr>
										<td></td>
										<td>0909</td>
										<td>엘사</td>
										<td>비싼거임</td>
										<td>엄청비싼거</td>
										<td>하나밖없지롱</td>
										<td>없어없어</td>
										<td>할인안됨</td>
										
										<td>
										<a class="btn btn-success">
										<i class="icon_check_alt2"></i>
										</a>
										</td>
										
									</tr>
									<tr>
										<td></td>
										<td>1111</td>
										<td>눈사람</td>
										<td>비싼거임</td>
										<td>엄청비싼거</td>
										<td>하나밖없지롱</td>
										<td>없어없어</td>
										<td>할인안됨</td>
										
										<td>
										<a class="btn btn-success">
										<i class="icon_check_alt2"></i>
										</a>
										</td>
										
									</tr>
									<%-- 반복 --%>
								</tbody>
								
								<div class="col-sm-6">
                          <table class="table" style="width: auto;">
                            <thead>
                              <tr>
                                <th>#</th>
                              	<th>판매번호</th>
                                <th>고객성명</th>
                                <th>상품번호</th>
                                <th>사이즈</th>
                                <th>수량</th>
                                <th>마일리지</th>
                                <th>판매가</th>
                              </tr>
                            </thead>
                            <tbody>
                           
                             <tr class="active">
                                <td>1</td>
                                <td><input type="text" class="form-control" name='name' id="name" value="" readonly="readonly"></td>
                                <td><input type="text" class="form-control" name='id' id="phone" value="" readonly="readonly"></td>
                                <td><input type="text" class="form-control" name='id' id="phone" value="" readonly="readonly"></td>
                                <td><input type="text" class="form-control" name='id' id="phone" value="" readonly="readonly"></td>
                                <td><input type="text" class="form-control" name='id' id="phone" value="" readonly="readonly"></td>
                                <td><input type="text" class="form-control" name='id' id="phone" value="" readonly="readonly"></td>
                                <td><input type="text" class="form-control" name='id' id="phone" value="" readonly="readonly"></td>                           
                              </tr>
                              </tbody>
                              </table>
                              </div>
                              
								
								
								
								
							</table>
							<a class="btn btn-warning" data-toggle="modal" href="#myModal2">
                                 	환불
                              </a>
                              <a class="btn btn-danger" data-toggle="modal" href="#myModal3">
                                 	교환
                              </a>
						</div>
					</div>

				</section>
			</div>
		</div>
		<%-- 환불 교환 --%>

	</section>
</section>