<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="sh_shopjoinmap.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
	var shopidchk = false;
	var shoppwdchk = false;

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
			if ($('#sid').val().length < 1) {
				$("#targetID").hide();
			}else{
				$.ajax({
					url : "shopjoincheck",
					type : "POST",
					data : {
						id : "sh_"+ $('#sid').val()
					},
					success : function(data) {
						$("#targetID").show();
						// 없으면 true 있으면 false
						if (data.trim() == "true") {
							shopidchk = true;
							$("#targetID").html("<p style=\"color:green;\">사용가능한 아이디입니다</p>");
						} else {
							shopidchk = false;
							$("#targetID").html("<p style=\"color:red;\">이미 존재하는 아이디입니다</p>");
						}
					}
				});
			}
		});
		// 매장 회원 가입 - 비밀번호 확인 
		$('#spwdchk').keyup(function(){
			if($('#spwd').val() == $('#spwdchk').val()){
				$('#targetPWD').css("color","green");
				$('#targetPWD').text("비밀번호가 일치합니다");
				shoppwdchk = true;
			}else{
				$('#targetPWD').css("color","red");
				$('#targetPWD').text("비밀번호가 일치하지 않습니다");
				shoppwdchk = false ;
			}
		});
	});
	// Submit Button -매장 회원가입
	// ID가 사용가능할때 || 비밀번호확인이 맞았을 때 
	function gojoin() {
		$('#shop_tel').val($('#tel1').val()+"-"+$('#tel2').val()+"-"+$('#tel3').val());
		if (shopidchk == true) {
			if (shoppwdchk == true) {
				//010-0000-0000: 3+4+4+2 =13자리
				//010-307-3333:3+3+4+2=12자리
				if($('#shop_tel').val().length <12){
					alert("전화번호를 확인하세요")
				}else{
					$('#feedback_form').submit();
				}
			} else {
				alert("비밀번호가 불일치 합니다");
				return false;
			}
		} else {
			alert("ID 입력값이 잘못 되었습니다.");
			return false;
		}
	}
	
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
                              
<%--                                   <form class="form-validate form-horizontal" enctype="multipart/form-data" id="feedback_form" method="post" action="shopinsert" autocomplete="off"> --%>

									<form:form action="shopinsert" commandName="joinForm" id="feedback_form" autocomplete="off" cssClass="form-validate form-horizontal" enctype="multipart/form-data" method="post">
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
<!--                                               <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="sname" name="shop_master" minlength="2" type="text" required /> -->
											<form:input path="shop_master" size="30" id="sname" cssStyle="width: 20%; float: left; margin-right: 10px;" cssClass="form-control"></form:input>
											<form:errors path="shop_master" cssClass="error"></form:errors>
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cId" class="control-label col-lg-2"> ID <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                          	  <input style="width: 6%; float: left;" class="form-control"  id="sh_" name="sh_"type="text" value="sh_" readonly="readonly" />
<!--                                               <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="sid" name="shop_id" minlength="5" type="text" required /> -->
												<form:input path="shop_id" size="30" id="sid" cssStyle="width: 20%; float: left; margin-right: 10px;" cssClass="form-control"></form:input>
												<form:errors path="shop_id" cssClass="error"></form:errors>
                                              <div id="targetID"></div>
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cPwd" class="control-label col-lg-2">PWD <span class="required">*</span></label>
                                          <div class="col-lg-10">
<!--                                               <input style="width: 20%" class="form-control" id="spwd" name="shop_pwd" minlength="6" type="password" required /> -->
												<form:password path="shop_pwd" size="30" id="spwd" cssStyle="width: 20%" cssClass="form-control" minlength="4"></form:password>
												<form:errors path="shop_pwd" cssClass="error"></form:errors>
                                          </div>
                                      </div>
                                      
									  <div class="form-group ">
                                          <label for="cPwdChk" class="control-label col-lg-2">PWDCHK <span class="required">*</span></label>
                                          <div class="col-lg-10">
<!--                                               <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="spwdchk" name="pwdchk" minlength="6" type="password" required /> -->
													<form:password path="pwdchk" size="30" id="spwdchk" cssStyle="width: 20%; float: left; margin-right: 10px;" cssClass="form-control" minlength="4"/>
													<form:errors path="pwdchk" cssClass="error"></form:errors>
                                          	  <div id="targetPWD"></div>
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cCrnum" class="control-label col-lg-2">사업자 번호 <span class="required">*</span></label>
                                          <div class="col-lg-10">
<!--                                               <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="scrnum" name="shop_crnum" minlength="6" type="text" required /> -->
                                              <form:input path="shop_crnum"  id="scrnum" cssStyle="width: 20%; float: left; margin-right: 10px;" cssClass="form-control" minlength="6" maxlength="10"></form:input>
											  <form:errors path="shop_crnum" cssClass="error"></form:errors>
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cEmail" class="control-label col-lg-2">E-Mail <span class="required">*</span></label>
                                          <div class="col-lg-10">
<!--                                               <input style="width: 20%" class="form-control " id="smail" type="email" name="shop_mail" required /> -->
                                              <form:input path="shop_mail" size="30" id="smail" cssStyle="width: 20%" cssClass="form-control"></form:input>
											<form:errors path="shop_mail" cssClass="error"></form:errors>
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
<!-- 	                                          <input style="width: 7%" class="form-control" id="tel1" name="tel1" maxlength="3" type="tel" required />- -->
<!-- 	                                          <input style="width: 7%" class="form-control" id="tel2" name="tel2" maxlength="4" type="tel" required />- -->
<!-- 	                                          <input style="width: 7%" class="form-control" id="tel3" name="tel3" maxlength="4" type="tel" required /> -->
	                                          <form:input path="tel1" size="30" id="tel1" cssStyle="width: 7%" cssClass="form-control" maxlength="3"></form:input>
											<form:errors path="tel1" cssClass="error"></form:errors>
											<form:input path="tel2" size="30" id="tel2" cssStyle="width: 7%" cssClass="form-control" maxlength="4"></form:input>
											<form:errors path="tel2" cssClass="error"></form:errors>
											<form:input path="tel3" size="30" id="tel3" cssStyle="width: 7%" cssClass="form-control" maxlength="4"></form:input>
											<form:errors path="tel3" cssClass="error"></form:errors>
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cShopName" class="control-label col-lg-2"> ShopName <span class="required">*</span></label>
                                          <div class="col-lg-10">
<!--                                               <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="sshopname" name="shop_name" minlength="3" type="text" placeholder="ex) 죽전점" required /> -->
                                              <form:input path="shop_name" size="30" id="sshopname" cssStyle="width: 20%; float: left; margin-right: 10px;" cssClass="form-control"></form:input>
											<form:errors path="shop_name" cssClass="error"></form:errors>
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
<%--                                   </form> --%>
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
              </body>
</html>