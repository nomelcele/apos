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
	var price = 0;
	var i = 0;
	var j = 0;
	var mile = 0;
	var chk = true;
	function usingmileage(){
		if(chk){
			price -= $('#mileage').val();
			mile = mile - $('#mileage').val();
			console.log("이차 : "+mile);
			document.getElementById('total').innerHTML=price;
			document.getElementById('miletotal').innerHTML=mile;
			chk = false;
		}	
	}
	function insertproduct(pcode, psize, pamount, pprice){
		i++;
		j++;
		var s = "s"+j;
		var t = $('#p_num').val();
		price = price + (t*pprice);
		var str = "<tr><td>"+i+"</td>"+"<td>"+pcode+"</td>"+"<td>"+psize+"</td>"+"<td>"+t+"</td>"+"<td>"+(t*pprice)+"</td><tr>"
		var str2 = "<input type='hidden' name='"+s+"' value='"+
		console.log(str);
		document.getElementById('ftarget').innerHTML+=str;
		document.getElementById('total').innerHTML=price;
	}

	function ckcustomer(name, tel, mileage){
		$('#name').val(name);
		$('#phone').val(tel);
		mile = mileage;
		console.log("일차 : "+mile);
		$('#mileage').attr("MAX", mileage);
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
				data:{pname:$("#pro_code").val()},
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
	<div>
	<form action="sh.apos" method="post" id="final">
		<input type="hidden" name="cmd" value="smang">
		<input type="hidden" name="subcmd" value="final">
		
	</form>
	</div>
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
                           <thead>
                              <tr>
                                 <th><i class="icon_profile"></i> 고객 번호 </th>
                                 <th><i class="icon_calendar"></i> 고객 성명 </th>
                                 <th><i class="icon_pin_alt"></i> 주소</th>
                                 <th><i class="icon_mobile"></i> 전화번호</th>
                                 <th><i class="icon_profile"></i> 마일리지 </th>
                                 <th><i class="icon_cogs"></i> 선택</th>
                              </tr>
                              </thead>
                              <tbody id="target">
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
									id="pro_code" placeholder="상품번호" name="pro_code">
							</div>
							<button type="button" id="p_numbtn" class="btn btn-primary">검색</button>
						<div class="table-responsive">

							<table class="table">
								<thead>
									<tr>
										<th>no</th>
										<th>대리점</th>
										<th>상품코드</th>
										<th>사이즈</th>
										<th>수량</th>
										<th>재고</th>
										<th>가격</th>
										<th>할인가</th>
									</tr>
								</thead>
								<tbody id="target2">
								
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
							<button type="button" class="btn btn-primary" onclick="javascript:usingmileage()">마일리지 사용</button>'
							<button type="submit" class="btn btn-primary">완료</button>
						</div>
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
                                <td><input type="number" class="form-control" name='mileage' id="mileage" value=""></td>                            
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
										<th>할인가</th>
									</tr>
								</thead>
								<tbody id="ftarget">
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
								<tr>
									<td>합계 :</td>
									<td id="total"></td>
									<td>잔여 마일리지</td>
									<td id="miletotal"></td>
								</tr>
							</table>
						</div>
					</div>

				</section>
			</div>
		</div>

	</section>
