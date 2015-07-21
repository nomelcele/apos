<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 매장의 판매관리 - 판매등록페이지입니다. --%>
<%-- 고객검색 세션 시작 --%>
<script src="resources/js/http.js"></script>
<script src="resources/js/json2.js"></script>
<script src="resources/js/suggestMem_pk.js"></script>
<script>
	var price = 0;
	var i = 0;
	var j = 0;
	var mile = 0;
	var cusnum = 0;
	var chk = true;
	function usingmileage() {
		if (chk) {
			price -= $('#mileage').val();
			mile = mile - $('#mileage').val();
			console.log("이차 : " + mile);
			document.getElementById('total').innerHTML = price;
			document.getElementById('miletotal').innerHTML = mile;
			chk = false;
		}
	}
	function insertproduct(pcode, psize, pamount, pprice, a, psalerate) {
		//i++;
		j++;
		if(psalerate != 0){
			pprice = pprice*((100-psalerate)*0.01)
		}
		var t = $('#p_num' + a).val();
		price = price + (t * pprice);
		var str = "<tr><td>" + j + "</td>" + "<td>" + pcode + "</td>" + "<td>"
				+ psize + "</td>" + "<td>" + t + "</td>" + "<td>"
				+ (t * pprice) + "</td><tr>"
		var str2 = "<input type='hidden' name='fcode"+j+"' value='"+pcode+"'>";
		var str3 = "<input type='hidden' name='fcash" + j + "' value='"
				+ (t * pprice) + "'>";
		var str4 = "<input type='hidden' name='fmany"+j+"' value='"+t+"'>";
		var str9 = "<input type='hidden' name='fsize"+j+"' value='"+psize+"'>";
		console.log(str);
		console.log(str2);
		console.log("셋 : " + j);
		document.getElementById('ftarget').innerHTML += str;
		document.getElementById('total').innerHTML = price;
		////////////////////////////////////////////////
		document.getElementById('final').innerHTML += str2;
		document.getElementById('final').innerHTML += str3;
		document.getElementById('final').innerHTML += str4;
		document.getElementById('final').innerHTML += str9;
	}
	function gogo() {
		var temp1 = parseInt(mile, 10);
		//alert(parseInt(mile, 10));
		var temp = (price * 0.01) + temp1;
		//alert(temp);
		
		var str5 = "<input type='hidden' name='fmileage' value='"
				+ $('#mileage').val() + "'>";
		var str6 = "<input type='hidden' name='fset' value='"+j+"'>";
		var str7 = "<input type='hidden' name='fcusnum' value='"+cusnum+"'>";
		var str8 = "<input type='hidden' name='inmileage' value='"+temp+"'>";

		document.getElementById('final').innerHTML += str5;
		document.getElementById('final').innerHTML += str6;
		document.getElementById('final').innerHTML += str7;
		document.getElementById('final').innerHTML += str8;
		document.getElementById('submitfinal').submit();
	}

	function ckcustomer(name, tel, mileage, num) {
		cusnum = num;
		$('#name').val(name);
		$('#phone').val(tel);
		mile = mileage;
		console.log("일차 : " + mile);
		$('#mileage').attr("MAX", mileage);
	};

	$(function() {
		$("#ck").click(function() {
			$.ajax({ //ajax로 보냄
				type : "POST", //헤더에 넣어서보냄 (URL로 안보임)
				url : "sh_smang_callback",
				data : {
					name : $("#ckname").val()
				},
				success : function(data) {
					$('#custarget').html(data);
				}
			});
			return false;//서브밋후에 페이지가 안바뀌도록 false리턴
		});
	});

	$(function() {
		$("#p_numbtn").click(function() {
			$.ajax({
				type : "POST",
				url : "sh_smang_callback2",
				data : {
					pname : $("#pro_code").val()
				},
				success : function(data) {
					$('#target2').html(data);
				}
			});
			return false;
		});
	});
	
	
	
	//receive
	//push Client설정
	console.log("typeof:" + typeof (EventSource));
	if (typeof (EventSource) != "undefined") { //push를 받을 수 있는 브라우저인지 판단 (타입오브 -> 객체의 타입확인)
		var eventSource2 = new EventSource("android_barcodeRead");
		// EventSource EventListener의 종류
		// onmessage : 서버가 보낸 push 메세지가 수신되면 발생(리스너)
		// onerror : 서버가 보낸 push에서 에러가 발생되었을 때 발생
		// onopen : 서버가 연결이 되었을 때 발생
		var str = "";
		var first = true;
		eventSource2.onmessage = function(e) { //리스너형식으로 돌아가고 있는 콜백함수
			console.log("리스너 실행");

			var spl = event.data.split("@@@");
			if (spl[0]=="${sessionScope.shop_id}" && spl[1] != "no"  ) {
				$("#pro_code").val(spl[1]);
				console.log("리스너 실행");
				initbarcode();
			}
			console.log("no");

		};
	} else {
		alert("test");
	}

	function initbarcode() {

		$.ajax({
			url : "androidbarcode?id=null&barcode=no",
			type : "post",
			dataType : "html",
			success : function(data) {
			}

		});
	};
	
