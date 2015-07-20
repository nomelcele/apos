<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 주석은 이런식으로? --%>
<!-- 매장의 회원관리 - 회원조회 페이지입니다. -->
<script src="resources/js/http.js"></script>
<script src="resources/js/json2.js"></script>
<script src="resources/js/suggestMem_pk.js"></script>
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

				<div class="row" style="width: 125%">
					<div class="col-lg-12">
						<section class="panel" style="font-size: 8px;">
							<div class="panel-body">
								<div class="form">

									<form class="form-validate form-horizontal"
										id="membercheckform" method="post" action="sh_memberChecksr">
										<input type="hidden" name="cmd" value="smember"> <input
											type="hidden" name="subcmd" value="check"> <input
											type="hidden" name="page" value="1">
										<div class="form-group ">
											<label for="cname" class="control-label col-lg-2"
												style="font-size: 11px; float: left">이름 </label>
											<div style="float: left; position: relative;">
												<input class="form-control" id="sname_ps" name="mem_name"
													onkeydown="startSuggest();" autocomplete="off" type="text"
													required style="width: 90%; " /> <span id="view"
													></span>
											</div>
											<button class="btn btn-primary"
												onclick="javascript:membercheckaction()" id="btn" name="btn">조회</button>

										</div>
										<span id="view" style="position: absolute; float: left"></span>




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
																<c:forEach var="stList" items="${stList}">
																	<tr>
																		<th>${stList.mem_num}</th>
																		<th><a
																			href="sh_memberDetail?num=${stList.mem_num}">${stList.mem_name}</a></th>
																		<th>${stList.mem_email}</th>
																		<th>${stList.mem_addr}</th>
																		<th>${stList.mem_tel}</th>
																		<th>${stList.mem_date}</th>

																	</tr>
																</c:forEach>

															</tbody>
														</table>
													</table>
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