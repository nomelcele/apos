<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="sh_shopjoinmap.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
	function gojoin() {
		alert("호출확인");
		var tel = $('#tel1').val()+"-"+$('#tel2').val()+"-"+$('#tel3').val();
		$('#shop_tel').val(tel);
		$('#feedback_form').submit();
		
	}
	function resetFormElement(e) {
	      e.wrap('<form>').closest('form').get(0).reset(); 
	      //리셋하려는 폼양식 요소를 폼(<form>) 으로 감싸고 (wrap()) , 
	      //요소를 감싸고 있는 가장 가까운 폼( closest('form')) 에서 Dom요소를 반환받고 ( get(0) ),
	      //DOM에서 제공하는 초기화 메서드 reset()을 호출
	      e.unwrap(); //감싼 <form> 태그를 제거
	}
	$(function(){
		$('#changeMapModal').click(function(){
			$('.showc').show();	
			// modal-body class 부분의 input type을 초기화 시키기
			resetFormElement($('.modal-body'));
			$('#map').css('display','none');
		});
		$('#closeMapModal').click(function(){
			// modal-body class 부분의 input type을 초기화 시키기
			resetFormElement($('.modal-body'));
			$('#map').css('display','none');
		});
		
		
		$('#selfimg').change(function(){
			//확장자.기준으로 다음요소를 선택해서 소문자로 변경한 후에 ext에 저장한다.
			// pop가져오는 명령, toLowerCase 소문자로...
			var ext = $(this).val().split('.').pop().toLowerCase();
			//alert(ext)
			
			//배열에 추출한 확장자가 존재하는지 체크
			//alert($.inArray(ext, ['gif','png','jpg','jpeg']));
			if($.inArray(ext, ['gif','png','jpg','jpeg'])==-1){ //있으면 1 없으면 -1
				resetFormElement($(this));//폼 초기화
				window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능합니다.)')
			}else{
				var file = $(this).prop("files")[0]; //넘어오는 값이 files라는 배열의 형태로 불러옴
				//file경로는 file://경로 이경로는 이미지 태그가 표현하지 못함.
				var blobURL = window.URL.createObjectURL(file);
				
				$('#selfimgtarget img').attr('src', blobURL).css('width', '100');
				$('#selfimgtarget').slideDown(); //업로드한 이미지 미리보기
			}
		});
		
		
		
		
		// ID 중복체크
		$('#sid').keyup(function(){
			$('#targetID').load("sh_shopjoincheck?id="+$('#sid').val());
		});
		
		$('#spwdchk').keyup(function(){
			if($('#spwd').val() == $('#spwdchk').val()){
				$('#targetPWD').css("color","green");
				$('#targetPWD').text("비밀번호가 일치합니다");
			}else{
				$('#targetPWD').css("color","red");
				$('#targetPWD').text("비밀번호가 일치하지 않습니다");
			}
		});
	});
	
</script>
</head>
<body>
<!-- 매장의 회원관리 - 회원가입 페이지입니다. -->
<section id="main-content">
 	<section class="wrapper">
 	
 	<div class="row" style="font-size: 15px;">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-files-o"></i> 회원가입</h3>
 	
				<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
