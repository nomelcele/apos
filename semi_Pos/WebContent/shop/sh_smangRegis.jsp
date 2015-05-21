<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>


<%-- 매장의 판매관리 - 판매등록페이지입니다. --%>
<%-- 고객검색 세션 시작 --%>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading"> 고객 검색</header>
					<div class="panel-body">
						<form class="form-inline" role="form">
							<div class="form-group">
								<input type="text" class="form-control"
									id="exampleInputPassword2" placeholder="고객성함">
							</div>
							<button type="submit" class="btn btn-primary">검색</button>
						</form>
					
					<table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th><i class="icon_profile"></i> 고객 성명 </th>
                                 <th><i class="icon_calendar"></i> 고객 번호 </th>
                                 <th><i class="icon_pin_alt"></i> 주소</th>
                                 <th><i class="icon_mobile"></i> 전화번호</th>
                                 <th><i class="icon_cogs"></i> 선택</th>
                              </tr>
                              <tr>
                                 <td>서경연전하님이시당</td>
                                 <td>1이지내가최고니까까르르까르르</td>
                                 <td>지구가 내집이지</td>
                                 <td>안알려준대도</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr>
                                 <td>서경연마마님</td>
                                 <td>2로하겠다</td>
                                 <td>한국이 내집이지</td>
                                 <td>안알려준대도</td>
                                 <td>
                                  <div class="btn-group">
                                     
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              
                           </tbody>
                        </table>
					</div>

				</section>
			</div>
		</div>

<%-- 고객검색 세션 끝 --%>

<%-- 구매정보 세션 시작 --%>


		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading"> 구매정보 </header>
					<div class="panel-body">
						<form class="form-inline" role="form">
							<div class="form-group">
								<input type="text" class="form-control"
									id="exampleInputPassword2" placeholder="상품번호">
							</div>
							<button type="submit" class="btn btn-primary">검색</button>
							<div class="form-group">
								<input type="text" class="form-control"
									id="exampleInputPassword2" placeholder="마일리지">
							</div>
							<button type="submit" class="btn btn-primary">마일리지 사용</button>
						</form>
						<div class="table-responsive">

							<table class="table">
								<thead>
									<tr>
										<th>no</th>
										<th>고객번호</th>
										<th>고객성명</th>
										<th>상품번호</th>
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
										<td>1</td>
										<td>1111</td>
										<td>서경연전하</td>
										<td>비싼거임</td>
										<td>엄청비싼거</td>
										<td>하나밖없지롱</td>
										<td>없어없어</td>
										<td>할인안됨</td>
										<td>짱비짱비</td>
									</tr>
									<tr>
										<td>1</td>
										<td>1111</td>
										<td>서경연전하</td>
										<td>비싼거임</td>
										<td>엄청비싼거</td>
										<td>하나밖없지롱</td>
										<td>없어없어</td>
										<td>할인안됨</td>
										<td>짱비짱비</td>
									</tr>
									<tr>
										<td>1</td>
										<td>1111</td>
										<td>서경연전하</td>
										<td>비싼거임</td>
										<td>엄청비싼거</td>
										<td>하나밖없지롱</td>
										<td>없어없어</td>
										<td>할인안됨</td>
										<td>짱비짱비</td>
									</tr>
									<%-- 반복 --%>
								</tbody>
								<tr>
									<td>합계 :</td>
									<td>얼마</td>
									<td>잔여 마일리지</td>
									<td>얼마</td>
								</tr>
							</table>
						</div>
					</div>

				</section>
			</div>
		</div>

	</section>
