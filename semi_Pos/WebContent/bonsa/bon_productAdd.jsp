<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bon_top.jsp"%>
<%@include file="bon_left.jsp"%>

<script>
$(function(){
	$('#pimg').change(function(){
		//확장자.기준으로 다음요소를 선택해서 소문자로 변경한 후에 ext에 저장한다.
		// pop가져오는 명령, toLowerCase 소문자로...
		var ext = $(this).val().split('.').pop().toLowerCase();
		//alert(ext)
		
		//배열에 추출한 확장자가 존재하는지 체크
		//alert($.inArray(ext, ['gif','png','jpg','jpeg']));
		if($.inArray(ext, ['gif','png','jpg','jpeg'])==-1){ //있으면 1 없으면 -1
			resetFormElement($(this));//폼 초기화
			window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능합니다.)')
		}else{
			var file = $(this).prop("files")[0]; //넘어오는 값이 files라는 배열의 형태로 불러옴
			//file경로는 file://경로 이경로는 이미지 태그가 표현하지 못함.
			var blobURL = window.URL.createObjectURL(file);
			
			$('#pimgtarget img').attr('src', blobURL).css('width', '100');
			$('#pimgtarget').slideDown(); //업로드한 이미지 미리보기
		}
		
	});


$('#bimg').change(function(){
	//확장자.기준으로 다음요소를 선택해서 소문자로 변경한 후에 ext에 저장한다.
	// pop가져오는 명령, toLowerCase 소문자로...
	var ext = $(this).val().split('.').pop().toLowerCase();
	//alert(ext)
	
	//배열에 추출한 확장자가 존재하는지 체크
	//alert($.inArray(ext, ['gif','png','jpg','jpeg']));
	if($.inArray(ext, ['gif','png','jpg','jpeg'])==-1){ //있으면 1 없으면 -1
		resetFormElement($(this));//폼 초기화
		window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능합니다.)')
	}else{
		var file = $(this).prop("files")[0]; //넘어오는 값이 files라는 배열의 형태로 불러옴
		//file경로는 file://경로 이경로는 이미지 태그가 표현하지 못함.
		var blobURL = window.URL.createObjectURL(file);
		
		$('#bimgtarget img').attr('src', blobURL).css('width', '100');
		$('#bimgtarget').slideDown(); //업로드한 이미지 미리보기
	}
	
});
});
</script>
<!-- 본사의 상품관리의 상품추가 페이지 입니다. -->

<section id="main-content">
	<section class="wrapper">

		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-files-o"></i> 상품추가
				</h3>


				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<div class="panel-body">
								<div class="form">

									<form class="form-validate form-horizontal" id="feedback_form"
										method="post" action="sh.apos" enctype="multipart/form-data">
										<input type="hidden" name="cmd" value="bproduct">
										<input type="hidden" name="subcmd" value="add">
										<input type="hidden" name="childcmd" value="in">


										<div
											style="float: left; margin: 0; width: 400px; margin-top: 70px;">


											<div class="form-group ">
												<label style="width: 115px;" for="cname"
													class="control-label col-lg-2">물품명</label>
												<div class="col-lg-2">
													<input class="form-control" style="width: 260px;"
														id="name" name="name" minlength="2" type="text" required />
												</div>
											</div>




											<div class="form-group ">
												<label style="width: 115px;" for="cname"
													class="control-label col-lg-2">물품코드</label>
												<div class="col-lg-2">
													<input class="form-control" style="width: 260px;"
														id="code" name="code" minlength="2" type="text" required />
												</div>
											</div>



											<div class="form-group ">
												<label style="width: 115px;" for="cname"
													class="control-label col-lg-2">사이즈</label>
												<div class="col-lg-2">
													<input class="form-control" style="width: 260px;"
														id="size" name="size" minlength="2" type="text" required />
												</div>
											</div>



											<div class="form-group ">
												<label style="width: 115px;" for="cname"
													class="control-label col-lg-2">판매금액</label>
												<div class="col-lg-2">
													<input class="form-control" style="width: 260px;"
														id="price" name="price" minlength="2" type="text" required />
												</div>
											</div>
											<div style="float: right; margin-right: 2px;">
												<button type="submit" class="btn btn-primary">추가</button>
											</div>
										</div>


										<div class=".col-md-1"
											style="float: left; margin-right: 50px;">
											<input type="file" id="pimg" name="pimg">
											<button type="submit" class="btn btn-primary"
												style="margin-left: 218px;">사진추가</button>
											<div
												style="width: 200px; height: 120px; border: 2px solid black; margin-top: 10px; margin-bottom: 10px; margin-left: 100px;"
												id="pimgtarget"><img src=""></div>
										</div>
										<div style="float: left;"></div>


										<div class=".col-md-1"
											style="float: left; margin-right: 300px;">
											<input type="file" id="bimg" name="bimg">
											<button type="submit" class="btn btn-primary"
												style="margin-left: 205px;">바코드추가</button>
											<div
												style="width: 200px; height: 120px; border: 2px solid black; margin-top: 10px; margin-left: 100px;"
												id="bimgtarget"><img src=""></div>
										</div>
										<div style="float: left;"></div>



									</form>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</section>
</section>