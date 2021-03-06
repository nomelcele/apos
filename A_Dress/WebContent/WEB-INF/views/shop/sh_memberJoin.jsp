<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style>
	.error{
		color: red;
	}
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//자바 스크립트 정규표현식
	var regType1 = /^[0-9]*$/;

	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById("sample4_postcode1").value = data.postcode1;
						document.getElementById("sample4_postcode2").value = data.postcode2;
						document.getElementById("sample4_roadAddress").value = fullRoadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById("guide").innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById("guide").innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
						} else {
							document.getElementById("guide").innerHTML = '';
						}
					}
				}).open();
	}

	function joinaction() {
		//alert("가입처리하시겠습니까?");
		$("#mem_post").val($("#sample4_postcode1").val() + "-"	+ $("#sample4_postcode2").val());
		if($('#mem_date').val()!=""){
			if (($('#tel1').val().length < 1)	|| ($('#tel2').val().length < 1)	|| ($('#tel3').val().length < 1)) {
				alert("전화번호를 입력하세요.");
			} else if ((!regType1.test(document
					.getElementById('tel1').value))||(!regType1.test(document
							.getElementById('tel2').value))||(!regType1.test(document
									.getElementById('tel3').value))) {
				alert('전화번호에는 숫자만 입력해주세요');
			}else  if(($('#tel1').val().length < 3)	|| ($('#tel2').val().length < 3)	|| ($('#tel3').val().length < 4)) {
				alert("전화번호를 확인해주세요.");
			} else {
				$('#mem_tel').val($('#tel1').val()+"-"+ $('#tel2').val()+"-"+$('#tel3').val());
				document.getElementById("member_form").submit();
			}
		}else{
			alert("생년월일을 선택해주세요");
		}
	}
	function joinCancel(){
		//alert("취소하시겠습니까?");
		document.getElementById("cancel").submit();
	}
</script>







<!-- 매장의 회원관리 - 회원가입 페이지입니다. -->
<section id="main-content">
	<section class="wrapper">
		<form class="form-validate form-horizontal" id="cancel" method="post" action="sh_memberjoinCancel">
		</form>
		<div class="row" style="font-size: 15px; width: 125%; height: 100%">
			<div class="col-lg-12">
				<h3 class="page-header" style="font-family: '210 나무고딕'; color: #000000 ">
					<span><img src = "img/member.ico" style="width: 14pt; height: 14pt; color: #000000"></span>회원가입
				</h3>

				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<!--                           <header class="panel-heading"> -->
							<!--                           </header> -->
							<div class="panel-body">
								<div class="form">
									
									<!-- Valid : Name, E-mail -->
									<form:form commandName="member_form" cssClass="form-validate form-horizontal" id="member_form" method="post" action="sh_memberjoinjoin">
										<div class="form-group " style="font-family: '210 나무고딕' ">
											<label for="cname" class="control-label col-lg-2">이름<span
												class="required">*</span></label>
											<div class="col-lg-3">
													<form:input path="mem_name"  cssClass="form-control" style="width: 63%" id="mem_name" autocomplete="off"/>
													<form:errors path="mem_name" cssClass="error"/>
											</div>
										</div>


										<div class="form-group " style="font-family: '210 나무고딕' ">
											<label for="cdate" class="control-label col-lg-2">생년월일
												<span class="required">*</span>
											</label>
											<div class="col-lg-2">
												<input class="form-control1" id="mem_date" type="date"  style="width: 150px;" name="mem_date" required />
											</div>
										</div>

										<div class="form-group " style="font-family: '210 나무고딕' ">
											<label for="cemail" class="control-label col-lg-2">E-Mail
												<span class="required">*</span>
											</label>
											<div class="col-lg-4">
													<form:input path="mem_email" cssClass="form-control " id="smail" style="width: 53%"  autocomplete="off"/>
													<form:errors path="mem_email" cssClass="error"/>
											</div>
										</div>


										<div class="form-group " style="font-family: '210 나무고딕' ">
											<label for="ctel" class="control-label col-lg-2">연락처
												<span class="required">*</span>
											</label>
											<div class="">
												<input class="form-control"
													style="width: 17%; margin-left: 30px;" id="tel1"
													minlength="3" maxlength="3" type="tel" autocomplete="off" required />- <input
													class="form-control" style="width: 17%" id="tel2"
													type="tel" required minlength="3" maxlength="4" autocomplete="off" />- <input
													class="form-control" style="width: 17%" id="tel3"
													type="tel" required minlength="4" maxlength="4" autocomplete="off"/>
													<input type="hidden" name="mem_tel" id="mem_tel">
											</div>
										</div>


										<div class="form-group" style="font-family: '210 나무고딕' ">
											<label for="cadr" class="control-label col-lg-2">주소 <span
												class="required">*</span></label>
											<div class="col-lg-10">
												<input class="form-control2 " type="text"
													id="sample4_postcode1" style="width: 30%" readonly="readonly"> - <input
													class="form-control2 " type="text" id="sample4_postcode2"
													style="width: 30%" readonly="readonly"> <input class="form-control5 "
													type="button" onclick="sample4_execDaumPostcode()"
													value="우편번호 찾기 "><br> <input type="hidden"
													id="mem_post" name="mem_post">
											</div>
										</div>



										<div class="form-group" style="font-family: '210 나무고딕' ">
											<label for="cadrr" class="control-label col-lg-2">상세주소
												<span class="required">*</span>
											</label>
											<div class="col-lg-10">
												<input class="form-control3 " type="text" style="width: 80%"
													id="sample4_roadAddress" placeholder="도로명주소"
													name="mem_addr" autocomplete="off"> <input class="form-control3 "
													style="width: 80%" type="text" id="sample4_jibunAddress"
													placeholder="지번주소" name="mem_deaddr" autocomplete="off"> <span
													id="guide" style="color: #999"></span>
											</div>
										</div>



										<div class="form-group" style="font-family: '210 나무고딕' ">
											<div class="col-lg-offset-2 col-lg-10">
												<button class="btn btn-primary" type="button"
													onclick="javascript:joinaction()">Save</button>
												<button class="btn btn-default" type="button"
												onclick="javascript:joinCancel()">Cancel</button>
											</div>
										</div>
										</form:form>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</section>
</section>