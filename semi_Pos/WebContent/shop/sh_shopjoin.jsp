<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="../js/jquery.js"></script>
<script src="../js/jquery-ui-1.10.4.min.js"></script>
<script src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="../js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="../js/jquery.scrollTo.min.js"></script>
<script src="../js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="../assets/jquery-knob/js/jquery.knob.js"></script>
<script src="../js/jquery.sparkline.js" type="text/javascript"></script>
<script src="../assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="../js/owl.carousel.js"></script>
<!-- jQuery full calendar -->
<script src="../js/fullcalendar.min.js"></script>
<!-- Full Google Calendar - Calendar -->
<script src="../assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="../js/calendar-custom.js"></script>
<script src="../js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="../js/jquery.customSelect.min.js"></script>
<script src="../assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="../js/scripts.js"></script>
<!-- custom script for this page-->
<script src="../js/sparkline-chart.js"></script>
<script src="../js/easy-pie-chart.js"></script>
<script src="../js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../js/jquery-jvectormap-world-mill-en.js"></script>
<script src="../js/xcharts.min.js"></script>
<script src="../js/jquery.autosize.min.js"></script>
<script src="../js/jquery.placeholder.min.js"></script>
<script src="../js/gdp-data.js"></script>
<script src="../js/morris.min.js"></script>
<script src="../js/sparklines.js"></script>
<script src="../js/charts.js"></script>
<script src="../js/jquery.slimscroll.min.js"></script>
<!-- Bootstrap CSS -->    
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="../css/elegant-icons-style.css" rel="stylesheet" />
<link href="../css/font-awesome.min.css" rel="stylesheet" />    
<!-- full calendar css-->
<link href="../assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
<link href="../assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
<!-- easy pie chart-->
<link href="../assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
<!-- owl carousel -->
<link rel="stylesheet" href="../css/owl.carousel.css" type="text/css">
<link href="../css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<!-- Custom styles -->
<link rel="stylesheet" href="../css/fullcalendar.css">
<link href="../css/widgets.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
<link href="../css/style-responsive.css" rel="stylesheet" />
<link href="../css/xcharts.min.css" rel=" stylesheet">   
<link href="../css/jquery-ui-1.10.4.min.css" rel="stylesheet">
<section id="container" class="">
      
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
</section>   
<script>
	function goUrl(str) {
		if (str == "shopjoin") {
			document.getElementById("join").submit();
		}
	}
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
<body>

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
                                          <label for="cId" class="control-label col-lg-2"> ID <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%" class="form-control" id="sid" name="id" minlength="2" type="text" required />
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="cPwd" class="control-label col-lg-2">PWD <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%" class="form-control" id="sPwd" name="pwd" minlength="2" type="text" required />
                                          </div>
                                      </div>

                                      <div class="form-group ">
                                          <label for="cEmail" class="control-label col-lg-2">E-Mail <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input style="width: 20%" class="form-control " id="smail" type="email" name="email" required />
                                          </div>
                                      </div>
                                      
                                      
                                      <div class="form-group ">
                                          <label for="ctel" class="control-label col-lg-2">연락처 <span class="required">*</span></label>
                                          <div class="col-lg-10">
	                                          <select style="width: 5%" class="form-control">
	                                          		<option>SKT</option>
	                                          		<option>KT</option>
	                                          		<option>LG</option>
	                                          </select>-
	                                          <input style="width: 7%" class="form-control" id="tel1" name="tel1" minlength="5" type="tel" required />-
	                                          <input style="width: 7%" class="form-control" id="tel2" name="tel2" minlength="5" type="tel" required />-
	                                          <input style="width: 7%" class="form-control" id="tel3" name="tel3" minlength="5" type="tel" required />
                                          </div>
                                      </div>
                                      
                                      
                                      <div class="form-group">
                                      <label for="cadr" class="control-label col-lg-2">주소 <span class="required">*</span></label>
                                      <div class="col-lg-10">
                                     	    <input class="form-control2 " type="text" id="sample4_postcode1" name="adr1"> - 
                                     	    <input class="form-control2 " type="text" id="sample4_postcode2" name="adr2">
						    				<input class="form-control5 " type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기 "><br>
						    		  </div>
						    		  </div>
						    		  
						    		  
						    		  
						    		  <div class="form-group">		
						    		  <label for="cadrr" class="control-label col-lg-2">상세주소 <span class="required">*</span></label>
									  <div class="col-lg-10">
						      				<input class="form-control3 " type="text" id="sample4_roadAddress" placeholder="도로명주소" name="adr3">
						      				<input class="form-control3 " type="text" id="sample4_jibunAddress" placeholder="지번주소" name="adr4">
						      				<span id="guide" style="color:#999"></span>
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
</body>
</html>