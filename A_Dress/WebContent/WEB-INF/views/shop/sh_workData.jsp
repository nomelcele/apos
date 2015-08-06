<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 매장의업무관리- 출결 페이지입니다. -->
<script>
	//출근 유효성 검사 
	function worklogin(num, name) {
		//alert("직원번호 "+num+"번 " + name+"님이 출근하셨습니다.");
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
					alert("직원번호 "+num+"번 " + name+"님 출근 처리 되었습니다.");
				} else if (str == -1) {
					alert("직원번호 "+num+"번 " + name+"님 중복 출근 error입니다. ")
				} else {
					alert("이미" + str + "에 출근처리 했습니다");
				}
			}

		});
	}
	//퇴근 유효성 검사 
	function worklogout(num) {
		//alert("직원번호 "+num+"번 " + name+"님이 퇴근하셨습니다.");
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
								alert("직원번호 "+num+"번 님 출근 처리를 먼저하세요")
							}else if(str==-1){
							 	alert("직원번호 "+num+"번 님 중복 출근 error입니다. ")
							}else{
								alert("직원번호 "+num+"번 님 퇴근 처리 되었습니다.");
							}
						}

					});

	}
</script>
<section id="main-content">
	<section class="wrapper">
		<div class="col-lg-12">
			<h3 class="page-header"style="font-family: '210 나무고딕'; color: black; ">
				<span><img src = "img/sales.ico" style="width: 17pt; height: 15pt;"></span>출결 관리
			</h3>

			<div class="row" style="font-size: 12px; width: 125%; height: 100%;">
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
										<thead style="font-family: '210 나무고딕' ">
											<tr>
												<th style="color: black;">#</th>
												<th style="color: black;"><img src = "img/man.ico" style="width: 15px; height: 15px;" >이름</th>
												<th style="color: black;"><img src = "img/tel.ico" style="width: 15px; height: 15px;" >전화번호</th>
												<th style="color: black;"><img src = "img/workdate.ico" style="width: 15px; height: 17px;" >출결관리</th>
											</tr>
										</thead>

										<tbody style="font-family: '210 나무고딕' ">
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





