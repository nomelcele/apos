<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 본사 매장관리의 매장매출관리 페이지 입니다 -->
<section id="main-content">
	<section class="wrapper">
		<div class="row" style="font-size: 15px;">
			<div class="col-lg-12">
				<h3 class="page-header">
					<span><img src = "img/sales.ico" style="width: 17pt; height: 15pt;"></span>매장별 매출순위
				</h3>


				<div class="form-group">
					<div style="margin-left: 10px;">
						<div>
							매장이름 <input id="date_ps2" name="name" minlength="2"
								autocomplete="off" type="text" onkeydown="startSuggest();"
								required />
							<div id="view"></div>
						</div>
						<div>
							기 &nbsp; &nbsp; &nbsp; 간 <input id="date_ps" name="name"
								minlength="2" autocomplete="off" type="date" required /> ~ <input
								id="date_ps2" name="name" minlength="2" autocomplete="off"
								type="date" required /> <input class="form-control6"
								style="margin-left: 10px;" type="submit" id="btn" name="btn"
								value="조회">
						</div>

					</div>
				</div>



				<table class="table table-striped table-advance table-hover">
					<tbody>
						<tr>
							<th><i class="icon_profile"></i>품목</th>
							<th><i class="icon_profile"></i>사이즈</th>
							<th><i class="icon_mail_alt"></i>가격</th>
							<th><i class="icon_pin_alt"></i>???</th>
							<th><i class="icon_mobile"></i>???</th>
							<th><i class="icon_calendar"></i> 가입날짜</th>
							<th><i class="icon_profile"></i>총액</th>
						</tr>
						<c:forEach var="stList" items="${list}">
							<tr>
								<td>${stList.mem_num}</td>
								<td>${stList.mem_name}</td>
								<td>${stList.mem_email}</td>
								<td>${stList.mem_addr}</td>
								<td>${stList.mem_tel}</td>
								<td>${stList.mem_date}</td>

							</tr>
						</c:forEach>

					</tbody>
				</table>


				<!-- 				<div class="form-group" style="margin-left: 700px;"> -->
				<!-- 					<label>총액</label> -->
				<!-- 					<div class="col-lg-2"> -->
				<!-- 						<input class="form-control7" id="sname_ps" name="name" -->
				<!-- 							minlength="2" onkeydown="startSuggest();" autocomplete="off" -->
				<!-- 							type="text" style="margin-left: 120px;" required /> -->
				<!-- 						<div id="view"></div> -->
				<!-- 					</div> -->

				<!-- 				</div> -->




			</div>
		</div>
	</section>
</section>