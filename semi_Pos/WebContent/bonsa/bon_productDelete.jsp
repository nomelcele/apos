<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>
<!-- 본사 상품관리의 상품삭제 페이지입니다. -->
<script>
$(function(){
	
})
function goDel(str){
	if(str == "pcode"){
		//alert("goDel실행됨!! :pcode");
		
		var productcode=$('#pcode').val();
		alert(pcode);
		$('#bpcode').val(productcode);
		
		document.getElementById("procode").submit();
	}
}
</script>
<section class="wrapper">
	<section id="main-content">
<form method="post" action="sh.apos" id="procode">
<input type="hidden" name="cmd" id="cmd" value="bproduct">
<input type="hidden" name="subcmd" id="subcmd" value="del">
<input type="hidden" name="childcmd" id="childcmd" value="pcode">
<input type="hidden" id ="bpcode" name="bpcode" value="" >
</form>

		<form class="form-validate form-horizontal" id="ewoivjsd"
			method="post" action="sh.apos">
			<input type="hidden" name="cmd" value="bproduct"> 
			<input type="hidden" name="subcmd" value="del">
			<input type="hidden" name="childcmd" value="ppp">



			<div class="row" style="font-size: 15px;">
				<div class="col-lg-12">
					<h3 class="page-header">
						<i class="fa fa-files-o">상품삭제</i>
					</h3>
				</div>

				<div class="panel-body">
					<div class="form">
						<div class="col-lg-6">
						
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">상품코드 </label>
								<div class="col-lg-4">
									<input class="form-control" id="pcode" name="pcode"
										minlength="2" onkeydown="startSuggest();" autocomplete="off"
										type="text">
								</div>
									<a onclick="goDel(str)"><input type="button" class="btn btn-default" type= id="pcodebtn" value="조회">
									</input></a>
							</div>

							<div class="form-group ">
								<br />
								<br /> <label style="width: 200px;" for="cname"
									class="control-label col-lg-2">물품명</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="name"
										name="name" minlength="2" type="text">
								</div>
							</div>
							<br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">사이즈</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="name"
										name="name" minlength="2" type="text">
								</div>
							</div>
							<br />
							<div class="form-group ">
								<label style="width: 200px;" for="cname"
									class="control-label col-lg-2">판매금액</label>
								<div class="col-lg-2">
									<input class="form-control" style="width: 260px;" id="name"
										name="name" minlength="2" type="text">
								</div>
							</div>
							<div class="form-group"
								style="margin-left: 200px; margin-top: 30px;">
								<div class="col-lg-2">
									<button class="btn btn-default" type="submit" id="memchange">상품삭제</button>
									<button class="btn btn-primary" type="button" id="finish">완료</button>
								</div>
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

