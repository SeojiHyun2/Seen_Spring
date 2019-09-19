<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script src="//cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	$("#list").on("click", function(){
		
		location.href="board";
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

<tr>
	  <th>글번호</th>
	  <th>제목</th>
	  <th>작성자</th>
	  <th>작성일</th>
	  <th>조회수</th>
	</tr>
<c:forEach var="dto" items="${dto}">
	<tr>
	  <th>${dto.boardno}</th>
	  <th><a href="BoardRetrieveServlet?num=${dto.boardno}">${dto.title}</a></th>
	  <th>${dto.userid}</th>
	  
	</tr>
</c:forEach>



</body>
</html>