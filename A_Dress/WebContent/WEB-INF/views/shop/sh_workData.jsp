<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 매장의업무관리- 출결 페이지입니다. -->
<script>
	function worklogin(num, name) {
		alert("직원번호 "+num+"번 " + name+"님이 출근하셨습니다.");
		$.ajax({
			url : "sh_ajax_sh_workData",
			type : "post",
			data : {
				staff_num : num,
				staff_name : name
			},
			success : function(data) {

				str = data.trim();
				if (str == 0) {
					alert("출근 처리 되었습니다.");
				} else if (str == -1) {
					alert("중복 출근 error입니다. ")
				} else {
					alert("이미" + str + "에 출근처리 했습니다");
				}
			}

		});
	}
	function worklogout(num) {
		alert("직원번호 "+num+"번 " + name+"님이 퇴근하셨습니다.");
					$.ajax({
						url : "sh_ajax_sh_workDataend",
						type : "post",
						data : {
							staff_num : num,
							staff_name : name
						},
						success : function(data) {

							str = data.trim();
							if(str==0){
								alert("출근 처리를 먼저하세요")
							}else if(str==-1){
							 	alert("중복 출근 error입니다. ")
							}else{
								alert("퇴근 처리 되었습니다.");
							}
						}

					});

	}
</script>
<section id="main-content">
	<section class="wrapper">
		<div class="col-lg-12">
			<h3 class="page-header">
				<i class="fa fa-files-o"></i> 출결
			</h3>

			<div class="row" style="font-size: 12px; width: 100%; height: 100%;">
				<div class="col-lg-21" style="margin-left: 20px">


					<div class="row">
						<div class="col-lg-21" style="margin-left: 2px">
							>
							<section class="panel">
								<!--                           <header class="panel-heading"> -->
								<!--                           </header> -->
								<div class="panel-body"
									style="margin-left: 20px; margin-top: 10px;">


									<div id="view" class="form-control" style="display: none"></div>
									<table class="table table-condensed">
										<thead>
											<tr>
												<th>#</th>
												<th>이름</th>
												<th>전화번호</th>
												<th>출결관리</th>
											</tr>
										</thead>

										<tbody>
											<c:forEach var="sList" items="${list}">
												<tr>
													<td>${sList.staff_num}</td>
													<td>${sList.staff_name}</td>
													<td>${sList.staff_tel }</td>
													<td>
														<button type="button" id="btn"
															onclick="javascript:worklogin('${sList.staff_num}','${sList.staff_name}')"
															class="btn btn-primary">출근</button>
														<button type="button" id="btn"
															onclick="javascript:worklogout('${sList.staff_num}')"
															class="btn btn-primary">퇴근</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>

									</table>

									

								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</section>





