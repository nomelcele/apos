<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<!-- 매장의 업무관리 - 연락처 페이지입니다. -->
<section id="main-content">
<section class="wrapper">


<script src="../js/http.js"></script>
<script src="../js/json2.js"></script>
<script>
	var lastKey = '';
	var check = false;
	var loopKey = false;
	
	function startSuggest() {	
		if (check == false) {
			setTimeout("sendKeyword();", 500);
			loopKey = true;
		}
		check = true;
	}
	function sendKeyword() {
		if (loopKey == false) {
			return;
		}
		var key = sname_ps.value;
		if (key == '' || key == ' ') {
			lastKey = '';
			document.getElementById("view").style.display ='none';
		} else if (key != lastKey) {
			lastKey = key;
			var param = "key=" + encodeURIComponent(key);
			sendRequest("suggest.jsp", param, res, "post");
		}
		setTimeout("sendKeyword();", 1000);
	}

	var jsonObj = null;
	function res() {
		
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var response = xhr.responseText;
				jsonObj = JSON.parse(response);
				viewTable();
			} else {
				document.getElementById("view").style.display ='none';
			}
		}
	}
	function viewTable() {
		var vD = document.getElementById("view");
		var htmlTxt = "<table>";
		for (var i = 0; i < jsonObj.length; i++) {
			htmlTxt += "<tr><td style='cursor:pointer;'onmouseover='this.style.background=\"silver\"'onmouseout='this.style.background=\"white\"' onclick='select("
					+ i + ")'>" + jsonObj[i] + "</td></tr>";
		}
		htmlTxt +="</table>";
		vD.innerHTML = htmlTxt;
		vD.style.display = "block";	
	}
	function select(index) {
		sname_ps.value = jsonObj[index];
		document.getElementById("view").style.display = 'none';
		check = false;
		loopKey = false;
	}
</script>

 	<div class="row" style="font-size: 12px;"> 
				<div class="col-lg-21";
				 style="margin-left: 20px">
					
 	
<div class="row">
                  <div class="col-lg-21"
                   style="margin-left: 2px;">>
                      <section class="panel">
<!--                           <header class="panel-heading"> -->
<!--                           </header> -->
                          <div class="panel-body">
                              <div class="form">
                              
                                  <form class="form-validate form-horizontal" id="feedback_form" method="post" action="sh.apos">
                                  <input type="hidden" name="cmd" value="smember">
                                  <input type="hidden" name="subcmd" value="insert">
                                  
                                  </form>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg--6"></label>
                                          <div class="col-lg-4">
                                              <input class="form-control" id="sname_ps" name="name" minlength="3" onkeydown="startSuggest();" type="text" required />
                                              <div id="view"></div>
                                          </div>
                                          <input class="form-control5" type="button" id="btn" name="btn" value="조회">
                                      </div>


                          </header>
                          <table class="table table-condensed">
                            <thead>
                            <p style="font-size: 15pt">
                              <tr>
                                <th>지점번호</th>
                                <th>지점</th>
                                <th>직급</th>
                                <th>이름</th>
                                <th>연락처</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1</td>
                                <td>논현역점</td>
                                <td>점장</td>
                                <td>남주혁</td>
                                <td>02-367-0000</td>
                              </tr>
                              <tr>
                                <td>2</-td>
                                <td>여의도점</td>
                                <td>부점장</td>
                                <td>윤두준</td>
                                <td>02-387-9900</td>
                              </tr>
                               <tr>
                                <td>3</td>
                                <td>신도림점</td>
                                <td>매니저</td>
                                <td>윤두준</td>
                                <td>02-367-0080</td>
                                </tr>
                     
                              <tr>
                                 <td>4</td>
                                <td>아주대점</td>
                                <td>매니저</td>
                                <td>도하진</td>
                                <td>031-219-7777</td>
                              </tr>
                               <tr>
                                 <td>5</td>
                                <td>가산점</td>
                                <td>점장</td>
                                <td>서경연</td>
                                <td>02-367-0000</td>
                             
                                </tr>
                                <tr>
                                 <td>6</td>
                                <td>죽전점</td>
                                <td>점장</td>
                                <td>윤홍기</td>
                                <td>031-333-2222</td>
                                </tr>
                                 <tr>
                                 <td>7</td>
                                <td>광명역점</td>
                                <td>부점장</td>
                                <td>한광호</td>
                                <td>031-367-0000</td>
                                </tr>
                                 <tr>
                                 <td>8</td>
                                <td>야탑점</td>
                                <td>점장</td>
                                <td>박경찬</td>
                                <td>031-367-0000</td>
                                </tr>
                                 <tr>
                                 <td>9</td>
                                <td>왕십리점</td>
                                <td>매니저</td>
                                <td>윤성현</td>
                                <td>02-555-2222</td>
                                </tr>
                                 <tr>
                                 <td>10</td>
                                <td>가산점</td>
                                <td>점장</td>
                                <td>서경연</td>
                                <td>02-555-2222</td>
                                </tr>
                                 <tr>
                                 <td>11</td>
                                <td>용인점</td>
                                <td>점장</td>
                                <td>배수지</td>
                                <td>031-555-2222</td>
                                </tr>
                                 <tr>
                                 <td>12</td>
                                <td>수원점</td>
                                <td>점장</td>
                                <td>이성연</td>
                                <td>031-555-2222</td>
                                </tr>
                                   </p>
                            </tbody>
                          </table>
                      </section>
                  </div>
                  </div>
                  </section>
                  </section>