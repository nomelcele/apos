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
	function shopcdetialmap(res){
            $.ajax({
                   url : "bon_shopdetailmap",
                   type : "POST",
                   data : {
                	   shop_num : res
                   },
                   success: function(data) {
                	   $('#map').hide();
                	   $('#gomapbtn').show();
                	   var res = data.trim();
                	   //alert("success! ::"+data.trim());
					   var str = res.split("/");
					   var shop_name = str[0];
					   var shop_master = str[1];
					   var shop_adr = str[2];
					   $('#name').attr("value",shop_name);
					   $('#master').attr("value",shop_master);
					   $('#adr').attr("value",shop_adr);
					   
                		
                		//$('#mock').html($('#map').html());
                		$('#demodal').modal('show');
                 		$('#gomapbtn').click(function(){
	                		$('#map').show();
	                		moveMap(shop_adr, shop_name);
	                		$('#gomapbtn').hide();
                		});
                   },
                   error: function(a, b) {
                       alert("Request: " + JSON.stringify(a));
                   }
               });
	};
</script>
<%-- 명표 APIkey : 7098d2c774fbdd915ec61cc46e44103b --%>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=7098d2c774fbdd915ec61cc46e44103b&libraries=services"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	  <%-- 다음 지도 API --%>
	    function moveMap(location,shop_name){
	    	//마커를 담을 배열입니다
	    	
	    	var markers = [];
	    	var geocoder = new daum.maps.services.Geocoder();
	    	var coords;
	    	geocoder.addr2coord(location, function(status, result) {
	    	  // 정상적으로 검색이 완료됐으면 
	    	   if (status === daum.maps.services.Status.OK) {
	    	
	    	      coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);

	       		  // 결과값으로 받은 위치를 마커로 표시합니다
	    	      var marker = new daum.maps.Marker({
	    	          map: map,
	    	          position: coords
	    	      });
	       		  
	    	      for ( var i=0; i<result.length; i++ ) {
	    	    	  
	    		      var placePosition = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng),
	    		      marker = addMarker(placePosition, i), 
	    		      itemEl = getListItem(i, result[i], marker); // 검색 결과 항목 Element를 생성합니다
	    	      }
	    			
	    	      var moveLatLon = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
	    	     
	    	      var circle = new daum.maps.Circle({
	    	    	    center : new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng),  // 원의 중심좌표 입니다 
	    	    	    radius: 50, // 미터 단위의 원의 반지름입니다 
	    	    	    strokeWeight: 5, // 선의 두께입니다 
	    	    	    //strokeColor: '#75B8FA', // 선의 색깔입니다
	    	    	    strokeColor: 'red',
	    	    	    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
	    	    	    strokeStyle: 'dashed', // 선의 스타일 입니다
	    	    	    fillColor: 'none',
	    	    	    //fillColor: '#CFE7FF', // 채우기 색깔입니다
	    	    	    fillOpacity: 0.7  // 채우기 불투명도 입니다   
	    	    	}); 
	    	
	    	    	// 지도에 원을 표시합니다 
	    	    	circle.setMap(map); 
	    	      // 인포윈도우로 장소에 대한 설명을 표시합니다
	    	      var infowindow = new daum.maps.InfoWindow({
	    	          content: '<div style="padding:5px;">'+shop_name+'</div>'
	    	      });
	    	      
	    	      map.setCenter(moveLatLon);
	    	      infowindow.open(map, marker);
	    	  } 
	    	});

	    	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    		mapOption = {
	    		    center: new daum.maps.LatLng(coords), // 지도의 중심좌표
	    		    level: 3 // 지도의 확대 레벨
	    	};  
	    	
	    	//지도를 생성합니다    
	    	var map = new daum.maps.Map(mapContainer, mapOption); 
	    	
	    	//장소 검색 객체를 생성합니다
	    	var ps = new daum.maps.services.Places();  



	    //마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	    	function addMarker(position, idx, title) {
	    		var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	    		    imageSize = new daum.maps.Size(36, 37),  // 마커 이미지의 크기
	    		    imgOptions =  {
	    		        spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
	    		        spriteOrigin : new daum.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	    		        offset: new daum.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	    		    },
	    		    markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	    		        marker = new daum.maps.Marker({
	    		        position: position, // 마커의 위치
	    		        image: markerImage 
	    		    });
	    		
	    		marker.setMap(map); // 지도 위에 마커를 표출합니다
	    		markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	    		
	    		return marker;
	    	}
	    }
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
					<h4 class="modal-title"style="font-weight: bold; font-family: '나눔바른고딕체 Light'">위치 상세 보기</h4>
			</div>

			<%-- BODY --%>
			<div id="modal body" style="text-align: center;">
				<span class="control-label" >주 소 : &nbsp;</span><input style="width:70% " type="text" class="form-control" id="adr" readonly> <br>
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
					<h3 class="page-header" style="font-family: '210 나무고딕' ">
					<i class="fa fa-files-o"></i> 매장 조회
				</h3>
					<table class="table" style="width: 100%; height: 100%;">
						<thead>
							<tr>
								
								<th>지점명</th>
								<th>주소</th>
								<th>사업자번호</th>
								<th>매장주이름</th>
								<th>매장전화번호</th>
								<th>매장주email</th>
								<th>매장주사진</th>
								<th>상세보기></th>
							</tr>
						</thead>
						
						<tbody>
						<c:forEach var="shlist" items="${list}"  >
							<tr class="warning">
								<th><span id="list_name"><a href="bonsaWebRTC?shop_num=${shlist.shop_num}">${shlist.shop_name}</a></span></th>
								<th><span id="list_adr">${shlist.shop_adr}</span></th>
								<th>${shlist.shop_crnum}</th>
								<th><span id="list_master">${shlist.shop_master}</span></th>
								<th>${shlist.shop_tel}</th>
								<th>${shlist.shop_mail}</th>
								<th><img src="master/${shlist.shop_img}" style="width: 50px;"></th>
								<th><input onclick="shopcdetialmap(${shlist.shop_num})" type="button" class="form-control4 block" id="detailBtn" value="상세보기"></th>								
								
							</tr>
						</c:forEach>
						</tbody>
					</table>
					
				</section>
			</div>
		</div>
	</section>
</section>

