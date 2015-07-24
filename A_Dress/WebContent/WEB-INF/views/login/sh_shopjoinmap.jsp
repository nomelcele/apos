<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery-ui-1.10.4.min.js"></script>
<script src="resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="resources/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="resources/js/jquery.scrollTo.min.js"></script>
<script src="resources/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="resources/assets/jquery-knob/js/jquery.knob.js"></script>
<script src="resources/js/jquery.sparkline.js" type="text/javascript"></script>
<script src="resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="resources/js/owl.carousel.js"></script>
<!-- jQuery full calendar -->
<script src="resources/js/fullcalendar.min.js"></script>
<!-- Full Google Calendar - Calendar -->
<script src="resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="resources/js/calendar-custom.js"></script>
<script src="resources/js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="resources/js/jquery.customSelect.min.js"></script>
<script src="resources/assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="resources/js/scripts.js"></script>
<!-- custom script for this page-->
<script src="resources/js/sparkline-chart.js"></script>
<script src="resources/js/easy-pie-chart.js"></script>
<script src="resources/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="resources/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="resources/js/xcharts.min.js"></script>
<script src="resources/js/jquery.autosize.min.js"></script>
<script src="resources/js/jquery.placeholder.min.js"></script>
<script src="resources/js/gdp-data.js"></script>
<script src="resources/js/morris.min.js"></script>
<script src="resources/js/sparklines.js"></script>
<script src="resources/js/charts.js"></script>
<script src="resources/js/jquery.slimscroll.min.js"></script>
<!-- Bootstrap CSS -->    
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="resources/css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="resources/css/elegant-icons-style.css" rel="stylesheet" />
<link href="resources/css/font-awesome.min.css" rel="stylesheet" />    
<!-- full calendar css-->
<link href="resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
<link href="resources/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
<!-- easy pie chart-->
<link href="resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
<!-- owl carousel -->
<link rel="stylesheet" href="resources/css/owl.carousel.css" type="text/css">
<link href="resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<!-- Custom styles -->
<link rel="stylesheet" href="resources/css/fullcalendar.css">
<link href="resources/css/widgets.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/style-responsive.css" rel="stylesheet" />
<link href="resources/css/xcharts.min.css" rel=" stylesheet">   
<link href="resources/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
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
<%-- API key : a7c6b78bfd7a1c043d96f3700d36afa0 --%>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=a7c6b78bfd7a1c043d96f3700d36afa0&libraries=services"></script>
<%-- Modal --%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">매장 찾기</h4>
			</div>
			<div class="modal-body">
				<%-- 우편 번호  --%>
				<div class="form-group" style="height: 50px;">
					<label for="cadr" class="control-label col-lg-2" style="padding: 0; font-size: 15px;">주소 <span class="required">*</span></label>
					<div class="col-lg-10">
					    <input class="form-control2" type="text" id="sample4_postcode1_2" name="adr1_2" readonly="readonly" autocomplete="off"> - 
						<input class="form-control2" type="text" id="sample4_postcode2_2" name="adr2_2" readonly="readonly" autocomplete="off">
						<input class="form-control5 " type="button" onclick="sample4_execDaumPostcode()" value="위치 찾기"><br>
					</div>
				</div>
				  
				<div class="form-group" style="height: 70px;">		
				  	<label for="cadrr" class="control-label col-lg-2" style="padding: 0; font-size: 15px;">상세주소 <span class="required">*</span></label>
					<div class="col-lg-10">
				 		<input class="form-control " type="text" id="sample4_roadAddress_2" placeholder="도로명주소" name="adr3_2">
						<input class="form-control " type="text" id="sample4_jibunAddress_2" placeholder="지번주소" name="adr4_2">
						<span id="guide" style="color:#999"></span>
					</div>
				</div>
				<%--지도 출력 --%>
				<div id="map" class="showMap" style="width:500px;height:400px; border: 1px solid black; margin: auto; display: none"></div>
				<p id="result"></p>
			</div>
				<div class="modal-footer showMap" style="display: none">
					<button type="button" class="btn btn-default" data-dismiss="modal" id="closeMapModal">Close</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal" id="changeMapModal">Save changes</button>
				</div>
		</div>
	</div>
</div>
<%-- 다음 우편 API --%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                // 회원가입 Page
                document.getElementById("sample4_postcode1_1").value = data.postcode1;
                document.getElementById("sample4_postcode2_1").value = data.postcode2;
                document.getElementById("sample4_roadAddress_1").value = fullRoadAddr;
                document.getElementById("sample4_jibunAddress_1").value = data.jibunAddress;
                // modal Page
                document.getElementById("sample4_postcode1_2").value = data.postcode1;
                document.getElementById("sample4_postcode2_2").value = data.postcode2;
                document.getElementById("sample4_roadAddress_2").value = fullRoadAddr;
                document.getElementById("sample4_jibunAddress_2").value = data.jibunAddress;
                
				var location = document.getElementById("sample4_roadAddress_1").value;
				moveMap(location);
                
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById("guide").innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById("guide").innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                } else {
                    document.getElementById("guide").innerHTML = '';
                }
            }
        }).open();
    }

    <%-- 다음 지도 API --%>

    function moveMap(location){
    	$('.showMap').show();
    	//마커를 담을 배열입니다
    	var markers = [];
    	var geocoder = new daum.maps.services.Geocoder();
    	var coords;
    	geocoder.addr2coord(location, function(status, result) {
    	  // 정상적으로 검색이 완료됐으면 
    	   if (status === daum.maps.services.Status.OK) {
    	
    	      coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
    	      document.getElementById("lat").value = result.addr[0].lat;
       		  document.getElementById("lng").value = result.addr[0].lng;
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
    	     var content = '<div class ="label"><span class="left"></span><span class="center" style="color:black;">HERE!</span><span class="right"></span></div>';
    	     var customOverlay = new daum.maps.CustomOverlay({
			    position: moveLatLon,
			    content: content   
			});
			
			// 커스텀 오버레이를 지도에 표시합니다
    	      map.setCenter(moveLatLon);
			  customOverlay.setMap(map);
    	      //infowindow.open(map, marker);
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


    //지도에 클릭 이벤트를 등록합니다
    //지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
    	daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
    			 // 클릭한 위도, 경도 정보를 가져옵니다 
    			 var latlng = mouseEvent.latLng;
    			 var message = '클릭한 위치는 : (' + latlng.getLat()+','+ latlng.getLng() + ') 입니다';
    			 var resultDiv = document.getElementById('result'); 
    			 resultDiv.innerHTML = message;
    	});
    }
</script>




