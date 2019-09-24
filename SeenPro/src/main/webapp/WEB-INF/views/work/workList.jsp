<%@page import="com.dto.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<c:if test="${! empty addok}">
	<script>
		alert('${addok}')
	</script>
</c:if>
<%
	session.removeAttribute("addok");
%>

<c:if test="${! empty notmem}">
	<script>
		alert('${notmem}')
	</script>
</c:if>
<%
	session.removeAttribute("notmem");
%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {

		$(".sweet").on("click", function() {
			$("form").attr("action", "loginCheck/sweetAdd");
			//	$("form").submit(); <input type=button>인경우에만 사용
			console.log("11111111111");
		});

	});

	$(document).ready(function() {

		$(".box").on("mouseover", function(e) {
			var id = $(this).find(".sweet").attr("id");

			$("#" + id).attr("type", "submit");
			e.preventDefault();

		});

	});
	$(document).ready(function() {

		$(".box").on("mouseout", function(e) {
			var id = $(this).find(".sweet").attr("id");
			$("#" + id).attr("type", "hidden");
			e.preventDefault();

		});

	});
</script>






<style type="text/css">

#insidetable {
    width: 100%;
    height: 100px;

  }
  
#name:link {
	color: black;
	text-decoration: none;
	font-family: 나눔바른펜;
	font-size: 18px;
}

#name:visited {
	color: black;
	text-decoration: none;
}

#name:hover {
	color: black;
	text-decoration: underline;
}

.sweet {
	background: url("images/ssweet.png") no-repeat;
	border: none;
	width: 32px;
	height: 32px;
	cursor: pointer;
}

#img:hover {
	-webkit-filter: grayscale(100%);
	-webkit-transition: .1s ease-in-out;
	-moz-filter: grayscale(100%);
	-moz-transition: .1s ease-in-out;
	-o-filter: grayscale(100%);
	-o-transition: .1s ease-in-out;
	-background-image: url("images/hh.png") no-repeat;
}

#img {
	-webkit-filter: grayscale(0%);
	-webkit-transition: .1s ease-in-out;
	-moz-filter: grayscale(0%);
	-moz-transition: .1s ease-in-out;
	-o-filter: grayscale(0%);
	-o-transition: .1s ease-in-out;
}
</style>





<table style='padding:3px' align="center" width="60%" cellspacing="0" cellpadding="0" class="allList">

	<tr>
		<td>
			<table style='padding:3px' align="center" width="50%" cellspacing="0" cellpadding="0"
				border="0">

			
				
			
				<tr>

					<!-- 반복시작 -->
					<c:forEach var="workUp" items="${workUp}" varStatus="status">
						<td>
							<table id="insidetable" style='padding:3px'>
								<tr>
									<td><div id="box" class="box">
											<a href="workDetail?wCode=${workUp.wCode}" id="img"> <img height="200"
												src="/images/${workUp.wWork}" border="0" align="center"
												width="200" ></a>
											<div style="position: absolute;">
												<div style="position: relative; top: -50px; left: 85px;">
													<fORM name="workListForm" method="GET">

														<input type="hidden" name="wCode" value="${workUp.wCode}">
														<input type="hidden" name="wName" value="${workUp.wName}">
														<input type="hidden" name="wWork" value="${workUp.wWork}">
														<input type="hidden" name="wCategory" value="${workUp.wCategory}">
														<input type="hidden" name="artistname"
															value="${workUp.artistname}"> <input
															type="hidden" class="sweet" id="sweetAdd${workUp.wCode}"
															value="">
													</fORM>
												</div>
											</div>
										</div></td>
								</tr>

								
								
								
							</table>
						</td>
						<!-- 한 줄에3개씩 -->
						<c:if test="${status.count %4 ==0}">
							<tr>
							
							</tr>
						</c:if>
						<!-- 반복끝-->
					</c:forEach>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="0px">
	</tr>
</table>

<!-- 페이징처리 -->
<table align="center">
	<tr>
		<td>
			<c:forEach var="num" begin="1" end="${totalPage}" varStatus="status">
				<c:choose>
					<c:when test="${pDTO.curPage == num}">
           						 ${num} &nbsp;&nbsp;
     			    </c:when>
					<c:otherwise>
						<a href="WorkListServlet?curPage=${num}&wCategory=${wCategory}">${num}</a>&nbsp;&nbsp;
      				</c:otherwise>
				</c:choose>
			</c:forEach>
		</td>
	</tr>
</table>


