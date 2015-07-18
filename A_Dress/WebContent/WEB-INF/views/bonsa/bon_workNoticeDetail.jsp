<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

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
<script>
	function gourl31(page){
		document.getElementById("movepage").innerHTML="<input type='hidden' name='page' value='"+page+"'>";
		document.getElementById("movepage").submit();
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
                          <c:set var="chkpath" value="upload/null" />
                          <c:if test="${v.path ne chkpath }"> <img src="${v.path}" style="width: 350px; resize: none "></c:if>
                        
                         </div>
                    <form action="bon_noticedelte" method="post" id="deleteform">
                    <input type="hidden" name="no" value="${v.no }">
                    <input type="hidden" name="writer" value="${v.writer }">
                    <button type="button" class="btn btn-danger" onclick="javascript:delteaction()" style="margin-left: 23%; margin-top: 1%; float: left;" >글 삭제</button>
                    </form> 
                    <form action="bon_workNotice" method="post" id="listform">
                    <input type="hidden" name="page" value="1">
                    <button type="button" class="btn btn-danger" onclick="javascript:listaction()" style="margin-left: 1%; margin-top: 1%">목록</button>
                    </form>
                    
                     </div>
                     
                     <div class="col-sm-10" style="margin-left: 50px;">
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
                                 <td>${ctlist.comm_writer }</td>
                                 <td>${ctlist.comm_cont}</td>
                                 <td>${ctlist.comm_date}</td>
                                 <td><a href="bon_commdelete?no=${ctlist.comm_num}&bo_num=${ctlist.comm_bonum}&writer=${ctlist.comm_writer}&page=1">
						X</a></td>
                              </tr>
                              </c:forEach>
                           </tbody>
                           
                        </table>
                        <c:set var="pageUrl" value="bon_workNoticedetail?no=${v.no }"/>
           			  <%@include file="page.jsp" %>
						
                     </div>
<!--                      </form> -->
                     <form method="post" action="bon_commin" id="commin">
                     <div class="form-group">
                        <label for="inputPassword1" class="col-lg-2 control-label">댓글</label>
                        <div class="col-lg-6">
                           <input type="text" class="form-control" id="inputPassword1"
                              placeholder="댓글을 입력하세요." name="comm_cont">
                        </div>
                     </div>
                     <div class="form-group">
                           <button type="button" class="btn btn-danger" onclick="javascript:goUrlshcin()">댓글 작성</button>
                        <div class="col-lg-offset-2 col-lg-10" style="display:block;">
                        </div>
                     </div>
				
				  <input type="hidden" name="comm_bonum" value="${v.no}">
                  </form>
               </div>
            </section>
         </div>
      </div>

   </section>
</section>