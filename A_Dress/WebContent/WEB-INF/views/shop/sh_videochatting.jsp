<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%--매장과의 화상채팅  --%>
<script src="http://simplewebrtc.com/latest.js"></script>

<style>
video {
	width: 100%;
}
</style>
<section id="main-content">

	<section class="wrapper">
		<div class="row" style="font-size: 15px; width: 125%;">
			<div class="col-lg-12" >
				<h3 class="page-header" style="font-family: '210 나무고딕' ">
					<span><img src = "img/work.ico" style="width: 16pt; height: 15pt;"></span>본사와의 화상채팅
				</h3>
				<section class="panel" style="font-size: 8px;">
					<div style="width: 80%">
						<div class="panel-body">
							<div class="form">

								<div id="localVideo" style="float: left; width: 48%;margin: 1%"></div>
								<div id="remoteVideo" style="float: left; width: 48%;margin: 1%"></div>
							</div>
							<button onclick="exe()"  style="font-family: '210 나무고딕' ">click</button>
							${test }
						</div>

					</div>
				</section>
			</div>
		</div>

	</section>
</section>
<script>
	var webrtc = new SimpleWebRTC({
		localVideoEl : 'localVideo',
		remoteVideosEl : 'remoteVideo',
		autoRequestMedia : true
	});
	var joinRoom = "${test}";
	webrtc.on('readyToCall', function() {
		webrtc.joinRoom(joinRoom);
	});
	function exe() {
		alert(joinRoom);
	}
</script>

