<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<%@include file="logsession.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 주석은 이런식으로? --%>
<!-- 매장의 회원관리 - 회원조회 페이지입니다. -->
<script src="../js/http.js"></script>
<script src="../js/json2.js"></script>
<script src="../js/suggestMem_pk.js"></script>
<script>
	function membercheckaction() {
		document.getElementById("membercheckform").submit();
	}
</script>
<section id="main-content">
	<section class="wrapper">

		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12" style="width: 100%">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 회원수정
				</h3>

				<div class="row" style="width: 100%">
					<div class="col-lg-12">
						<section class="panel" style="font-size: 8px;">
							<div class="panel-body">
								<div class="form">

									<form class="form-validate form-horizontal"
										id="membercheckform" method="post" action="sh.apos">
										<input type="hidden" name="cmd" value="smember"> <input
											type="hidden" name="subcmd" value="check"> <input
											type="hidden" name="page" value="1">

										<div class="form-group ">
											<label for="cname" class="control-label col-lg-1"><p
													style="font-size: 11pt">이름</p> </label>
											<div class="col-lg-3" style="margin-left: -5%;">
												<input class="form-control" id="sname_ps" name="name"
													minlength="2" onkeydown="startSuggest();"
													autocomplete="off" type="text" required />
												<div id="view"></div>
											</div>
											<input class="form-control6" type="button"
												onclick="javascript:membercheckaction()" id="btn" name="btn"
												value="조회">
										</div>



										<div class="row" style="width: 100%">
											<div class="col-lg-12">
												<section class="panel">
													<table
														class="table table-striped table-advance table-hover">
														<table class="table">
															<thead>
																<tr>
																	<th>고객번호</th>
																	<th>이름</th>
																	<th>Email</th>
																	<th>주소</th>
																	<th>핸드폰번호</th>
																	<th>가입날짜</th>
																</tr>
															</thead>
															<tbody>
															<c:forEach var="stList" items="${list}">
																<!-- 																<form id="" action="sh.apos" method="post"> -->
																<!-- 																	<input type="hidden" id="cmd" name="cmd" -->
																<!-- 																		value="smember"> -->
																<!-- 
																															</form> -->

																
																	<tr>
																		<th>${stList.mem_num}</th>
																		<th><a
																			href="sh.apos?cmd=smember&subcmd=detail&num=${stList.mem_num}&page=1">${stList.mem_name}</a></th>
																		<th>${stList.mem_email}</th>
																		<th>${stList.mem_addr}</th>
																		<th>${stList.mem_tel}</th>
																		<th>${stList.mem_date}</th>

																	</tr>
															</c:forEach>

															</tbody>
														</table>
													</table>



													<!--pagination start(페이지)-->
													<!--                           <div class="panel-body"> -->

													<!-- 													<div class="text-center"> -->
													<!-- 														<ul class="pagination"> -->
													<!-- 															<li><a href="#">«</a></li> -->
													<!-- 															<li><a href="#">1</a></li> -->
													<!-- 															<li><a href="#">2</a></li> -->
													<!-- 															<li><a href="#">3</a></li> -->
													<!-- 															<li><a href="#">4</a></li> -->
													<!-- 															<li><a href="#">5</a></li> -->
													<!-- 															<li><a href="#">»</a></li> -->
													<!-- 														</ul> -->
													<!-- 													</div> -->
											</div>
										</div>
									</form>
								</div>
							</div>
							<!--pagination end-->
						</section>
					</div>
				</div>
			</div>
		</div>
	</section>
</section>