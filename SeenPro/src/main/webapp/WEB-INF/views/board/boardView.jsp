<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript"src="http://code.jquery.com/jquery-1.11.3.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$("#list").on("click", function() {

			location.href = "board";
		}); //#list
		
		
		$("#modify").on("click", function() {

			location.href = "loginCheck/modify";
		}); //#modify
		
		$("#list").on("click", function() {

			location.href = "board";
		}); //#delete

	}); //ready finish
</script>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 보기</title>
</head>
<body>


	<input type="hidden" id="boardno" name="boardno"
		value="${retrieve.boardno}" />
	<div align="center">
		</br> </br>
		<table border="1" width="1200px">
			<tr>
				<td colspan="2" align="right">

					<button id="modify" name="modify">글 수정</button>
					<button id="delete" name="delete">글 삭제</button>
				</td>
			</tr>
			<tr>
				<td width="900px">제목: ${retrieve.title}</td>
				<td>작성자: ${retrieve.userid}</td>
			</tr>
			<tr height="500px">
				<td colspan="2" valign="top">${retrieve.content}</td>
			</tr>
		</table>
					<br><button id="list" name="list">목록 가기</button>
</body>
</html>