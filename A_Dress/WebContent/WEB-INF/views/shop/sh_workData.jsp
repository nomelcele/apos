<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 매장의업무관리- 급여페이지입니다. -->
<script>
 function telaction(num, name){
	 alert(num+name);
	  $.ajax({
         url : "sh_ajax_outletsale"
              ,
         type : "post",
         data : {staff_num : num,
        	 	 staff_name : name } ,
         success : function(data) {
            //alert(data);
            str = data.trim();
            document
                  .getElementById("view_product").innerHTML = str;
         }

      });

 }
</script>
<section id="main-content">
	<section class="wrapper">
		<div class="col-lg-12">
			<h3 class="page-header">
				<i class="fa fa-files-o"></i> 출결/급여
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
											onclick="javascript:telaction('${sList.staff_num}','${sList.staff_name}')" class="btn btn-primary">확인</button>
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





