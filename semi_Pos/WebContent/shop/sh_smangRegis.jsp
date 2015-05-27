<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 매장의 판매관리 - 판매등록페이지입니다. --%>
<%-- 고객검색 세션 시작 --%>
<script src="../js/http.js"></script>
<script src="../js/json2.js"></script>
<script src="../js/suggestMem_pk.js"></script>
<script>
	function usingmileage(){
		
	}

	function ckcustomer(name, tel, mileage){
		$('#name').val(name);
		$('#phone').val(tel);
		$('#mileage').val(mileage);
		
	};

	$(function(){
		$("#ck").click(function(){
			$.ajax({ //ajax로 보냄
				type:"POST", //헤더에 넣어서보냄 (URL로 안보임)
				url:"sh_smang_callback.jsp",
				data:{name:$("#ckname").val()},
				success:function(data){
						$('#target').html(data);
					}
			});
			return false;//서브밋후에 페이지가 안바뀌도록 false리턴
		});
	});
	
	$(function(){
		$("#p_numbtn").click(function(){
			$.ajax({
				type:"POST",
				url:"sh_smang_callback2.jsp",
				data:{pname:$("#p_num").val()},
				success:function(data){
					$('#target2').html(data);
				}
			});
			return false;
		});
	})
</script>
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
									id="ckname" placeholder="고객성함"
									name="name" onkeydown="startSuggest()" autocomplete="off">
							</div>
							<button type="button" id="ck" class="btn btn-primary">검색</button>
						</form>
					
					<table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th><i class="icon_profile"></i> 고객 번호 </th>
                                 <th><i class="icon_calendar"></i> 고객 성명 </th>
                                 <th><i class="icon_pin_alt"></i> 주소</th>
                                 <th><i class="icon_mobile"></i> 전화번호</th>
                                 <th><i class="icon_cogs"></i> 선택</th>
                              </tr>
                              <tr id="target"></tr>
                            <%--   <c:forEach var="stList" items="${list}">
                              <tr>
                                 <td>${stList.mem_num}</td>										
								 <td>${stList.mem_name}</td>
							     <td>${stList.mem_addr}</td>
								 <td>${stList.mem_tel}</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-success" href="javascript:ckcustomer('${stList.mem_name }', '${stList.mem_tel}', '${stList.mem_mileage}')"
                                      ><i class="icon_check_alt2""></i></a>
                                     
                                  </div>
                                  </td>
                              </tr>
                              </c:forEach> -->
                              
                              --%> 
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
						
							<div class="form-group">
								<input type="text" class="form-control"
									id="p_num" placeholder="상품번호" name="pro_code">
							</div>
							<button type="button" id="p_numbtn" class="btn btn-primary">검색</button>
						<div class="table-responsive">

							<table class="table">
								<thead>
									<tr>
										<th>no</th>
										<th>상품번호</th>
										<th>사이즈</th>
										<th>수량</th>
										<th>재고</th>
										<th>판매가</th>
										<th>할인가</th>
									</tr>
								</thead>
								<tbody>
								<tr id="target2"></tr>
								<%-- 반복 
									 <c:forEach var="ptlist" items="${plist}">
									 	<tr>
									 		<td>${ptlist.pro_code}</td>
									 		<td>${ptlist.sto_size }</td>
									 		<td>${ptlist.sto_amount }</td>
									 		<td>${ptlist.pro_price }</td>
									 		<td>할인가</td>
									 	</tr>
									 </c:forEach>
									 반복 --%>
								</tbody>
							</table>
						</div>
						
						
						
						
							<div class="form-group">
								<input type="text" class="form-control"
									id="usemileage" placeholder="마일리지" name="mem_mileage">
							</div>
							<button type="button" class="btn btn-primary" onclick="javascript:usingmileage">마일리지 사용</button>'
							<button type="submit" class="btn btn-primary">완료</button>
						
						<div class="col-sm-6">
                          <table class="table" style="width:800px;">
                            <thead>
                              <tr>
                                <th>#</th>
                                <th>이름</th>
                                <th>전화번호</th>
                                <th>마일리지</th>
                              </tr>
                            </thead>
                            <tbody>
                           
                             <tr class="active">
                                <td>1</td>
                                <td><input type="text" class="form-control" name='name' id="name" value="" readonly="readonly"></td>
                                <td><input type="text" class="form-control" name='id' id="phone" value="" readonly="readonly"></td>
                                <td><input type="text" class="form-control" name='mileage' id="mileage" value="" readonly="readonly"></td>                            
                              </tr>     
                                               
                              
                            </tbody>
                          </table>
                  </div>
						
<!-- 						</form> -->
						
						<div class="table-responsive">

							<table class="table">
								<thead>
									<tr>
										<th>no</th>
										<th>상품번호</th>
										<th>사이즈</th>
										<th>수량</th>
										<th>재고</th>
										<th>판매가</th>
										<th>할인가</th>
									</tr>
								</thead>
								<tbody>
								<%-- 반복 --%>
									 <c:forEach var="ptlist" items="${plist}">
									 	<tr>
									 		<td>${ptlist.pro_code}</td>
									 		<td>${ptlist.sto_size }</td>
									 		<td>${ptlist.sto_amount }</td>
									 		<td>${ptlist.pro_price }</td>
									 		<td>할인가</td>
									 	</tr>
									 </c:forEach>
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
