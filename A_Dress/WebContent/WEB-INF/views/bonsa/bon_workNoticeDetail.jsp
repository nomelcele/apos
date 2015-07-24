<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 본사의 업무관리의 공지사항 상세보기 페이지 입니다. --%>
<style>
.error {
	color: red;
	font-weight: bold;
}
</style>
<script>
	// Page에서 F5(새로고침)을 방지함 
	window.onkeydown = function() {
		var kcode = event.keyCode;
		if (kcode == 116)
			event.returnValue = false;
	}

	function goUrlshcin() {
		document.getElementById("commin").submit();
	}
	function delteaction() {
		document.getElementById("deleteform").submit();
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
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading" style="font-family: '210 나무고딕'">
						공지사항 게시글 </header>
					<div class="panel-body">
						<!--                   <form class="form-horizontal " method="post"> -->

						<div class="form-group" style="font-family: '210 나무고딕'">
							<label class="col-sm-2 control-label"
								style="font-family: '210 나무고딕'">제목</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" value="${v.title}"
									readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								style="font-family: '210 나무고딕'">날짜</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" value="${v.regdate}"
									readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								style="font-family: '210 나무고딕'">작성자</label>
							<div class="col-sm-10">
								<input type="text" class="form-control round-input"
									value="${v.writer}" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								style="font-family: '210 나무고딕'">내용</label>
							<div class="col-lg-10">
								<textarea name="" id="" class="form-control7" cols="30" rows="5"
									style="min-width: 350px; max-width: 700px; height: 100px; margin-left: 5.7%"
									readonly="readonly">${v.content}</textarea>
							</div>
							<div class="col-lg-10">
								<%-- 이미지 크기 --%>
								<c:set var="chkpath" value="upload/null" />
								<c:if test="${v.path ne chkpath }">
									<img src="${v.path}"
										style="width: 60% px; resize: none; margin-left: 18%; margin-top: 3%;">
								</c:if>

							</div>


						</div>

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

								<tbody style="font-family: '210 나무고딕'">
									<c:forEach var="ctlist" items="${clist}">
										<tr>
											<td>${ctlist.comm_writer }</td>
											<td>${ctlist.comm_cont}</td>
											<td>${ctlist.comm_date}</td>
											<td><a
												href="bon_commdelete?no=${ctlist.comm_num}&bo_num=${ctlist.comm_bonum}&writer=${ctlist.comm_writer}&page=1">
													X</a></td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
							<c:set var="pageUrl" value="bon_workNoticedetail?no=${v.no }" />
							<%@include file="page.jsp"%>

						</div>
						<!--                      </form> -->

						<!--                      <form method="post" action="bon_commin" id="commin"> -->
						<form:form method="post" action="bon_commin" id="commin"
							commandName="commin">
							<div class="form-group" style="font-family: '210 나무고딕'">
								<label for="inputPassword1" class="col-lg-2 control-label">댓글</label>
								<div class="col-lg-6" style="width:100%;">
									<!--                            <input type="text" class="form-control" id="inputPassword1" placeholder="댓글을 입력하세요." name="comm_cont" > -->
									<form:input path="comm_cont" cssClass="form-control"
										id="comm_cont" placeholder="댓글을 입력하세요"
										style=" width:40%;" />
									<form:errors path="comm_cont" cssClass="error"></form:errors>

									<button type="button" class="btn btn-danger"
										onclick="javascript:goUrlshcin()" style="width:30%;">댓글
										작성</button>
								</div>
							</div>
							<div class="form-group" style="font-family: '210 나무고딕'"></div>

							<input type="hidden" name="comm_bonum" value="${v.no}">
							<input type="hidden" name="no" value="${v.no }">
							<input type="hidden" name="page" value="1">
						</form:form>
						<%--                   </form> --%>
						<form action="bon_noticedelte" method="post" id="deleteform">
							<input type="hidden" name="no" value="${v.no }"> <input
								type="hidden" name="writer" value="${v.writer }">
							<button type="button" class="btn btn-danger"
								onclick="javascript:delteaction()"
								style="margin-left: 23%; margin-top: 1%; float: left; font-family: '210 나무고딕'">글
								삭제</button>
						</form>
						<form action="bon_workNotice" method="post" id="listform">
							<input type="hidden" name="page" value="1">
							<button type="button" class="btn btn-primary"
								onclick="javascript:listaction()"
								style="margin-left: 1%; margin-top: 1%; font-family: '210 나무고딕'">목록</button>
						</form>
					</div>
				</section>
			</div>
		</div>

	</section>
</section>