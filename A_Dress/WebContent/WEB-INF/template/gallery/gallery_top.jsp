<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <script>

function open_win2()
{
 window.open('upload/code-9.jpg','popup', 'width=320, height=250, left=50, top=20, toolbar=no, location=yes, directories=no, status=no, menubar=no, resizable=yes, scrollbars=no, copyhistory=no');
}


</script>
<script>

function sh_memberDetail_cha(){
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
            <a href="sh_index" class="logo"> <img src="resources/img/lookbook1.JPG">
               <span class="lite"></span></a> 
         </div>
         
                        
                     
                      
                        
											
                     <!-- chat----------------------------------------------------------------------->


   	<form action="ssh_memberDetail_cha" method="get" id="profilechange">
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
              
<!--                         <span class="form-control" id="staff_span" -->
<!--                      style="color: black; display: none;"> -->
<%--                         [${sessionScope.shop_id}] 님 환영합니다 </span>&nbsp; <b class="caret"></b> --%>
<!--                </a> -->


                  <ul class="dropdown-menu extended logout">
                     <div class="log-arrow-up"></div>
                     <li class="eborder-top">
                      <a href="javascript: sh_memberDetail_cha()">
                     <i class="icon_profile"></i> Shop Information</a>
                     </li>
                   
                     <li><a href="j_spring_security_logout">
                     <i class="icon_key_alt"></i> Log Out</a></li>
                     <li></i>
                           </a></li>
                           </ul></a>
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
   

