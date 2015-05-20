<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<script src="//cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>
<script type="text/javascript" src="../js/myckeditor.js"></script>
<script>
	$(function(){
		chkUpload();
	})
</script>
  <script>
	function goUrl(){
	
			document.getElementById("nboard").submit();
	}
	</script>
<%-- 본사의 업무관리의 공지사항 글쓰기 페이지 입니다. --%>
<section id="main-content">
	<section class="wrapper">
		<div class="col-lg-12">
                              <section class="panel">
                                  <header class="panel-heading">
                                      CKEditor
                                  </header>
                                  <div class="panel-body">
                                      <div class="form">
                                          <form action="notice.apos" class="form-horizontal" id="nboard">
                                          <input type="hidden" name="cmd" value="notice">
                                          <input type="hidden" name="subcmd" value="insert">                  
                                              <div class="form-group">
                                              	<label class="control-label col-sm-2">제목</label>
                                                  <div class="col-sm-10">
                                                      <input name="title" class="instyle">             
                                                  </div>
                                                  <label class="control-label col-sm-2">내용</label>
                                                  <div class="col-sm-10">
                                                      <textarea class="form-control ckeditor" id="content" name="content" rows="6"></textarea>
                                                  </div>
                                              </div>
                                              <input type="button" value="글작성" class="btn" onclick="javascript:goUrl()">
                                              <input type="button" value="list" class="btn" onclick="">
                                          </form>
                                      </div>
                                  </div>
                              </section>
                          </div>
	</section>
</section>