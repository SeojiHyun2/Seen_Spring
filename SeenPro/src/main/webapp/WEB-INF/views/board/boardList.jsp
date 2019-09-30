<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$("#list").on("click", function() {

			location.href = "board";
		}); //#list

	}); //ready finish
</script>

<style>





table.type11 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: center;
	line-height: 1.5;
	margin: 20px 10px;
}

table.type11 th {
	width: 155px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #ce4869;
}

table.type11 td {
	width: 155px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #eee;
}

table.type11 .even {
	background: #fdf3f5;
}
</style>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 보기</title>
</head>
<body>
	<form action="boardList">
		검색 <select name="searchName">
			<option value="title">제목</option>
			<option value="userid">작성자</option>
		</select> <input type="text" name="searchValue"> <input type="submit"
			value="검색">
	</form>

	<table class="type11">
		<tr scope="row">
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>

		<c:forEach var="dto" items="${list}">
			<tr>
				<td class="even">${dto.boardno}
				</th>
				<td class="even"><a href="boardRetrieve?boardno=${dto.boardno}">${dto.title}</a>
				</th>
				<td class="even">${dto.userid}
				</th>
				<td class="even">${dto.writeday}
				</th>
				<td class="even">${dto.viewcnt }
				</th>
			</tr>
		</c:forEach>

	</table>
	<a href="write" /> 글쓰기
	</a>
</body>
</html>