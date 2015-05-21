<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>

<!-- 매장의 회원관리 - 회원조회 페이지입니다. -->

<section id="main-content">
 	<section class="wrapper">
 	
 	<div class="row" style="font-size: 15px;">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-files-o"></i> 회원조회</h3>
 	
<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
<!--                           <header class="panel-heading"> -->
<!--                           </header> -->
                          <div class="panel-body">
                              <div class="form">
                              
                                  <form class="form-validate form-horizontal" id="feedback_form" method="post" action="sh.apos">
                                  <input type="hidden" name="cmd" value="smember">
                                  <input type="hidden" name="subcmd" value="insert">
                                  
                                  
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-1">이름 </label>
                                          <div class="col-lg-2">
                                              <input class="form-control" id="sname" name="name" minlength="2" type="text" required />
                                              
                                          </div>
                                          <input class="form-control6" type="button" id="btn" name="btn" value="조회">
                                      </div>
                                      
                                      
                                      
                  <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              	회원정보
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                           	     <th><i class="icon_profile"></i> 고객번호</th>
                                 <th><i class="icon_profile"></i> 이름</th>
                                 <th><i class="icon_mail_alt"></i> Email</th>
                                 <th><i class="icon_pin_alt"></i> 주소</th>
                                 <th><i class="icon_mobile"></i> 핸드폰번호</th>
                                 <th><i class="icon_calendar"></i> 가입날짜</th>
                              </tr>
                              <tr>
                              	 <td>고객번호 입력창</td>
                                 <td>Angeline Mcclain</td>
                                 <td>dale@chief.info</td>
                                 <td>Rosser</td>
                                 <td>176-026-5992</td>
                                 <td>2004-07-06</td>
                                 
                              </tr>
                              <tr>
                              	 <td>고객번호 입력창</td>
                                 <td>Sung Carlson</td>
                                 <td>ione.gisela@high.org</td>
                                 <td>Robert Lee</td>
                                 <td>724-639-4784</td>
                                 <td>2011-01-10</td>
                              </tr>
                              
                              <tr>
                                 <td>고객번호 입력창</td>
                                 <td>test용</td>
                                 <td>내이멜비싸</td>
                                 <td>주소쓰는곳입니다</td>
                                 <td>112</td>
                                 <td>2015-05-21</td>
                              </tr>
                              
                              
                              
                              </tbody>
                              </table>
                              </section>
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