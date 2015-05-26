
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="sh_top.jsp"%>
<%@include file="sh_left.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 매장의업무관리- 연락처페이지입니다. -->
<section id="main-content">
<section class="wrapper">


<script src="../js/http.js"></script>
<script src="../js/json2.js"></script>
<script>
var lastKey = ''
var check = false
var loopKey = false

function startSuggest() {
if (check == false) {
setTimeout("sendKeyword();", 500);
loopKey = true
}
check = true
}
function sendKeyword() {
if (loopKey == false) {
return
}
var key = sname_ps.value
if (key == '' || key == ' ') {
lastKey = ''
document.getElementById("view").style.display ='none'
} else if (key != lastKey) {
lastKey = key
var param = "key=" + encodeURIComponent(key);
sendRequest("suggest.jsp", param, res, "post");
}
setTimeout("sendKeyword();", 1000);
}

var jsonObj = null
function res() {

if (xhr.readyState == 4) {
if (xhr.status == 200) {
var response = xhr.responseText
jsonObj = JSON.parse(response);
viewTable();
} else {
document.getElementById("view").style.display ='none'
}
}
}
function viewTable() {
var vD = document.getElementById("view");
var htmlTxt = "<table>"
for (var i = 0; i < jsonObj.length; i++) {
htmlTxt += "<tr><td style='cursor:pointer;'onmouseover='this.style.background=\"silver\"'onmouseout='this.style.background=\"white\"' onclick='select("
+ i + ")'>" + jsonObj[i] + "</td></tr>"
}
htmlTxt +="</table>"
vD.innerHTML = htmlTxt
vD.style.display = "block"
}
function select(index) {
sname_ps.value = jsonObj[index];
document.getElementById("view").style.display = 'none'
check = false
loopKey = false
}
</script>

 <div class="row" style="font-size: 12px"> 
<div class="col-lg-21"
style="margin-left: 20px">

 
<div class="row">
                  <div class="col-lg-21"
                   style="margin-left: 2px">>
                      <section class="panel">
<!--                           <header class="panel-heading"> -->
<!--                           </header> -->
                          <div class="panel-body">
                              <div class="form">
                              
                                  <form class="form-validate form-horizontal" id="feedback_form" method="post" action="sh.apos">
                                  <input type="hidden" name="cmd" value="swork">
                                  <input type="hidden" name="subcmd" value="tel">
                   
                                  
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg--6"></label>
                                          <div class="col-lg-4">
                                              <input class="form-control" id="sname_ps" name="name" minlength="3" onkeydown="startSuggest();" type="text"required />
                                              <div id="view"></div>
                                          </div>
                                          </form>
                                          <input class="form-control5" type="submit" id="btn" name="btn" value="조회">
                                      </div>


                          </header>
                          <table class="table table-condensed">
                          
                            <thead>

                              <tr>
                                <th>#</th>
                                <th>지점</th>
                                <th>직급</th>
                                <th>이름</th>
                                <th>연락처</th>
                              </tr>
                            </thead>
                            <tbody>
                              
           
              <c:forEach var="stList" items="${list}">
               <tr>
                  <td>${stList.shop_snum}</td>
                  <td>${stList.shop_name}</td>
                  <td>${stList.shop_sposition}</td>
                  <td>${stList.shop_sname}</td>
                  <td>${stList.shop_stel}</td>
               </tr>
               </c:forEach>
                            </tbody>
                           
                          </table>
                      </section>
                  </div>
                  </div>
                  </section>
                  </section>





