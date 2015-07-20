<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script>
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
										'width', '100');
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
										'width', '100');
								$('#bimgtarget').slideDown(); //업로드한 이미지 미리보기
							}

						});
	});
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
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 상품추가
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



								<div
									style="float:left; margin: 0; width: 100%; margin-top: 1%;">


									<div class="form-group ">
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
												minlength="2" type="text" required />
										</div>
									</div>




									<div class="form-group ">
										<label style="width: 30%; float: left;" for="cname"
											class="control-label col-lg-2">판매금액</label>
										<div class="col-lg-2" style="width: 50%; float: left;">
											<input class="form-control" id="price" name=" pro_price"
												minlength="2" type="text" required />
										</div>
									</div>
									<div style="float: right; margin-right:20%;">
										<button type="submit" class="btn btn-primary">추가</button>
									</div>
								</div>


								<div class=".col-md-1" style="float: left; margin-right: 20%; width: 100%;">
									<input type="file" id="pimg" name="pimg" style="margin-left: 20%;">
									<button type="submit" class="btn btn-primary"
										style="margin-left: 20%;">사진추가</button>
									<div
										style="width: 40%; height: 120px; border: 2px solid rgb(213, 206, 206); margin-top: 10px; margin-bottom: 10px; margin-left: 40%;"
										id="pimgtarget">
										<img src="">
									</div>
								</div>
								<div style="float: left;"></div>


								<div class=".col-md-1" style="float: left; margin-right: 20%; width: 100%;">
									<input type="file" id="bimg" name="bimg" style="margin-left: 20%;">
									<button type="submit" class="btn btn-primary"
										style="margin-left: 20%;">바코드추가</button>
									<div
										style="width: 40%; height: 120px; border: 2px solid rgb(213, 206, 206); margin-top: 10px; margin-left: 40%;"
										id="bimgtarget">
										<img src="">
									</div>
								</div>
								<div style="float: left;"></div>



							</form>
						</div>
					</div>
				</section>
			</div>
		</div>

	</section>
</section>