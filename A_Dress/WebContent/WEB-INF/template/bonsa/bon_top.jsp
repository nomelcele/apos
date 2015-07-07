<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <!-- container section start -->
  <section id="container" class="">
      
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
            </div>
  <!--logo start-->
            <div style="margin:0 auto">
            <a href="bon_index" class="logo">
            <img src ="resources/img/bg-20.jpg"><span class="lite">ADRESS</span></a>
            
            </div>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                      
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
                            <span class="badge bg-important"><img src="resources/img/bg-86.JPG"></span>
                        </a>
                        <ul class="dropdown-menu extended inbox" style="width: 100%;">
                            <div class="notify-arrow notify-arrow-blue" ></div>
                            	<!-- chat--------------->
								<form method="post" action="chat_add.jsp" name="cform"	id="cform" class="form-inline">
									<div class="form-group" >
									<input type="text" class="form-control" id="chat" name="chat" required="required" placeholder="대화내용" style="float:left;"onKeypress="javascript:if(event.keyCode==13) {return false;}"	>
									</div>
									<input type="button" id="send" value="글작성" class="btn btn-info" style="width: 55px; padding-left: 5px;">
									<div style="height: 30px;"></div>
								</form>
								<div id="target"></div>
								<!-- chat----------------------------------------------------------------------->
<!--                             <li> -->
<!--                                 <p class="blue">You have 5 new messages</p> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="#"> -->
<!--                                     <span class="photo"><img alt="avatar" src="resources/img/avatar-mini.jpg"></span> -->
<!--                                     <span class="subject"> -->
<!--                                     <span class="from">Greg  Martin</span> -->
<!--                                     <span class="time">1 min</span> -->
<!--                                     </span> -->
<!--                                     <span class="message"> -->
<!--                                         I really like this admin panel. -->
<!--                                     </span> -->
<!--                                 </a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="#"> -->
<!--                                     <span class="photo"><img alt="avatar" src="resources/img/avatar-mini2.jpg"></span> -->
<!--                                     <span class="subject"> -->
<!--                                     <span class="from">Bob   Mckenzie</span> -->
<!--                                     <span class="time">5 mins</span> -->
<!--                                     </span> -->
<!--                                     <span class="message"> -->
<!--                                      Hi, What is next project plan? -->
<!--                                     </span> -->
<!--                                 </a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="#"> -->
<!--                                     <span class="photo"><img alt="avatar" src="resources/img/avatar-mini3.jpg"></span> -->
<!--                                     <span class="subject"> -->
<!--                                     <span class="from">Phillip   Park</span> -->
<!--                                     <span class="time">2 hrs</span> -->
<!--                                     </span> -->
<!--                                     <span class="message"> -->
<!--                                         I am like to buy this Admin Template. -->
<!--                                     </span> -->
<!--                                 </a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="#"> -->
<!--                                     <span class="photo"><img alt="avatar" src="resources/img/avatar-mini4.jpg"></span> -->
<!--                                     <span class="subject"> -->
<!--                                     <span class="from">Ray   Munoz</span> -->
<!--                                     <span class="time">1 day</span> -->
<!--                                     </span> -->
<!--                                     <span class="message"> -->
<!--                                         Icon fonts are great. -->
<!--                                     </span> -->
<!--                                 </a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="#">See all messages</a> -->
<!--                             </li> -->
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
                                 <img alt="" src="resources/img/dress1.JPG" align="center">
                            </span>
                            <span class="form-control" style="color: black; font-family:'1훈바람언덕' "> [${sessionScope.bon_name}] 님 환영합니다  </span>&nbsp;
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
                                <a href="bon_sawonlogout"><i class="icon_key_alt"></i> Log Out</a>
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
            <%-- Chatting modal --%>
         
 	  </header>      
      <!--header end-->
