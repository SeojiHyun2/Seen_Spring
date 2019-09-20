<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script src="//cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#list").on("click", function() {

			location.href = "board";
		}); //#list

	}); //ready finish
</script>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 보기</title>
</head>
<body>

	<table border="1">
		<tr>
			<td colspan="5">
				<form action="boardList">
					검색: <select name="searchName">
						<option value="title">제목</option>
						<option value="userid">작성자</option>
					</select> <input type="text" name="searchValue"> <input
						type="submit" value="검색">
				</form>
			</td>
		</tr>

		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		
		<c:forEach var="dto" items="${list}">
			<tr>
				<th>${dto.boardno}</th>
				<th><a href="boardRetrieve?boardno=${dto.boardno}">${dto.title}</a></th>
				<th>${dto.userid}</th>
				<th>${dto.writeday}</th>
				<th>${dto.viewcnt }</th>
			</tr>
		</c:forEach>
		
		</table>
		
		<a href="write"/>글쓰기</a>
</body>
</html>