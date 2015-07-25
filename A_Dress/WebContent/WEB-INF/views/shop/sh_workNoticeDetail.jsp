<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 본사의 업무관리의 공지사항 상세보기 페이지 입니다. --%>
<script>
	function comminaction() {
		document.getElementById("comminform").submit();
		
	}
	function listaction() {
		document.getElementById("listform").submit();
	}
</script>
<script>
	function gourl31(page) {
		document.getElementById("movepage").innerHTML = "<input type='hidden' name='page' value='"+page+"'>";
		document.getElementById("movepage").submit();
	}
</script>
<section id="main-content">
	<section class="wrapper">

		<div class="row">
			<div class="col-lg-12" style="width: 120%;">
				<section class="panel">
					<header class="panel-heading" style="font-family: '210 나무고딕'">
						공지사항 게시글 </header>
					<div class="panel-body">
						<!--                   <form class="form-horizontal " method="post"> -->

						<div class="form-group"
							style="font-family: '210 나무고딕'; font-size: 14px;">
							<label class="col-sm-2 control-label">제목</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" value="${v.title}"
									readonly="readonly">
							</div>
						</div>
						<div class="form-group"
							style="font-family: '210 나무고딕'; font-size: 14px;">
							<label class="col-sm-2 control-label">날짜</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" value="${v.regdate}"
									readonly="readonly">
							</div>
						</div>
						<div class="form-group"
							style="font-family: '210 나무고딕'; font-size: 14px;">
							<label class="col-sm-2 control-label">작성자</label>
							<div class="col-sm-10">
								<input type="text" class="form-control round-input"
									value="${v.writer}" readonly="readonly">
							</div>
						</div>
						<div class="form-group"
							style="font-family: '210 나무고딕'; font-size: 14px;">
							<label class="col-sm-2 control-label">내용</label>
							<div class="col-lg-10" style="margin-left: 16.5%;" class="form-control round-input">
<!-- 								<textarea name="" id="" class="form-control7" cols="30" rows="5" -->
<!-- 									style="min-width: 350px; max-width: 700px; height: 100px; margin-left: 5.7%" -->
<!-- 									readonly="readonly"> -->
									${v.content}
<!-- 									</textarea> -->
							</div>
						</div>
						<form action="sh_workNotice" method="post" id="listform">
							<input type="hidden" name="page" value="1">

						</form>

						<div class="col-sm-10" style="width: 100%;">
							<table class="table">
								<thead style="font-family: '210 나무고딕'">
									<tr>
										<th>작성자</th>
										<th>내용</th>
										<th>날짜</th>
										<th>삭제</th>
									</tr>
								</thead>

								<tbody style="font-family: '210 나무고딕'; width:100%; height: 100%;">
									<c:forEach var="ctlist" items="${clist}">
										<tr>
											<td>${ctlist.comm_writer }</td>
											<td>${ctlist.comm_cont}</td>
											<td>${ctlist.comm_date}</td>
											<td><a
												href="sh_commdelete?no=${ctlist.comm_num}&bo_num=${ctlist.comm_bonum}&writer=${ctlist.comm_writer}&page=1">
													X</a></td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
							<c:set var="pageUrl" value="sh_workNoticedetail?no=${v.no }" />
							<%@include file="page.jsp"%>
						</div>
						
						<form method="post" action="sh_commin" id="comminform">
							<div class="form-group"
								style="font-family: '210 나무고딕'; width: 100%; margin-top: 10%;">

								<div class="col-lg-6" style="width: 100% ;font-family: '210 나무고딕' ; font-size: 13px;"" >
									<label for="inputPassword1" class="col-lg-2 control-label">댓글
									</label> <input type="text" class="form-control" id="inputPassword1"
										placeholder="댓글을 입력하세요." name="comm_cont" style="width: 40%">
									<button type="button" onclick="javascript:comminaction()"
										class="btn btn-danger" style="font-family: '210 나무고딕'">댓글
										작성</button>
								</div>
							</div>

							<div class="col-lg-offset-2 col-lg-10" style="display: block;">
							</div>

							<input type="hidden" name="comm_bonum" value="${v.no}">
						</form>
						<button type="button" class="btn btn-primary "
							onclick="javascript:listaction()"
							style="margin-left:; margin-top: 1%; font-family: '210 나무고딕'">목록</button>
					</div>
				</section>
			</div>
		</div>

	</section>
</section>