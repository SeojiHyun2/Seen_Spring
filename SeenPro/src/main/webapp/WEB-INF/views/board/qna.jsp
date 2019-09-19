<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#write").on("click", function() {

			location.href = "edit";
		});

		//제목 클릭 할 경우 상세보기로 이동
		$("#subject").click(function() {

			location.href = " /boardView?id=" + $(this).attr("boardno");

		});

	});//finish
</script>
<style>
table.type {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 20px 10px;
}

table.type th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

table.type td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

.mouseOverHighlight {
	border-bottom: 1px solid blue;
	cursor: pointer !important;
	color: gray;
	pointer-events: auto;
}
</style>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>당신의 궁금증을 풀어드립니다.</h2>
	<div align="center">

		<table width="1200px" class="type">
			<tr>
				<th width="50px">No</th>
				<th width="850px">제목</th>
				<th width="100px">작성자</th>
				<th width="200px">작성일</th>
			</tr>
			
					
					<c:forEach var="dto" items="${dto}">
						<tr>
							<th>${dto.boardno}</th>
							<th><a href="BoardRetrieveServlet?num=${dto.boardno}">${dto.title}</a></th>
							<th>${dto.userid}</th>
							
						</tr>
					</c:forEach>

			
		</table>
		<table width="1200px">
			<tr>
				<td align="right">
					<button type="button" id="write" name="write">글 작성</button>
				</td>
			</tr>
			<br>
			<div id="pagination"></div>
			</div>
			</form>
		</table>
</body>
</html>