<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<!-- 매장의 정산관리 - 판매현황 페이지입니다. -->
<section id="main-content">
   <section class="wrapper">
      <section class="panel">
         <header class="panel-heading tab-bg-primary ">
            <ul class="nav nav-tabs">
               <li class="active"><a data-toggle="tab" href="">every</a>
               </li>
               <li class=""><a data-toggle="tab" href="#man">man</a></li>
               <li class=""><a data-toggle="tab" href="#woman">woman</a>
               </li>
               <li class=""><a data-toggle="tab" href="#kids">kids</a>
               </li>
            </ul>
         </header>
         <div class="panel-body">   
            <div class="tab-content">
               <div id="home" class="tab-pane active">
               전체야
               </div>
               <%-- 남자 시작--%>
               <div id="man" class="tab-pane">
               <div class="btn-group">
                     <a class="btn btn-default" href="#man"
                        title="Bootstrap 1 themes generator">남자종류</a> <a
                        class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        href="" title="Bootstrap 3 themes generator"><span
                        class="caret"></span></a>
                     <ul class="dropdown-menu">
                        <li><a href="#man" title="Bootstrap 3 themes generator">자켓</a></li>
                        <li class="divider"></li>
                        <li><a href="#man" title="Bootstrap 3 themes generator">티셔츠</a></li>
                        <li class="divider"></li>
                        <li><a href="#man" title="Bootstrap 3 themes generator">셔츠</a></li>
                        <li class="divider"></li>
                        <li><a href="#man" title="Bootstrap 3 themes generator">바지</a></li>
                     </ul>
                  </div>
                  <div class="table-responsive">
                        <table class="table">
                           <thead>
                              <tr>
                                
                                 <th>고객번호</th>
                                 <th>고객성명</th>
                                 <th>상품번호</th>
                                 <th>상품명</th>
                                 <th>사이즈</th>
                                 <th>수량</th>
                                 <th>재고</th>
                                 <th>할인가</th>
                                 <th>판매가</th>
                              </tr>
                           </thead>
                           <tbody>
                              <%-- 반복 --%>
                              <tr>
                                 <td><input type="checkbox" name="chk_info" value="HTML"></td>
                                 <td>1</td>
                                 <td>서경연님</td>
                                 <td>001</td>
                                 <td>자켓</td>
                                 <td>L</td>
                                 <td>하나밖없지롱</td>
                                 <td>없어없어</td>
                                 <td>할인안됨</td>
                                 <td>짱비짱비</td>
                              </tr>

                              <%-- 반복 --%>
                           </tbody>
                        </table>

                     </div>
               </div>
               <%-- 남자 끝--%>
               
               <%-- 여자 시작--%>
               <div id="woman" class="tab-pane">
               <div class="btn-group">
                     <a class="btn btn-default" href="#woman"
                        title="Bootstrap 3 themes generator">여자종류</a> <a
                        class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        href="" title="Bootstrap 3 themes generator"><span
                        class="caret"></span></a>
                     <ul class="dropdown-menu">
                        <li><a href="#woman" title="Bootstrap 3 themes generator">자켓</a></li>
                        <li class="divider"></li>
                        <li><a href="#woman" title="Bootstrap 3 themes generator">티셔츠</a></li>
                        <li class="divider"></li>
                        <li><a href="#woman" title="Bootstrap 3 themes generator">셔츠</a></li>
                        <li class="divider"></li>
                        <li><a href="#woman" title="Bootstrap 3 themes generator">바지</a></li>
                     </ul>
                  </div>
                  
                  <div class="table-responsive">
                        <table class="table">
                           <thead>
                              <tr>
                             
                                 <th>고객번호</th>
                                 <th>고객성명</th>
                                 <th>상품번호</th>
                                 <th>상품명</th>
                                 <th>사이즈</th>
                                 <th>수량</th>
                                 <th>재고</th>
                                 <th>할인가</th>
                                 <th>판매가</th>
                              </tr>
                           </thead>
                           <tbody>
                              <%-- 반복 --%>
                              <tr>
                                 
                                 <td>서경연님</td>
                                 <td>001</td>
                                 <td>자켓</td>
                                 <td>L</td>
                                 <td>하나밖없지롱</td>
                                 <td>없어없어</td>
                                 <td>할인안됨</td>
                                 <td>짱비짱비</td>
                              </tr>

                              <%-- 반복 --%>
                           </tbody>
                        </table>

                     </div>
               </div>
               <%-- 여자 끗--%>
               
               <%-- 키즈 시작--%>
               <div id="kids" class="tab-pane">
               <div class="btn-group">
                     <a class="btn btn-default" href="#kids"
                        title="Bootstrap 3 themes generator">키즈종류</a> <a
                        class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        href="" title="Bootstrap 3 themes generator"><span
                        class="caret"></span></a>
                     <ul class="dropdown-menu">
                        <li><a href="#kids" title="Bootstrap 3 themes generator">자켓</a></li>
                        <li class="divider"></li>
                        <li><a href="#kids" title="Bootstrap 3 themes generator">티셔츠</a></li>
                        <li class="divider"></li>
                        <li><a href="#kids" title="Bootstrap 3 themes generator">바지</a></li>
                        <li class="divider"></li>
                        <li><a href="#kids" title="Bootstrap 3 themes generator">세트의류</a></li>
                     </ul>
                  </div>
                  
                  <div class="table-responsive">
                        <table class="table">
                           <thead>
                              <tr>
                                
                                 <th>고객번호</th>
                                 <th>고객성명</th>
                                 <th>상품번호</th>
                                 <th>상품명</th>
                                 <th>사이즈</th>
                                 <th>수량</th>
                                 <th>재고</th>
                                 <th>할인가</th>
                                 <th>판매가</th>
                              </tr>
                           </thead>
                           <tbody>
                              <%-- 반복 --%>
                              <tr>
                                 
                                 <td>서경연님</td>
                                 <td>001</td>
                                 <td>자켓</td>
                                 <td>L</td>
                                 <td>하나밖없지롱</td>
                                 <td>없어없어</td>
                                 <td>할인안됨</td>
                                 <td>짱비짱비</td>
                              </tr>

                              <%-- 반복 --%>
                           </tbody>
                        </table>

                     </div>
                  
               </div>
               <%-- 키즈 끗--%>
            </div>
         </div>
      </section>
   </section>
</section>