<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 본사 상품관리의 상품삭제 페이지입니다. -->
<script>
	$(function() {
		$('#pcodebtn').click(function() {
			alert("goDel실행됨!! :pcode");

			var productcode = $('#pcode').val();
			alert(productcode);
			$('#bpcode').val(productcode);
			alert($('#bpcode').val());
			document.getElementById("procode").submit();
		$('#pdetbtn').click(function(){
			alert("야호");
		});
		});
	});
	// 		function goDel(str) {
	// 			if (str == "pcode") {
	// 				alert("goDel실행됨!! :pcode");
	// 				alert("!!");
	// 				var productcode = $('#pcode').val();
	// 				alert(pcode);
	// 				$('#bpcode').val(productcode);

	// 				document.getElementById("procode").submit();
	// 			}
	// 		}
</script>
<section class="wrapper">
	<section id="main-content">
		<form method="post" action="sh.apos" id="procode">
			<input type="hidden" name="cmd" id="cmd" value="bproduct"> <input
				type="hidden" name="subcmd" id="subcmd" value="del"> <input
				type="hidden" name="childcmd" id="childcmd" value="pcode"> <input
				type="hidden" id="bpcode" name="bpcode" value="">
		</form>

		<form class="form-validate form-horizontal" id="form" method="post"
			action="sh.apos">
			<input type="hidden" name="cmd" value="bproduct"> <input
				type="hidden" name="subcmd" value="del"> <input
				type="hidden" name="childcmd" value="">

			<div class="row" style="font-size: 15px; margin-top: -3%">
				<div class="col-lg-12">
					<h3 class="page-header">
						<i class="fa fa-files-o">상품삭제</i>
					</h3>
				</div>

				<div class="panel-body">
					<div class="form">
						<div class="col-lg-6" style="margin-top: 3%">

							<div class="form-group" style="margin-bottom: -1%">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">상품코드 </label>
								<div class="col-lg-4">
									<input class="form-control" id="pcode" name="pcode"
										minlength="2" onkeydown="startSuggest();" autocomplete="off"
										type="text">
								</div>
								<button class="btn btn-default" type="button" id="pcodebtn"
									onclick="javascript:goDel(str)">조회</button>
							</div>

							<div class="form-group ">
								<br /> <br /> <label style="width: 200px;" for="cname"
									class="control-label col-lg-2">물품이름</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="name"
										name="name" minlength="2" type="text" value="${v.pro_name}">
								</div>
							</div>
							<br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">물품코드</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="name"
										name="name" minlength="2" type="text" value="${v.pro_code}">
								</div>
							</div>
							<br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">판매금액</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="name"
										name="name" minlength="2" type="text" value="${v.pro_img}">
								</div>
							</div>
							<div class="form-group"
								style="margin-left: 300px; margin-top: 30px;">
								<button class="btn btn-default" type="submit" id="pdetbtn"
								onclick="javascript:goDel(str)">상품삭제</button>
								<button class="btn btn-primary" type="button" id="finish">완료</button>
							</div>
						</div>
						<div class="col-lg-6">

							<div
								style="width: 200px; height: 120px; border: 2px solid black; margin-top: 10px; margin-left: 100px;"
								id="img" name="img"></div>
							<div
								style="width: 200px; height: 120px; border: 2px solid black; margin-top: 10px; margin-left: 100px;"
								id="img" name="img"></div>
						</div>
					</div>

				</div>
			</div>

			<%-- form의 끗 --%>

			<%--panel-body 끗 --%>
		</form>
	</section>
</section>

