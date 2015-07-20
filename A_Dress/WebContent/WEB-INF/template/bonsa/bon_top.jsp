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
            <img src ="resources/img/adress-4.JPG"><span class="lite"></span></a>
            
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
               
                    <!-- inbox notificatoin start-->
                    <li id="mail_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important"><img src="resources/img/gggwww.JPG"></span>
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
                  
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        	
                            <span class="profile-ava">
                              <img alt="" src="resources/img/A-4.JPG" style="width:40px; height: 40px; align="center">
                            </span>
                            <span class="form-control" style="color: black; font-family:'1훈바람언덕' "> [${sessionScope.bon_name}] 님 환영합니다  </span>&nbsp;
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                  
                            
                            </li>
                           <li>
                                <a href="j_spring_security_logout"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                           
                       <li></i>
                           </a></li>
                           </ul></a>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
            <%-- Chatting modal --%>
        
         
         
 	  </header>      
 	  </section>
      <!--header end-->
