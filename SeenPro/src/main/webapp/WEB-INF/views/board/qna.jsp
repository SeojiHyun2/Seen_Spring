<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		
		
		
	});//finish
</script>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>당신의 궁금증을 풀어드립니다.</h2>
	<div align="center">
		<table width="1200px">
			<tr>
				<td align="right">
					<button type="button" id="write" name="write">글 작성</button>
				</td>
			</tr>
			<table border="1" width="1200px">
				<tr>
					<th width="50px">No</th>
					<th width="850px">제목</th>
					<th width="100px">작성자</th>
					<th width="200px">작성일</th>
				</tr>
				<c:choose>
					<c:when test="${fn:length(boardList) == 0}">
						<tr>
							<td colspan="4" align="center">조회결과가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="boardList" items="${boardList}" varStatus="status">
							<tr>
								<td align="center">${boardList.id}</td>
								<td><a name="subject" class="mouseOverHighlight"
									content_id="${boardList.id}">${boardList.subject}</a></td>
								<td align="center">${boardList.writer}</td>
								<td align="center">${boardList.register_datetime}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
			<br>
			<div id="pagination"></div>
			</div>
			</form>
		</table>
</body>
</html>