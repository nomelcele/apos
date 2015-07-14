<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
 <script>
    function productcheckaction(){
       $('#go_pro_name').val($('#pro_name').val());
       
       $.ajax({
         url : "bpd_chk",
         type : "POST",
         data : {
            pro_code : $('#pro_code').val()
         },
         success : function(data){
            $("#bpdtarget").html(data);
         }
      });
       $('#set_pro_code').val($('#pro_code').val());
    }
    
    function saleaccept(){
    	if($('#sale_begin').val() < $('#sale_end').val()){
    		$('#godiscount').submit();	
    	}else{
    		alert("기간선택이 잘못되었습니다");
    	}
    }
   
 </script>
<!-- 본사 상품관리 - 상품세일 -->
<section id="main-content">
   <section class="wrapper">
      <section class="panel">
         <div class="row" style="font-size: 15px;">
            <div class="col-lg-12" style="width: 125%">
               <h3 class="page-header">
                  <i class="fa fa-files-o"></i> 상품 추천 
               </h3>

               <header class="panel-heading tab-bg-primary ">
                  <div class="form-group " style="margin-left: -3%">
                     <form action="sh_productsaerch" method="post"
                        id="productcheckform">

                        <div style="margin-bottom: -1%">

                           <div class="col-lg-3" style="margin-left: -5%">
                               <label for="cname" class="control-label col-lg-6" style="font-size: 15px;">상품 코드 
                              </label> <input class="form-control" id="pro_code" name="pro_code"
                                 style="width: 50%" autocomplete="off" type="text" required />
                              <button class="form-control6" type="button"
                                 onclick="javascript:productcheckaction()" id="btn1"
                                 name="btn1">조회</button>
                              <div id="view"></div>
                           </div>

                        </div>
                     </form>
                  </div>
                  
               </header>

               <div class="panel-body" style="width: 100%">
                  <div class="tab-content" style="width: 100%">

                     <div id="search" class="tab-pane active">
                        <div class="table-responsive" style="width: 100%">
                           <table class="table">
                              <thead>
                                 <tr>
                                    <th>no</th>
                                    <th>상품이름</th>
                                    <th>상품코드</th>
                                    <th>가격</th>
                                    <th>상품사진</th>
                                    <th>바코드</th>
                                    <th >할인율</th>
                                 </tr>
                              </thead>
                              <tbody id="bpdtarget">
                              </tbody>
                           </table>

                        </div>
                     </div>
                     <table class="table" >
                        <thead>
                           <tr>
                              <th>상품코드</th>
                              <th>할인율</th>
                              <th>시작일</th>
                              <th>종료일</th>
                              <th>적용</th>
                           </tr>
                        </thead>
                        <tbody>
                           <form action="godiscount" id="godiscount" method="post">
                           <tr class="active">
                              <td><input type="text" class="form-control" name='set_pro_code'
                                 id="set_pro_code" value="" readonly="readonly"></td>
                              <td><input type="number" class="form-control"
                                 name='set_pro_salerate' id="set_pro_salerate" value="0" style="width: 100px;"></td>
                                 <td><input id="sale_begin" name="sale_begin" autocomplete="off"
									type="date" required /></td>
								 <td><input id="sale_end"
									name="sale_end" autocomplete="off" type="date"
									required /></td> 
                              <td rowspan="2"><div class="btn-group"><a class="btn btn-success" href="javascript:saleaccept()"><i class="icon_check_alt2"></i></a></div></td>
                           </tr>
                           <tr class="active">
                           		<td>내용		:	</td>
                           		<td colspan="3"><input type="text" class="form-control" name='sale_content' id="sale_content" value=""></td>
                           </tr>
                           </form>

                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </section>
</section>