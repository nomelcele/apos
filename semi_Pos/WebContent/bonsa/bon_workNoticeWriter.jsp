<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
<%-- 본사의 업무관리의 공지사항 글쓰기 페이지 입니다. --%>
<section id="main-content">
	<section class="wrapper">
		<div class="col-lg-12">
			<section class="panel">
				<header class="panel-heading"> 공지사항 글쓰기 </header>
				<div class="panel-body">
					<div class="form">
						<form action="#" class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-sm-2">CKEditor</label>
								<div class="col-sm-10">
									<textarea class="form-control ckeditor" name="editor1" rows="6"></textarea>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
	</section>
</section>