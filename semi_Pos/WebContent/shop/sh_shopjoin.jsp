<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="sh_shopjoinmap.jsp" %>
<html>
<head></head>
<body>
<%-- top_start --%>
<section id="container">
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
            </div>
            <!--logo start-->
            <div style="margin:0 auto">
            <a href="#" class="logo">
            <img src ="../img/bg-20.jpg">
            <span class="lite">ADress</span></a>
            </div>
            <!--logo end-->
            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                 
                <ul class="nav top-menu">                    
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text">
                        </form>
                    </li>                    
                </ul>
                <!--  search form end -->        
            </div>
            <div class="top-nav notification-row">   
            
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    
                    <!-- task notificatoin start -->
                    <li id="task_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="icon-task-l"></i>
                            <span class="badge bg-important">6</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 6 pending letter</p>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Design PSD </div>
                                        <div class="percent">90%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                            <span class="sr-only">90% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">
                                            Project 1
                                        </div>
                                        <div class="percent">30%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                            <span class="sr-only">30% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Digital Marketing</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Logo Designing</div>
                                        <div class="percent">78%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                            <span class="sr-only">78% Complete (danger)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Mobile App</div>
                                        <div class="percent">50%</div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar"  role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                            <span class="sr-only">50% Complete</span>
                                        </div>
                                    </div>

                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- task notificatoin end -->
                    <!-- inbox notificatoin start-->
                    <li id="mail_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="../img/avatar-mini.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Greg  Martin</span>
                                    <span class="time">1 min</span>
                                    </span>
                                    <span class="message">
                                        I really like this admin panel.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="../img/avatar-mini2.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Bob   Mckenzie</span>
                                    <span class="time">5 mins</span>
                                    </span>
                                    <span class="message">
                                     Hi, What is next project plan?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="../img/avatar-mini3.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Phillip   Park</span>
                                    <span class="time">2 hrs</span>
                                    </span>
                                    <span class="message">
                                        I am like to buy this Admin Template.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="../img/avatar-mini4.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Ray   Munoz</span>
                                    <span class="time">1 day</span>
                                    </span>
                                    <span class="message">
                                        Icon fonts are great.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox notificatoin end -->
                    <!-- alert notification start-->
                    <li id="alert_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important">7</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 4 new notifications</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span> 
                                    Friend Request
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-warning"><i class="icon_pin"></i></span>  
                                    John location.
                                    <span class="small italic pull-right">50 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-danger"><i class="icon_book_alt"></i></span> 
                                    Project 3 Completed.
                                    <span class="small italic pull-right">1 hr</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-success"><i class="icon_like"></i></span> 
                                    Mick appreciated your work.
                                    <span class="small italic pull-right"> Today</span>
                                </a>
                            </li>                            
                            <li>
                                <a href="#">See all notifications</a>
                            </li>
                        </ul>
                    </li>
                    <!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="../img/dress1.JPG" align="center">
                            </span>
                            <span class="username">Jenifer Smith</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                                <a href="#"><i class="icon_profile"></i> My Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                            </li>
                            <li>
                                <a href="sh_index.jsp"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
      </header>  
 
<%-- top_end --%>
<%-- left_start --%>
<script>
	function goUrl(str){
		if(str == "shopjoin"){
			document.getElementById("shopjoin").submit();
		}
	}
</script>
<form method="post" action="sh.apos" id="shopjoin">
	<input type="hidden" name="cmd" value="sjoin">
	<input type="hidden" name="subcmd" value="shopjoin">
</form>
<%-- left_menu --%>
<!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse " style="font-family:'나눔바른고딕 Light'">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                      <a class="" href="sh_index.jsp">
                          <i class="icon_house_alt"></i>
                          <span>매장 가입</span>
                      </a>
                  </li>
              <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>매장가입</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="javascript:goUrl('shopjoin')">매장가입</a></li>                          
                      </ul>
                  </li>       
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
<%-- left_end --%>
<script>
	function goUrl(str) {
		if (str == "shopjoin") {
			document.getElementById("join").submit();
		}
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
// 		$('#crnum').css('value','${request.crnum}');
// 		$('#hotkey').css('value','${requst.hotkey}');
		
		// ID 중복체크
		$('#sid').keyup(function(){
			$('#targetID').load("sh_shopjoincheck.jsp?id="+$('#sid').val());
		});
		
		$('#spwdchk').keyup(function(){
			if($('#spwd').val() == $('#spwdchk').val()){
				$('#targetPWD').text("비밀번호가 일치합니다");
			}else{
				$('#targetPWD').text("비밀번호가 일치하지 않습니다");
			}
		});
	});
	
</script>
<form method="post" action="sh.apos" id="join">
	<input type="hidden" name="cmd" value="sjoin"> 
	<input type="hidden" name="subcmd" value="shopjoin">
</form>
<aside>
	<div id="sidebar" class="nav-collapse "
		style="font-family: '나눔바른고딕 Light'">
		<ul class="sidebar-menu">
			<li class="sub-menu"><a href="javascript:;" class=""> <i
					class="icon_document_alt"></i> <span>회원관리</span> <span
					class="menu-arrow arrow_carrot-right"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="javascript:goUrl('shopjoin')">회원가입</a></li>
				</ul></li>
		</ul>
	</div>
</aside>


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
                              
                                  <form class="form-validate form-horizontal" id="feedback_form" method="post" action="sh.apos">
                                  <input type="hidden" name="cmd" value="sjoin">
                                  <input type="hidden" name="subcmd" value="shopinsert">
                                  
                                  	  <div class="form-group ">
                                          <label for="cSelfImg" class="control-label col-lg-2"> Self_IMG <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                          	  <div style="width: 124px; height: 164px; border: 1px solid black;" >
                                          		  <div class="form-contro" style="width: 102px; height: 142px; margin: auto;" id="selfimgtarget"><img src="../img/selfimg_basic.PNG"></div>
                                          	  </div>
                                          		  <input class="form-control5" type="file" id="selfimg" name="selfimg" style="display: inline;">
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cName" class="control-label col-lg-2"> Name <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="sname" name="name" minlength="2" type="text" required />
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cId" class="control-label col-lg-2"> ID <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="sid" name="id" minlength="5" type="text" required />
                                              <div id="targetID"></div>
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cPwd" class="control-label col-lg-2">PWD <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%" class="form-control" id="spwd" name="pwd" minlength="6" type="password" required />
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
                                              <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="scrnum" name="crnum" minlength="6" type="password" required />
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cEmail" class="control-label col-lg-2">E-Mail <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%" class="form-control " id="smail" type="email" name="email" required />
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
                                              <input style="width: 20%; float: left; margin-right: 10px;" class="form-control" id="sshopname" name="shopname" minlength="3" type="text" placeholder="ex) 죽전점" required />
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
							      				<input style="display: none" class="form-control3 showc" type="text" id="sample4_roadAddress_1" placeholder="도로명주소" name="adr3_1">
							      				<input style="display: none" class="form-control3 showc" type="text" id="sample4_jibunAddress_1" placeholder="지번주소" name="adr4_1">
	                                      </div>
                                      </div>
                                      
                                      <div class="form-group "style="display: none">		
						    		  	<label for="cadrr" class="control-label col-lg-2 showc" style="display: none">좌표<span class="required" style="display: none">*</span></label>
										  <div class="col-lg-10">
							      				<input style="display: none" class="form-control3 " type="text" id="lat" placeholder="lat" name="lat">
							      				<input style="display: none" class="form-control3 " type="text" id="lng" placeholder="lng" name="lng">
							      				
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
              </section> 
</body>
</html>