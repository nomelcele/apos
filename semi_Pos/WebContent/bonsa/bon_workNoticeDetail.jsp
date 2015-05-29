<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 본사의 업무관리의 공지사항 상세보기 페이지 입니다. --%>
<section id="main-content">
   <section class="wrapper">

      <div class="row">
         <div class="col-lg-12">
            <section class="panel">
               <header class="panel-heading"> 공지사항 게시글 </header>
               <div class="panel-body">
<!--                   <form class="form-horizontal " method="post"> -->
                  
                     <div class="form-group">
                        <label class="col-sm-2 control-label">제목</label>
                        <div class="col-sm-10">
                           <input type="text" class="form-control" value="${v.title}" readonly="readonly">
                        </div>
                     </div>
                     <div class="form-group">
                        <label class="col-sm-2 control-label">날짜</label>
                        <div class="col-sm-10">
                           <input type="text" class="form-control" value="${v.regdate}" readonly="readonly">
                        </div>
                     </div>
                     <div class="form-group">
                        <label class="col-sm-2 control-label">작성자</label>
                        <div class="col-sm-10">
                           <input type="text" class="form-control round-input" value="${v.writer}" readonly="readonly">
                        </div>
                     </div>
                     <div class="form-group">
                        <label class="col-sm-2 control-label">내용</label>
                        <div class="col-lg-10">
                        <textarea name="" id="" class="form-control" cols="30" rows="5" readonly="readonly">${v.content}</textarea>
                         </div>
                    <form action="bon.apos" method="post">
                    <input type="hidden" name="cmd" value="bwork">
                    <input type="hidden" name="subcmd" value="delete">
                    <input type="hidden" name="no" value="${v.no }">
                    <input type="hidden" name="page" value="1">
                    <button type="submit" class="btn btn-danger" style="margin-left: 21%; margin-top: 1%">글 삭제</button>
                    </form>
                    <!-- 이미지 위치 수정 -->     
					<img src="${v.path}" style="width: 50px;">
                     </div>
                     
                     <div class="col-sm-10" style="margin-left: 200px;">
                        <table class="table">
                           <thead>
                              <tr>
                                 <th>작성자</th>
                                 <th>내용</th>
                                 <th>날짜</th>
                                 <th>삭제</th>
                              </tr>
                           </thead>
                           
                           <tbody>
                           <c:forEach var="ctlist" items="${clist}">
                              <tr>
                                 <td>${ctlist.writer }</td>
                                 <td>${ctlist.comm}</td>
                                 <td>${ctlist.redate}</td>
                              </tr>
                              </c:forEach>
                           </tbody>
                           
                        </table>
                        <c:set var="pageUrl" value="bonsa.apos?cmd=bwork&subcmd=boardDetail&no=${v.no}"/>
						<%@include file="page.jsp" %>
                     </div>
<!--                      </form> -->
                     <form method="post" action="bon.apos">
                     <div class="form-group">
                        <label for="inputPassword1" class="col-lg-2 control-label">댓글</label>
                        <div class="col-lg-6">
                           <input type="text" class="form-control" id="inputPassword1"
                              placeholder="댓글을 입력하세요." name="comm">
                        </div>
                     </div>
                     <div class="form-group">
                           <button type="submit" class="btn btn-danger" >댓글 작성</button>
                        <div class="col-lg-offset-2 col-lg-10" style="display:block;">
                        </div>
                     </div>
				  <input type="hidden" name="cmd" value="bwork">
                  <input type="hidden" name="subcmd" value="boardDetail">
				  <input type="hidden" name="childcmd" value="in">
				  <input type="hidden" name="page" value="1">
				  <input type="hidden" name="code" value="${v.no}">
				  <input type="hidden" name="no" value="${v.no}">
                  </form>
               </div>
            </section>
         </div>
      </div>

   </section>
</section>