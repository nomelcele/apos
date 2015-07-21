<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 매장 정산관리의 급여 페이지 입니다. -->
<script src="resources/js/http.js"></script>
<script src="resources/js/json2.js"></script>
<script>
   var shop_num = "${sessionScope.shop_num}";
   $(function() {

      $('#btn_out')
            .click(
                  function() {
                	
                     if ($('#date_ps').val() != ""
                           && $('#date_ps2').val() != "") {
                    	
                        if ($('#date_ps').val() <= $('#date_ps2').val()) {
                        	 if($('#staff_num').val() != ""){
                        	alert("직원번호 "+ $('#staff_num').val()+"을 선택하셨습니다.");
                           $
                                 .ajax({
                                    url : "sh_ajax_workPay?staff_num="
                                          + $('#staff_num').val()
                                          + "&date_ps="
                                          + $('#date_ps').val()
                                          + "&date_ps2="
                                          + $('#date_ps2').val(),
                                    type : "post",
                                    dataType : "html",
                                    success : function(data) {
                                       //alert(data);
                                       str = data.trim();
                                       document
                                             .getElementById("view_workpay").innerHTML = str;
                                    }

                                 });
                        	 }else{
                        		 alert("직원번호를 입력하지 않았습니다.");
                        	 }
                          
                        } else {
                           alert("날짜선택을 잘못하셧습니다.시작날짜가 마지막 날짜보다 큽니다.");
                        }
                     } else

                     {
                        alert("날짜를 선택 안하셨습니다.날짜를 선택하세요")
                     }

                  })
   })

  
  
  
</script>

<section id="main-content">
	<section class="wrapper">


		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12" style="width: 125%;">
				<h3 class="page-header" style="font-family: '210 나무고딕' ">
					<span><img src = "img/sales.ico" style="width: 20pt; height: 15pt;"></span> 급여 관리
				</h3>
				</br>
				<form action="*.apos" id="otsearch" method="post"
					onsubmit="return false;">
					<div class="form-group">




						<div style="margin-left: 10px;">
							<label for="cname" class="control-label col-lg-2"><p
									align="left">기간</p> </label> <input id="date_ps" name="date_ps"
								minlength="2" autocomplete="off" type="date" required />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <input id="date_ps2"
								name="date_ps2" minlength="2" autocomplete="off" type="date"
								required />


						</div>
						<label for="cname" class="control-label col-lg-2"
							style="font-size: 13px;">직원 번호 </label> <input
							class="form-control" id="staff_num" name="staff_num"
							style="width: 20%" onkeydown="startSuggest();" autocomplete="off"
							type="text" required />
						<button class="form-control6" type="button" id="btn_out"
							name="btn_out">조회</button>

					</div>
					</br> </br>

				</form>


				<table class="table table-striped table-advance table-hover">

					<thead>

						<tr>
							<th><i class="icon_profile"></i>이름</th>
							<th><i class="icon_profile"></i>출근 시간</th>
							<th><i class="icon_profile"></i>퇴근 시간</th>
							<th><i class="icon_mail_alt"></i>근무 시간</th>
							<th><i class="icon_pin_alt"></i>급여</th>
						</tr>

					</thead>

					<tbody id="view_workpay">

					</tbody>
				</table>

			</div>

		</div>
	</section>
</section>