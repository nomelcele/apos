<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 마스터 회원정보수정 페이지입니다-->
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
			$('#shop_name').attr("readonly", false);
			$('#shop_master').attr("readonly", false);
			$('#shop_tel').attr("readonly", false);
			$('#shop_mail').attr("readonly", false);
			$('#shop_adr').attr("readonly", false);
		});
	});
</script>

<section class="wrapper">
	<section id="main-content">

		<form method="post" action="sh_memberDetail_cha" id="secede">
		<input type="hidden" name="num" value="${v1.shop_num}">
		</form>



		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"> 매장 정보</i>
				</h3>
			</div>

			<div class="panel-body" style="margin-top: 30px;">
				<div class="form">
					<div class="col-lg-6">
						<form method="post" action="sh_memdetail_change" id="finishbtn">
							 <br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">대리점</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="name"
										name="shop_name" minlength="2" type="text" value="${v1.shop_name}"
										readonly="readonly" />
								</div>
								
								<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">성명</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="shop_master"
										name="shop_master" minlength="2" type="text" value="${v1.shop_master}"
										readonly="readonly" />
								</div>
								
								
								<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">전화번호</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="shop_tel"
										name="shop_tel" minlength="2" type="text" value="${v1.shop_tel}"
										readonly="readonly" />
								</div>
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">E-MAIL</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="shop_mail"
										name="shop_mail" minlength="2" type="text" value="${v1.shop_mail }"
										readonly="readonly" />

								</div>
								
							</div>
							<br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">매장 주소</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="shop_adr"
										name="shop_addr" minlength="2" type="text" value="${v1.shop_adr }"
										readonly="readonly" />
								</div>
							</div>
							<br />
						
								<br /> <br />
							</div>
						</form>
</div>
<br/><br/>
						<div class="form-group"
							style="margin-left: 200px; margin-top: 30px;">
							<div class="col-lg-offset-2 col-lg-12">
								<button class="btn btn-default" type="button" id="memchange2">
								수정</button>								
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

