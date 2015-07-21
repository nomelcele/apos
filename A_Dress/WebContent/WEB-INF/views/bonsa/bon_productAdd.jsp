<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
var procode = false;
	$(function() {
		$('#pimg')
				.change(
						function() {
							//확장자.기준으로 다음요소를 선택해서 소문자로 변경한 후에 ext에 저장한다.
							// pop가져오는 명령, toLowerCase 소문자로...
							var ext = $(this).val().split('.').pop()
									.toLowerCase();
							//alert(ext)

							//배열에 추출한 확장자가 존재하는지 체크
							//alert($.inArray(ext, ['gif','png','jpg','jpeg']));
							if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) { //있으면 1 없으면 -1
								resetFormElement($(this));//폼 초기화
								window
										.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능합니다.)')
							} else {
								var file = $(this).prop("files")[0]; //넘어오는 값이 files라는 배열의 형태로 불러옴
								//file경로는 file://경로 이경로는 이미지 태그가 표현하지 못함.
								var blobURL = window.URL.createObjectURL(file);

								$('#pimgtarget img').attr('src', blobURL).css(
										'width', '100%');
								$('#pimgtarget').slideDown(); //업로드한 이미지 미리보기
							}

						});

		$('#bimg')
				.change(
						function() {
							//확장자.기준으로 다음요소를 선택해서 소문자로 변경한 후에 ext에 저장한다.
							// pop가져오는 명령, toLowerCase 소문자로...
							var ext = $(this).val().split('.').pop()
									.toLowerCase();
							//alert(ext)

							//배열에 추출한 확장자가 존재하는지 체크
							//alert($.inArray(ext, ['gif','png','jpg','jpeg']));
							if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) { //있으면 1 없으면 -1
								resetFormElement($(this));//폼 초기화
								window
										.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능합니다.)')
							} else {
								var file = $(this).prop("files")[0]; //넘어오는 값이 files라는 배열의 형태로 불러옴
								//file경로는 file://경로 이경로는 이미지 태그가 표현하지 못함.
								var blobURL = window.URL.createObjectURL(file);

								$('#bimgtarget img').attr('src', blobURL).css(
										'width', '100%');
								$('#bimgtarget').slideDown(); //업로드한 이미지 미리보기
							}

						});

		$('#code')
				.keyup(
						function() {

							if ($('#code').val().length > 9) {
								//$("#codeView").hide();
								//alert("입력하세요");
								$
										.ajax({
											url : "bo_codechk",
											type : "POST",
											data : {
												pro_code : $('#code').val()
											},
											success : function(data) {

												$("#codeView").show();
												if (data.trim() == "0") {

													$("#codeView")
															.html(
																	"<p style=\"color:green; \">사용가능합니다.</p>");
													procode =true;

												} else {

													$("#codeView")
															.html(
																	"<p style=\"color:red;\">이미 존재합니다.</p>");
													procode =false;

												}
											}
										});

							} else {
								$("#codeView").html(
										"<p style=\"color:red;\">너무 짧습니다.</p>");
								procode =false;

							}
						});

	});
	function submitproduct() {
		
		if($('#name').val().trim() == ""){
			alert("상품 이름을 입력하세요");
		}else if(procode == false){
			alert("상품 코드가 올바르지 않습니다.");
		}else if($('#price').val().trim() ==""){
			alert("판매 금액을 입력하세요.");
		}else if($('#pimg').val().trim() ==""){
			alert("상품 사진을 추가하세요.");
		}else if($('#bimg').val().trim() ==""){
			alert("바코드 사진을 추가하세요.");
		}else{
		$('#feedback_form').submit();
		
		}
	}
</script>
<script>
	// 상품코드 분류표 팝업창
	function open_win() {
		window
				.open(
						'popup',
						'popup',
						'width=470, height=310, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
	}
</script>
<!-- 본사의 상품관리의 상품추가 페이지 입니다. -->

<section id="main-content">
	<section class="wrapper">

		<div class="row" style="font-size: 15px; margin-top: -3%;">
			<div class="col-lg-12" style="width: 125%;">
				<h3 class="page-header" style="font-family: '210 나무고딕' ">
					<span><img src = "img/product.ico" style="width: 14pt; height: 14pt;"></span>상품추가
				</h3>

				<section class="panel">
					<div class="panel-body">
						<div class="form">

							<button class="form-control6" type="button"
								onclick="javascript:open_win()" id="btn1" name="btn1"
								style="float: right;">상품코드구분표</button>
							<form class="form-validate form-horizontal" id="feedback_form"
								method="post" action="bon_productAdding"
								enctype="multipart/form-data">



								<div style="margin: 0; width: 100%; margin-top: 1%;">


									<div class="form-group " style="font-family: '210 나무고딕' ">
										<label style="width: 30%; float: left;" for="cname"
											class="control-label col-lg-2">물품명</label>
										<div class="col-lg-2" style="float: left; width: 50%;">
											<input class="form-control" style="" id="name"
												name="pro_name" minlength="2" type="text" required />
										</div>
									</div>




									<div class="form-group ">
										<label style="width: 30%; float: left;" for="cname"
											class="control-label col-lg-2">물품코드</label>
										<div class="col-lg-2" style="width: 50%; float: left;">
											<input class="form-control" id="code" name="pro_code"
												maxlength="10" minlength="10" type="text" required />
										</div>
										<div id="codeView"></div>
									</div>




									<div class="form-group ">
										<label style="width: 30%; float: left;" for="cname"
											class="control-label col-lg-2">판매금액</label>
										<div class="col-lg-2" style="width: 50%; float: left;">
											<input class="form-control" id="price" name=" pro_price" maxlength="10"
												minlength="2" type="text" required />
										</div>
									</div>

								</div>

								<div class="form-group" style="margin-left: 18%">
									<div style="float: left; width: 30%;">
										<span>사진추가</span> <input type="file" id="pimg" name="pimg"
											style="width: 100%;">

									</div>
									<div style="float: left; width: 40%;">
										<div
											style="width: 80%; height: 100%; border: 2px solid rgb(213, 206, 206); margin-top: 10px; margin-bottom: 10px; margin-left: 30%;"
											id="pimgtarget">
											<img src="">
										</div>
									</div>
								</div>


								<div class="form-group " style="margin-left: 18%">
									<div style="float: left; width: 30%;">
										<span>바코드 추가</span> <input type="file" id="bimg" name="bimg"
											style="width: 100%;">

									</div>
									<div style="float: left; width: 40%;">
										<div
											style="width: 80%; height: 100%; border: 2px solid rgb(213, 206, 206); margin-top: 10px; margin-bottom: 10px; margin-left: 30%;"
											id="bimgtarget">
											<img src="">
										</div>
									</div>
								</div>


								<div style="float: left;"></div>
								<div style="float: right; margin-right: 20%; margin-top: 2%">
									<button type="button" class="btn btn-primary"
										onclick="javascript:submitproduct()">상품 추가</button>
								</div>


							</form>

						</div>
					</div>
				</section>
			</div>
		</div>

	</section>
</section>