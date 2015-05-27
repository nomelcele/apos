<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
           <!-- javascripts -->
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
    <script src="../js/owl.carousel.js" ></script>
    <!-- jQuery full calendar -->
    <script src="../js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
   <script src="../assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="../js/calendar-custom.js"></script>
   <script src="../js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="../js/jquery.customSelect.min.js" ></script>
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
<script>
   function goUrl(str){
      if(str == "join"){
         document.getElementById("join").submit();
      }else if(str == "check"){
         document.getElementById("check").submit();
      } else if(str == "change"){
         document.getElementById("change").submit();
      } else if(str == "out"){
         document.getElementById("out").submit();
      } else if(str == "notice"){
         document.getElementById("notice").submit();
      } else if(str == "itr"){
         document.getElementById("itr").submit();
      } else if(str == "term"){
         document.getElementById("term").submit();
      } else if(str == "tel"){
         document.getElementById("tel").submit();
      } else if(str == "pcheck"){
         document.getElementById("pcheck").submit();
      } else if(str == "move"){
         document.getElementById("move").submit();
      } else if(str == "table"){
         document.getElementById("table").submit();
      } else if(str == "rank"){
         document.getElementById("rank").submit();
      }
      else if(str == "regis"){
         document.getElementById("regis").submit();
      }
      else if(str == "exchRefu"){
         document.getElementById("exchRefu").submit();
      }
   }
</script>

<form method="post" action="sh.apos" id="join">
<input type="hidden" name="cmd" value="smember">
<input type="hidden" name="subcmd" value="join">
</form>

<form method="post" action="sh.apos" id="check">
<input type="hidden" name="cmd" value="smember">
<input type="hidden" name="subcmd" value="check">
<input type="hidden" name="page" value="1">
</form>

<form method="post" action="sh.apos" id="change">
<input type="hidden" name="cmd" value="smember">
<input type="hidden" name="subcmd" value="change">
</form>
 
<form method="post" action="sh.apos" id="out">
<input type="hidden" name="cmd" value="smember">
<input type="hidden" name="subcmd" value="out">
</form>





<form method="post" action="sh.apos" id="notice">
<input type="hidden" name="cmd" value="swork">
<input type="hidden" name="subcmd" value="notice">
</form>


<form method="post" action="sh.apos" id="itr">
<input type="hidden" name="cmd" value="swork">
<input type="hidden" name="subcmd" value="itr">
</form>

<form method="post" action="sh.apos" id="term">
<input type="hidden" name="cmd" value="swork">
<input type="hidden" name="subcmd" value="term">
</form>

<form method="post" action="sh.apos" id="tel">
<input type="hidden" name="cmd" value="swork">
<input type="hidden" name="subcmd" value="tel">
</form>




<form method="post" action="sh.apos" id="pcheck">
<input type="hidden" name="cmd" value="sproduct">
<input type="hidden" name="subcmd" value="pcheck">
</form>

<form method="post" action="sh.apos" id="move">
<input type="hidden" name="cmd" value="sproduct">
<input type="hidden" name="subcmd" value="move">
</form>




<form method="post" action="sh.apos" id="table">
<input type="hidden" name="cmd" value="ssales">
<input type="hidden" name="subcmd" value="table">
</form>

<form method="post" action="sh.apos" id="rank">
<input type="hidden" name="cmd" value="ssales">
<input type="hidden" name="subcmd" value="rank">
</form>

<form method="post" action="sh.apos" id="regis">
<input type="hidden" name="cmd" value="smang">
<input type="hidden" name="subcmd" value="sregi">
</form>

<form method="post" action="sh.apos" id="rank">
<input type="hidden" name="cmd" value="smang">
<input type="hidden" name="subcmd" value="exchRefu">
</form>

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse " style="font-family:'1훈바람언덕'">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
               
                  
                    <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_table"></i>
                          <span>업무관리</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="javascript:goUrl('notice')">공지사항</a></li>
                          <li><a class="" href="javascript:goUrl('itr')">내부 규정</a></li>
                          <li><a class="" href="javascript:goUrl('term')">약관</a></li>
                          <li><a class="" href="javascript:goUrl('tel')">연락처</a></li>
                      </ul>
                  </li>
                  
              <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>회원관리</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="javascript:goUrl('join')">회원가입</a></li>                          
                          <li><a class="" href="javascript:goUrl('check')">회원조회</a></li>
                          <li><a class="" href="javascript:goUrl('change')">회원수정</a></li>
                          <li><a class="" href="javascript:goUrl('out')">회원탈퇴</a></li>
                      </ul>
                  </li>       
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>상품관리</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="javascript:goUrl('pcheck')">상품조회</a></li>
                          <li><a class="" href="javascript:goUrl('move')">상품이동요청</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_documents_alt"></i>
                          <span>판매등록</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">                          
                          <li><a class="" href="javascript:goUrl('regis')">판매등록</a></li>
                          <li><a class="" href="javascript:goUrl('exchRefu')"><span>교환/환불</span></a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_documents_alt"></i>
                          <span>정산관리</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">                          
                          <li><a class="" href="javascript:goUrl('table')">판매현황</a></li>
                          <li><a class="" href="javascript:goUrl('rank')"><span>상품판매순위</span></a></li>
                      </ul>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->

  