<!--                           <header class="panel-heading"> -->
<!--                           </header> -->
                          <div class="panel-body">
                              <div class="form">
                              
                                  <form class="form-validate form-horizontal" enctype="multipart/form-data" id="feedback_form" method="post" action="sh_shopinsert" autocomplete="off">
                                  <input type="hidden" id="shop_tel" name="shop_tel" value="">
                                  	  <div class="form-group ">
                                          <label for="cSelfImg" class="control-label col-lg-2"> Self_IMG <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                          	  <div style="width: 124px; height: 164px; border: 1px solid black;" >
                                          		  <div class="form-contro" style="width: 102px; height: 142px; margin: auto;" id="selfimgtarget"><img src="resources/img/selfimg_basic.PNG"></div>
                                          	  </div>
                                          		  <input class="form-control5" type="file" id="selfimg" name="selfimg" style="display: inline;">
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cName" class="control-label col-lg-2"> Name <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="sname" name="shop_master" minlength="2" type="text" required />
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cId" class="control-label col-lg-2"> ID <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="sid" name="shop_id" minlength="5" type="text" required />
                                              <div id="targetID"></div>
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cPwd" class="control-label col-lg-2">PWD <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%" class="form-control" id="spwd" name="shop_pwd" minlength="6" type="password" required />
                                          </div>
                                      </div>
                                      
									  <div class="form-group ">
                                          <label for="cPwdChk" class="control-label col-lg-2">PWDCHK <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="spwdchk" name="pwdchk" minlength="6" type="password" required />
                                          	  <div id="targetPWD"></div>
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cCrnum" class="control-label col-lg-2">사업자 번호 <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="scrnum" name="shop_crnum" minlength="6" type="text" required />
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cEmail" class="control-label col-lg-2">E-Mail <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%" class="form-control " id="smail" type="email" name="shop_mail" required />
                                          </div>
                                      </div>
                                      
                                      
                                      <div class="form-group ">
                                          <label for="ctel" class="control-label col-lg-2">Tel <span class="required">*</span></label>
                                          <div class="col-lg-10">
	                                          <select style="width: 8%" class="form-control">
	                                          		<option>SKT</option>
	                                          		<option>KT</option>
	                                          		<option>LG</option>
	                                          </select>-
	                                          <input style="width: 7%" class="form-control" id="tel1" name="tel1" maxlength="3" type="tel" required />-
	                                          <input style="width: 7%" class="form-control" id="tel2" name="tel2" maxlength="4" type="tel" required />-
	                                          <input style="width: 7%" class="form-control" id="tel3" name="tel3" maxlength="4" type="tel" required />
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cShopName" class="control-label col-lg-2"> ShopName <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="sshopname" name="shop_name" minlength="3" type="text" placeholder="ex) 죽전점" required />
                                          </div>
                                      </div>
                                      
                                      <div class="form-group">
	                                      <label for="cadr" class="control-label col-lg-2">주소 <span class="required">*</span></label>
	                                      <div class="col-lg-10" >
	                                     	    <input style="display: none" class="form-control2 showc" type="text" id="sample4_postcode1_1" name="adr1_1">
	                                     	    <span style="display: none" class="showc">-</span> 
	                                     	    <input style="display: none" class="form-control2 showc" type="text" id="sample4_postcode2_1" name="adr2_1">
							    				<!-- Button trigger modal -->
							    		  		<button type="button" class="form-control5" id="mapBtn" data-toggle="modal" data-target="#myModal">위치 찾기</button>
							    		  		
							    		  </div>
						    		  </div>
						    		  
						    		  <div class="form-group">		
						    		  	<label for="cadrr" class="control-label col-lg-2 showc" style="display: none">상세주소 <span class="required">*</span></label>
										  <div class="col-lg-10">
							      				<input style="display: none" class="form-control3 showc" type="text" id="sample4_roadAddress_1" placeholder="도로명주소" name="shop_adr">
							      				<input style="display: none" class="form-control3 showc" type="text" id="sample4_jibunAddress_1" placeholder="지번주소" name="adr4_1">
	                                      </div>
                                      </div>
                                      
                                      <div class="form-group "style="display: none">		
						    		  	<label for="cadrr" class="control-label col-lg-2 showc" style="display: none">좌표<span class="required" style="display: none">*</span></label>
										  <div class="col-lg-10">
							      				<input style="display: none" class="form-control3 " type="text" id="lat" placeholder="lat" name="shop_map_x">
							      				<input style="display: none" class="form-control3 " type="text" id="lng" placeholder="lng" name="shop_map_y">
							      				
	                                      </div>
                                      </div>
                                      
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-primary" type="button" onclick="javasript:gojoin()">Save</button>
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
              </body>
</html>