<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR" --%>
<%--     pageEncoding="EUC-KR"%> --%>
<%-- 					Page ${pageInfo.totalBlocks } / ${pageInfo.currentBlock} --%>
<!-- <script> -->
<!-- </script> -->
<!-- <form method="post" action="bon.apos" id="notice"> -->
<!-- <input type="hidden" name="cmd" value="bwork"> -->
<!-- <input type="hidden" name="subcmd" value="notice"> -->
<!-- <input type="hidden" name="page" value="1"> -->
<!-- </form> -->
         
<form action="${pageUrl }" method="post" id="movepage">
</form>
<div class="text-center">
<ul class="pagination">
					<c:choose>
							<c:when test="${pageInfo.currentBlock eq 1}">
               				<li><a>&lt;&lt;</a></li>
                           </c:when>
							<c:otherwise>
							<li><a
									href="javascript:gourl31('${(pageInfo.currentBlock-1)*pageInfo.pagesPerBlock }')">&lt;&lt;</a></li>
							</c:otherwise>
				     </c:choose> 
				     
					<c:choose>
							<c:when test="${pageInfo.currentBlock ne pageInfo.totalBlocks}">
								<c:forEach begin="1" end="${pageInfo.pagesPerBlock}"
									varStatus="num">
                        <li><a href="javascript:gourl31('${(pageInfo.currentBlock - 1) * pageInfo.pagesPerBlock + num.count }')">${(pageInfo.currentBlock - 1) * pageInfo.pagesPerBlock + num.count }</a></li>
                    			</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach
									begin="${(pageInfo.currentBlock-1)*pageInfo.pagesPerBlock + 1}"
									end="${pageInfo.totalPages}" varStatus="num">
                        <li><a href="javascript:gourl31('${(pageInfo.currentBlock - 1) * pageInfo.pagesPerBlock + num.count }')">${(pageInfo.currentBlock - 1) * pageInfo.pagesPerBlock + num.count }</a></li>
                    </c:forEach>
							</c:otherwise>
						</c:choose> <c:choose>
							<c:when test="${pageInfo.currentBlock eq pageInfo.totalBlocks}">
                <li><a>&gt;&gt;</a></li>
                </c:when>
							<c:otherwise>
								<li><a
									href="javascript:gourl31('${pageInfo.currentBlock * pageInfo.pagesPerBlock + 1 }')">&gt;&gt;</a></li>
							</c:otherwise>
						</c:choose></td>
						
</ul>
</div>