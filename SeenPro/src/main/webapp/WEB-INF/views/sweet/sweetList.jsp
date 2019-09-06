<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	

		$(document).ready(function() {

			$(".del").on("click", function() {
				$("form").attr("action", "sweetDel");
			});

		});

		$("#delAllSweet").on("click", function() {

			

	

	});
</script>

<style type="text/css">
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
	background: url("images/sweet.png") no-repeat;
	border: none;
	width: 32px;
	height: 32px;
	cursor: pointer;
}
</style>





<table width="100%" cellspacing="0" cellpadding="0" class="allList">

	<tr>
		<td>
			<table align="center" width="710" cellspacing="0" cellpadding="0"
				border="0">

				<tr>
					<td height="5"></td>
				</tr>
				<tr>
					<td height="1" colspan="8" bgcolor="CECECE"></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>

					<!-- 반복시작 -->
					<c:forEach var="sweetList" items="${sweetList}" varStatus="status">
						<td>
							<table style='padding: 15px'>
								<tr>
									<td class="td_default" width="80">
										<input type="checkbox" name="check"
										id="check" class="check" value="${sweetList.num}">
									</td></tr>
									<tr><td><a href="workDetail?wCode=${sweetList.wCode}"> <img
											src="/images/${sweetList.wWork}" border="0" align="center"
											width="200">
									</a></td>
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_default" align="center"><a id="name"
										class="a_black" href="workDetail?wCode=${sweetList.wCode}">
											${sweetList.wName}<br>
									</a> <font color="gray"> ------------------------- </font></td>
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_gray" align="center">

										<fORM name="sweetListForm" method="GET">


											<input type="hidden" name="num" value="${sweetList.num}">



											<input type="submit" class="del" name="del" id="del"
												value="삭제">

								</fORM>




									</td>

								</tr>
								<tr>
									<td height="5">
								</tr>
								<tr>
									<td class="td_black" align="center"><font color="black"
										face="나눔바른펜"> <strong>${sweetList.artistname}
												작가님의 작품입니다.</strong></font></td>
								</tr>
							</table>
						</td>

						<!-- 한 줄에1개씩 -->
						<c:if test="${status.count %3 == 0}">

							<tr>
								<td height="10">
							</tr>
						</c:if>
						<!-- 반복끝-->
					</c:forEach>
							
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="10">
	</tr>
</table>

<table align="center">
	<tr>
		<td><c:forEach var="num" begin="1" end="${totalPage}"
				varStatus="status">
				<c:choose>
					<c:when test="${pDTO.curPage == num}">
            ${num} &nbsp;&nbsp;
        </c:when>
					<c:otherwise>
						<a href="WorkListServlet?curPage=${num}&wCategory=${wCategory}">${num}</a>&nbsp;&nbsp;
        </c:otherwise>
				</c:choose>
			</c:forEach></td>
	</tr>
</table>








