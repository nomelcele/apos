<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
	.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
	.map_wrap {position:relative;width:100%;height:500px;}
	#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
	.bg_white {background:#fff;}
	#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
	#menu_wrap .option{text-align: center;}
	#menu_wrap .option p {margin:10px 0;}  
	#menu_wrap .option button {margin-left:5px;}
	#placesList li {list-style: none;}
	#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
	#placesList .item span {display: block;margin-top:4px;}
	#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
	#placesList .item .info{padding:10px 0 10px 55px;}
	#placesList .info .gray {color:#8a8a8a;}
	#placesList .info .jibun {padding-left:26px;background:url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
	#placesList .info .tel {color:#009900;}
	#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
	#placesList .item .marker_1 {background-position: 0 -10px;}
	#placesList .item .marker_2 {background-position: 0 -56px;}
	#placesList .item .marker_3 {background-position: 0 -102px}
	#placesList .item .marker_4 {background-position: 0 -148px;}
	#placesList .item .marker_5 {background-position: 0 -194px;}
	#placesList .item .marker_6 {background-position: 0 -240px;}
	#placesList .item .marker_7 {background-position: 0 -286px;}
	#placesList .item .marker_8 {background-position: 0 -332px;}
	#placesList .item .marker_9 {background-position: 0 -378px;}
	#placesList .item .marker_10 {background-position: 0 -423px;}
	#placesList .item .marker_11 {background-position: 0 -470px;}
	#placesList .item .marker_12 {background-position: 0 -516px;}
	#placesList .item .marker_13 {background-position: 0 -562px;}
	#placesList .item .marker_14 {background-position: 0 -608px;}
	#placesList .item .marker_15 {background-position: 0 -654px;}
	#pagination {margin:10px auto;text-align: center;}
	#pagination a {display:inline-block;margin-right:10px;}
	#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>
<!-- 본사 매장관리의 매장 조회 페이지 입니다. -->
<script>
	
	 
</script>
<%-- Detail Modal --%>
<div id="demodal" class="modal fade">
	<div class="modal-dialog" style="width: 400px; text-align: center;">
		<div class="modal-content" style=" width: 500px;">
			<%-- Header --%>
			<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title"style="font-weight: bold;  font-family: '210 나무고딕' ">위치 상세 보기</h4>
			</div>

			<%-- BODY --%>
			<div id="modal body" style="text-align: center;">
				<span class="form-control" style="width:29%">주 소 : &nbsp;</span><input style="width:70% " type="text" class="form-control" id="adr" readonly> <br>
				<span class="form-control" style="width:29% ">매 장 명 : &nbsp;</span><input style="width:70% " type="text" class="form-control" id="master"  readonly><br> 
				<span  class="form-control" style="width:29% ">매 장 주 : &nbsp;</span><input style="width:70% " type="text" class="form-control" id="name"  readonly><br>
				<div id="map" style="height: 400px; width: 500px; border: 1px solid black; margin: auto; display:  none"></div>
				<input class="form-control" type="button" id="gomapbtn" value="click">
			 </div>
	
			<%-- FOOTER --%>
		</div>
	</div>
</div>

<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12" style="width: 125%; height: 100%;">
				<section class="panel">
					<h3 class="page-header"style="font-family: '210 나무고딕' ">
					<span><img src = "img/work.ico" style="width: 16pt; height: 15pt;"></span>화상 회의
				</h3>
					<table class="table" style="width: 100%; height: 100%;">
						<thead style="font-family: '210 나무고딕' ">
							<tr>
								
								<th>지점명</th>
								<th>주소</th>
								<th>사업자번호</th>
								<th>매장주이름</th>
								<th>매장전화번호</th>
								<th>매장주email</th>
								<th>매장주사진</th>
								<th>화상회의</th>
							</tr>
						</thead>
						
						<tbody style="font-family: '210 나무고딕' ">
						<c:forEach var="shlist" items="${list}"  >
							<tr class="warning">
								<th><span id="list_name">${shlist.shop_name}</span></th>
								<th><span id="list_adr">${shlist.shop_adr}</span></th>
								<th>${shlist.shop_crnum}</th>
								<th><span id="list_master">${shlist.shop_master}</span></th>
								<th>${shlist.shop_tel}</th>
								<th>${shlist.shop_mail}</th>
								<th><img src="master/${shlist.shop_img}" style="width: 50px;"></th>
								<th><a href="bonsaWebRTC?shop_num=${shlist.shop_num}" style="font-family: '210 나무고딕' "><input onclick="shopcdetialmap(${shlist.shop_num})" type="button" class="form-control4 block" id="detailBtn" value="화상연결하기"></a></th>								
								
							</tr>
						</c:forEach>
						</tbody>
					</table>
					
				</section>
			</div>
		</div>
	</section>
</section>

  