<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 본사의 업무관리의 공지사항 상세보기 페이지 입니다. --%>
<script>
	function goUrlshcin(){
		document.getElementById("commin").submit();
	}
	function delteaction(){
		document.getElementById("deleteform").submit();
	}
	function listaction(){
		document.getElementById("listform").submit();
	}
</script>
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
                        <textarea name="" id="" class="form-control7" cols="30" rows="5" style="min-width: 350px; max-width: 700px; height:100px; float: left;" readonly="readonly">${v.content}</textarea>
                        
                          <%-- 이미지 크기 --%>
                          <c:set var="chkpath" value="..\upload\null" />
                          <c:if test="${v.path ne chkpath }"> <img src="${v.path}" style="width: 350px; resize: none "></c:if>
                        
                         </div>
                    <form action="bon.apos" method="post" id="deleteform">
                    <input type="hidden" name="cmd" value="bwork">
                    <input type="hidden" name="subcmd" value="delete">
                    <input type="hidden" name="no" value="${v.no }">
                    <input type="hidden" name="writer" value="${v.writer }">
                    <input type="hidden" name="page" value="1">
                    <button type="button" class="btn btn-danger" onclick="javascript:delteaction()" style="margin-left: 21%; margin-top: 1%">글 삭제</button>
                    </form>
                    <form action="bon.apos" method="post" id="listform">
                    <input type="hidden" name="cmd" value="bwork">
                    <input type="hidden" name="subcmd" value="notice">
                    <input type="hidden" name="page" value="1">
                    <button type="button" class="btn btn-danger" onclick="javascript:listaction()" style="margin-left: 21%; margin-top: 1%">목록</button>
                    </form>
                    
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
                                 <td><a href="bon.apos?cmd=bwork&subcmd=commdelete&no=${ctlist.no}&bo_num=${ctlist.bo_num}&writer=${ctlist.writer}&page=1">
						X</a></td>
                              </tr>
                              </c:forEach>
                           </tbody>
                           
                        </table>
<%--                         <c:set var="pageUrl" value="bonsa.apos?cmd=bwork&subcmd=boardDetail&no=${v.no}"/> --%>
<%--                         <c:set var="chkcomm" value=""/> --%>
<%--                         <input type="text" value="${ctlist.writer}"> --%>
<%--                         <c:if test="${ctlist.writer ne chkcomm}"><%@include file="page.jsp" %></c:if> --%>
						
                     </div>
<!--                      </form> -->
                     <form method="post" action="bon.apos" id="commin">
                     <div class="form-group">
                        <label for="inputPassword1" class="col-lg-2 control-label">댓글</label>
                        <div class="col-lg-6">
                           <input type="text" class="form-control" id="inputPassword1"
                              placeholder="댓글을 입력하세요." name="comm">
                        </div>
                     </div>
                     <div class="form-group">
                           <button type="button" class="btn btn-danger" onclick="javascript:goUrlshcin()">댓글 작성</button>
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