<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 매장 회원 관리의 멤버상세 페이지입니다. -->
<script>
	function gosecedeUrl(str) {
		if (str == "gosecede") {
			document.getElementById("secede").submit();
			System.out.println("gourl");
		} else if (str = "finish_mem") {
			document.getElementById("finishbtn").submit();
			System.out.println("gourl");
		}
	}
	$(function() {
		$('#memchange2').click(function() {
			$('#mem_tel').attr("readonly", false);
			$('#mem_addr').attr("readonly", false);
			$('#mem_deaddr').attr("readonly", false);
			$('#mem_mileage').attr("readonly", false);
		});
	});
</script>

<section class="wrapper">
	<section id="main-content">

		<form method="post" action="sh_memberDetail_del" id="secede">
		<input type="hidden" name="num" value="${v.mem_num}">
		</form>



		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o">회원정보</i>
				</h3>
			</div>

			<div class="panel-body" style="margin-top: 30px;">
				<div class="form">
					<div class="col-lg-6">
						<form method="post" action="sh_memdetail_change" id="finishbtn">
							 <br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">이름</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="mem_name"
										name="mem_name" minlength="2" type="text" value="${v.mem_name}"
										readonly="readonly" />
								</div>
							</div>
							<br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">회원번호</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="mem_num"
										name="mem_num" minlength="2" type="text" value="${v.mem_num }"
										readonly="readonly" />
								</div>
							</div>
							<br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">전화번호</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="mem_tel"
										name="mem_tel" minlength="2" type="text" value="${v.mem_tel }"
										readonly="readonly" />

								</div>

							</div>
							<br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">주소</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="mem_addr"
										name="mem_addr" minlength="2" type="text" value="${v.mem_addr }"
										readonly="readonly" />
								</div>
							</div>
							<br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">상세주소</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="mem_deaddr"
										name="mem_deaddr" minlength="2" type="text"
										value="${v.mem_deaddr}" readonly="readonly" />
								</div>
							</div>
							<br />

							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">마일리지</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="mem_mileage"
										name="mem_mileage" minlength="2" type="text"
										value="${v.mem_mileage }" readonly="readonly" />
								</div>
								<br /> <br />
							</div>
						</form>

						<div class="form-group"
							style="margin-left: 200px; margin-top: 30px;">
							<div class="col-lg-offset-2 col-lg-12">
								<button class="btn btn-default" type="button" id="memchange2">
								수정</button>
								<button class="btn btn-default" type="button" id="gosecede">
									<a href="javascript:gosecedeUrl('gosecede')">탈퇴</a>
								</button>
								<button class="btn btn-primary" type="button" id="finish">
									<a href="javascript:gosecedeUrl('finish_mem')">완료</a>
								</button>
							</div>
						</div>
					</div>

				</div>
			</div>
	</section>
</section>

