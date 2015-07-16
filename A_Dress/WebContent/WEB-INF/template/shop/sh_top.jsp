<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <script>

function open_win2()
{
 window.open('upload/code-9.jpg','popup', 'width=320, height=250, left=50, top=20, toolbar=no, location=yes, directories=no, status=no, menubar=no, resizable=yes, scrollbars=no, copyhistory=no');
}


</script>
<script>

function profilecha(){
document.getElementById("profilechange").submit();
}
</script>






<body>
   <!-- container section start -->
   <section id="container" class="">
      <header class="header dark-bg">
         <div class="toggle-nav">
            <div class="icon-reorder tooltips"
               data-original-title="Toggle Navigation" data-placement="bottom"></div>
         </div>

         <!--logo start-->
         <div style="margin: 0 auto">
            <a href="sh_index" class="logo"> <img src="resources/img/adress-4.JPG">
               <span class="lite"></span></a> 
         </div>
         <!--logo end-->
         <div class="nav search-row" id="top_menu">
         
            <!--  search form start -->
            <ul class="nav top-menu">
               <li style="float:left;">
                  <form class="navbar-form" id ="top_search_form" action="sh_productsaerch" method="post">
                     <input type="hidden" id="childcmd" name="childcmd"
                        value="search_top"> 
                        <input type="hidden"
                        id="top_shop_num" name="shop_num"
                        value="${sessionScope.shop_num}">
                        <input type="hidden" id ="top_name_pk" name ="pro_name" val="">         
                  </form><a href="javascript:open_win2()" style="float:left">&nbsp;&nbsp;&nbsp;<img src="resources/img/pcode79.JPG" ></a><div style="float: left;">
                  <input class="form-control" name="top_search" id="top_search"
                  placeholder="Product Code Search"   onKeypress="javascript:if(event.keyCode==13) { topsearch_pk();}"
                  type="text" ></div>
                  
                  

               </li>
            </ul>
            <!--  search form end -->
         </div>
         <div class="top-nav notification-row">

            <!-- notificatoin dropdown start-->
               
            <ul class="nav pull-right top-menu">
                  
               
               <!-- inbox notificatoin start-->
               <li id="mail_notificatoin_bar" class="dropdown"><a
                  data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
                     class="icon-envelope-l"></i> <span class="badge bg-important"><img
                        src="resources/img/bg-86.JPG"></span>
               </a>

                  <ul class="dropdown-menu extended inbox">
                     <div class="notify-arrow notify-arrow-blue"></div>

                     <!-- chat--------------->
                     <form method="post" action="chat_add.jsp" name="cform" id="cform"
                        class="form-inline">
                        <div class="form-group">
                           <input type="text" class="form-control" id="chat" name="chat"
                              required="required" placeholder="대화내용" style="float: left;" onKeypress="javascript:if(event.keyCode==13) {return false;}">
                        </div>
                        <input type="button" id="send" value="글작성" class="btn btn-info"
                           style="width: 55px; padding-left: 5px;">
                        <div style="height: 30px;"></div></form>
                     <div id="target" style="color: black;"></div>
                        
                     
                      
                        
											
                     <!-- chat----------------------------------------------------------------------->


   	<form action="sh_profilecha" method="post" id="profilechange">
										<input type="hidden" name="profile" value=""></form>
                        





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

                  </ul></li>
               <!-- inbox notificatoin end -->
             
               <!-- user login dropdown start-->
               <li class="dropdown"><a data-toggle="dropdown"
                  class="dropdown-toggle" href="#"> <span class="profile-ava">
                        <img alt="" src="resources/img/dress1.JPG" align="center">
                  </span> <span class="form-control" id="master_span"
                     style="color: black;">
                        [${sessionScope.shop_name}] - [${sessionScope.shop_master}] 님
                        환영합니다 </span>&nbsp; 
<!--                         <span class="form-control" id="staff_span" -->
<!--                      style="color: black; display: none;"> -->
<%--                         [${sessionScope.shop_id}] 님 환영합니다 </span>&nbsp; <b class="caret"></b> --%>
<!--                </a> -->
                  <ul class="dropdown-menu extended logout">
                     <div class="log-arrow-up"></div>
                     <li class="eborder-top"><a href="javascript:profilecha()">
                     <i class="icon_profile"></i> My Profile</a></li>
                     <li><a href="#"><i class="icon_mail_alt"></i> My Inbox</a></li>
                     <li><a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                     </li>
                     <li><a href="#"><i class="icon_chat_alt"></i> Chats</a></li>
                     <li><a href="j_spring_security_logout"><i
                           class="icon_key_alt"></i> Log Out</a></li>
                     <li><a href="documentation.html"><i class="icon_key_alt"></i>
                           Documentation</a></li>
                     <li><a href="documentation.html"><i class="icon_key_alt"></i>
                           Documentation</a></li>
                  </ul></li>
               <!-- user login dropdown end -->
            </ul>
            <!-- notificatoin dropdown end-->
         </div>
      </header>
   </section>
   <!--header end-->
   <script>
   function topsearch_pk(){
      var aa=$('#top_search').val();
      $('#top_name_pk').val(aa);
       document.getElementById("top_search_form").submit();
   }
   </script>
   

