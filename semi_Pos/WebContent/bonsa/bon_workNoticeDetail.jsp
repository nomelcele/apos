<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<%-- 본사의 업무관리의 공지사항 상세보기 페이지 입니다. --%>
<section id="main-content">
	<section class="wrapper">

		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading"> 공지사항 게시글 </header>
					<div class="panel-body">
						<form class="form-horizontal " method="get">
							<div class="form-group">
								<label class="col-sm-2 control-label">제목</label>
								<div class="col-sm-10">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">날짜</label>
								<div class="col-sm-10">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">작성자</label>
								<div class="col-sm-10">
									<input type="text" class="form-control round-input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">내용</label>
								<div id="editor" class="btn-toolbar" data-role="editor-toolbar"
									data-target="#editor"></div>

							</div>
							<div class="col-sm-10" style="margin-left: 200px;">
								<table class="table">
									<thead>
										<tr>
											<th>작성자</th>
											<th>내용</th>
											<th>삭제</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>윤홍기 과장님</td>
											<td>잘만들었네!! 훌륭하네</td>
											<td><a class="btn btn-danger" href="#"><i
													class="icon_close_alt2"></i></a></td>
										</tr>

									</tbody>
								</table>
							</div>

							<div class="form-group">
								<label for="inputPassword1" class="col-lg-2 control-label">댓글</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="inputPassword1"
										placeholder="좋은 말씀 잘 들었습니다.">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-offset-2 col-lg-10">
									<button type="submit" class="btn btn-danger">댓글 작성</button>
								</div>
							</div>



						</form>
						</form>
					</div>
				</section>
			</div>
		</div>

	</section>
</section>