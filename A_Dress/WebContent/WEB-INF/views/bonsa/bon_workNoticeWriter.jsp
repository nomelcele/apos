<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="//cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>
<script type="text/javascript" src="resources/js/myckeditor.js"></script>
<script>
	function ngoUrl(){
			document.getElementById("nboard").submit();
	};
	
</script>
<script>
	$(function(){
		chkUpload();
	});
</script>

<script>
	function gourl2(){
			document.getElementById("notice").submit();
	};
	
</script>

<form method="post" action="bon.apos" id="notice">
<input type="hidden" name="cmd" value="bwork">
<input type="hidden" name="subcmd" value="notice">
</form>

<%-- 본사의 업무관리의 공지사항 글쓰기 페이지 입니다. --%>
<section id="main-content">
	<section class="wrapper">
		<div class="col-lg-12">
                              <section class="panel">
                                  <header class="panel-heading">
                                    
                                  </header>
                                  <div class="panel-body">
                                      <div class="form">
                                          <form action="notice.apos" class="form-horizontal" id="nboard" method="post">
                                          <input type="hidden" name="cmd" value="bwork">
                                          <input type="hidden" name="subcmd" value="insert">      
                                          <input type="hidden" name="page" value="1">           
                                          <input type="hidden" name="url" id="url" value="">      
                                              <div class="form-group">
                                                  <div class="col-sm-10">
                                              	<div style="font-size: 15px;">제목:
                                              	<input type="text" name="title">
                                              	</div>
                                              	<p></p>
                                              	<div style="font-size: 15px;"></div>
                                                  </div>
                                                  <label class="control-label col-sm-2" style="left: auto;"></label>
                                                   
                                                  <div class="col-sm-10">
                                                      <textarea class="form-control ckeditor" id="content" name="content" rows="6"></textarea>
                                                  </div>
                                              </div>

                                              <a class="btn btn-success btn-sm" href="javascript:ngoUrl()" title="Bootstrap 3 themes generator">글작성</a>
                                                <a class="btn btn-success btn-sm" href="javascript:gourl2()" title="Bootstrap 3 themes generator">list</a>
                                         
                                          </form>
                                      </div>
                                  </div>
                              </section>
                          </div>
	</section>
</section>