</script>
<section id="main-content">
	<section class="wrapper">

		<!-- 최종보낼 폼----------------------------------------------- -->
		<form action="sh_smangRegising" method="post" id="submitfinal">
			<div id="final">
				
				<!-- 		<input type='hidden' name='fshopnum' value='1'> -->
			</div>
		</form>
		<!-- --------------------------------------------------------- -->

		<div class="row" >
			<div class="col-lg-12" style="width: 125%" >
				<section class="panel">
					<div class="row" style="font-size: 15px; margin-top: -3%">
						<div class="col-lg-12">
							<h3 class="page-header" style="font-family: '210 나무고딕' ">
								<sapn><img src = "img/smang.ico" style="width: 16pt; height: 15pt;"></sapn>고객검색
							</h3>
						</div>
					</div>
					<div class="panel-body">

						<form class="form-inline" role="form">
							<div class="form-group">

								<input type="text" class="form-control" id="ckname" style="width: 100%"
									placeholder="고객성함" name="name" 
									autocomplete="off">
							</div>
							<button type="button" id="ck" class="btn btn-primary" onclick="javasript:ckbtn()">검색</button>
						</form>

						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th><i class="icon_profile"></i> 고객 번호</th>
									<th><i class="icon_calendar"></i> 고객 성명</th>
									<th><i class="icon_pin_alt"></i> 주소</th>
									<th><i class="icon_mobile"></i> 전화번호</th>
									<th><i class="icon_profile"></i> 마일리지</th>
									<th><i class="icon_cogs"></i> 선택</th>
								</tr>
							</thead>
							<tbody id="custarget">
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
			<div class="col-lg-12" style="width: 125%">
				<section class="panel">
					<div class="row" style="font-size: 15px; margin-top: -3%" >
						<div class="col-lg-12">
							<h3 class="page-header" style="font-family: '210 나무고딕' ">
								<sapn><img src = "img/smang.ico" style="width: 20pt; height: 15pt;"></sapn>구매정보
							</h3>
						</div>
					</div>
					<div class="panel-body" style="width: 100%;">

						<div class="form-group">
							<input type="text" class="form-control" id="pro_code" style="float: left; width: 23%; "
								placeholder="상품번호" name="pro_code">
						<button type="button" id="p_numbtn" class="btn btn-primary" style="float: left; margin-left: 0.5%;">검색</button>
						
						</div>
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
										<th>할인율</th>
										<th>상품사진</th>
										<th>바코드</th>
										<th>선택</th>
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




						<div class="form-group" >
							<button type="button" class="btn btn-primary"
								onclick="javascript:usingmileage()">마일리지 사용</button>
							'
							<button type="button" class="btn btn-primary"
								onclick="javascript:gogo()">완료</button>
						</div>
						<div class="col-sm-6" style="width: 100%;">
							<table class="table" >
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
										<td><input type="text" class="form-control" name='name'
											id="name" value="" readonly="readonly"></td>
										<td><input type="text" class="form-control" name='id'
											id="phone" value="" readonly="readonly"></td>
										<td><input type="number" class="form-control"
											name='mileage' id="mileage" value="0"></td>
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