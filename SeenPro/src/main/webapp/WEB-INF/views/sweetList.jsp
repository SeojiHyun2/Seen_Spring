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

	$(document).ready(function() {
		$(".sweetAllDel").on("click", function() {
			console.log("why?");
			var userid = "${login_mem.userid}"
			$.ajax({
				url : 'sweetAllDel',
				type : "get",
				dataType : 'text',
				data : {
					userid : userid
				},
				success : function(data, status, xhr) {
					console.log("dddd");

					location.href = "loginCheck/sweetList";

				},
				error : function(xhr, status, error) {
					console.log(error);
				}
			});
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

.del {
		background: url("images/delone.png") no-repeat;
	border: none;
	width: 16px;
	height: 16px;
	cursor: pointer;
}

.sweetAllDel {
	position: relative;
	left: 49%;
}

.home {
	background: url("images/home.png") no-repeat;
	border: none;
	width: 48px;
	height: 48px;
	cursor: pointer;
}
</style>




<a href="main" id="H"><input type="button" class="home"></a>
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
					<h1 align="center">${login_mem.m_username}의sweet</h1>
				</tr>
				<tr>

					<!-- 반복시작 -->
					<c:forEach var="sweetList" items="${sweetList}" varStatus="status">
						<td>
							<table id="insidetable" style='padding: 3px'>

								<tr>
									<td><a href="workDetail?wCode=${sweetList.wCode}"> <img
											height="200" src="/images/${sweetList.wWork}" border="0"
											align="center" width="200">
									</a>
										<div style="position: absolute;">
											<div style="position: relative; bottom: 190px; left: 178px;">
												<fORM name="sweetListForm" method="GET">
													<input type="hidden" name="num" value="${sweetList.num}">
													<input type="submit" class="del" name="del"
														id="del" value="">
												</fORM>
											</div>
										</div></td>
								</tr>

								<tr>
							
								</tr>
								<tr>
									<td height="5">
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
<table>
	<tr>
		<input type="button" value="전체삭제" class="sweetAllDel" />
	</tr>
</table>

<!-- 페이징처리 -->
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








