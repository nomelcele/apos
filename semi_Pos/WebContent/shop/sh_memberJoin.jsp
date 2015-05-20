<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>





<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample4_postcode1").value = data.postcode1;
                document.getElementById("sample4_postcode2").value = data.postcode2;
                document.getElementById("sample4_roadAddress").value = fullRoadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById("guide").innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById("guide").innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById("guide").innerHTML = '';
                }
            }
        }).open();
    }
</script>







<!-- 매장의 회원관리 - 회원가입 페이지입니다. -->
<section id="main-content">
 	<section class="wrapper">
 	
 	<div class="row" style="font-family:'나눔바른고딕 Light'">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-files-o"></i> 회원가입</h3>
 	
<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              	회원가입
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                  <form class="form-validate form-horizontal" id="feedback_form" method="post" action="sh.apos">
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">이름 <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control" id="sname" name="name" minlength="5" type="text" required />
                                          </div>
                                      </div>
                                      
                                      
                                      
                                      <div class="form-group ">
                                          <label for="cdate" class="control-label col-lg-2">생년월일 <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control1 " id="date" type="date" name="date" />
                                          </div>
                                      </div>

                                      <div class="form-group ">
                                          <label for="cemail" class="control-label col-lg-2">E-Mail <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="smail" type="email" name="email" required />
                                          </div>
                                      </div>
                                      
                                      
                                      <div class="form-group ">
                                          <label for="ctel" class="control-label col-lg-2">연락처 <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control" id="tel" name="tel" minlength="5" type="tel" required />
                                          </div>
                                      </div>
                                      
                                      
                                      <div class="form-group">
                                      <label for="cadr" class="control-label col-lg-2">주소 <span class="required">*</span></label>
                                      <div class="col-lg-10">
                                     	    <input class="form-control2 " type="text" id="sample4_postcode1"> - 
                                     	    <input class="form-control2 " type="text" id="sample4_postcode2">
						    				<input class="form-control2 " type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						    		  </div>
						    		  </div>
						    		  
						    		  
						    		  
						    		  <div class="form-group">		
						    		  <label for="cadrr" class="control-label col-lg-2">상세주소 <span class="required">*</span></label>
									  <div class="col-lg-10">
						      				<input class="form-control3 " type="text" id="sample4_roadAddress" placeholder="도로명주소">
						      				<input class="form-control3 " type="text" id="sample4_jibunAddress" placeholder="지번주소">
<!-- 						      				<span id="guide" style="color:#999"></span> -->
                                      </div>
                                      </div>
                                      
                                                                            
                                      
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-primary" type="submit">Save</button>
                                              <button class="btn btn-default" type="button">Cancel</button>
                                          </div>
                                      </div>
                                  </form>
                              </div>
                          </div>
                      </section>
                  </div>
              </div>
              </div>
              </div>
              </section>
              </section>