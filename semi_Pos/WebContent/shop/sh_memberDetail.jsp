<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 본사 상품관리의 상품삭제 페이지입니다. -->
<section class="wrapper">
	<section id="main-content" >
		<form class="form-validate form-horizontal" id="feedback_form"
			method="post" action="sh.apos">
			<input type="hidden" name="cmd" value="smember"> <input
				type="hidden" name="subcmd" value="detail">
		


		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o" >회원정보</i>
				</h3>
			</div>
			
			<div class="panel-body">
				<div class="form">
					<div class="col-lg-6">
					
						<br />
						<div class="form-group ">
							<label style="width: 200px;" for="cname"
								class="control-label col-lg-2">이름</label>
							<div class="col-lg-2">
								<input class="form-control" style="width: 260px;" id="name"
									name="name" minlength="2" type="text" value="${v.mem_name}" />
							</div>
						</div>
						<br />
						<div class="form-group ">
							<label style="width: 200px;" for="cname"
								class="control-label col-lg-2">회원번호</label>
							<div class="col-lg-2">
								<input class="form-control" style="width: 260px;" id="name"
									name="name" minlength="2" type="text" value="${v.mem_num }"/>
							</div>
						</div>
						<br />
						<div class="form-group ">
							<label style="width: 200px;" for="cname"
								class="control-label col-lg-2">전화번호</label>
							<div class="col-lg-2">
								<input class="form-control" style="width: 260px;" id="name"
									name="name" minlength="2" type="text" value="${v.mem_tel }" />
							</div>
						</div>
						<br />
						<div class="form-group ">
							<label style="width: 200px;" for="cname"
								class="control-label col-lg-2">주소금액</label>
							<div class="col-lg-2">
								<input class="form-control" style="width: 260px;" id="name"
									name="name" minlength="2" type="text" value="${v.mem_addr }" />
							</div>
						</div>
						<br />
						
						<div class="form-group ">
							<label style="width: 200px;" for="cname"
								class="control-label col-lg-2">마일리지</label>
							<div class="col-lg-2">
								<input class="form-control" style="width: 260px;" id="name"
									name="name" minlength="2" type="text" value="${v.mem_mileage }"/>
							</div>
							<br/><br/>
						</div>
						
						       
                                      <div class="form-group" >
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-primary" type="submit">수정</button>
                                              <button class="btn btn-default" type="button">탈퇴</button>
                                          </div>
					</div>
				</div>

			</div>
		</div>
		</form>
	</section>
</section>

