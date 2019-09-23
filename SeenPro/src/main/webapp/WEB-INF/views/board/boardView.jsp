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


<input type="hidden" id="boardno" name="boardno" value="${retrieve.boardno}" />
	<div align="center">
		</br></br>
		<table border="1" width="1200px">
			<tr>
				<td colspan="2" align="right">
					<form action="loginCehck/delete">
						<input type="hidden" id="boardno" name="boardno"
							value="${retrieve.boardno}" /> 
						<input type="submit" id="delete" name="delete" value="삭제" />

					</form>

				</td>
			</tr>
			<tr>
				<form action="loginCheck/update">
				<input type="hidden" id="boardno" name="boardno" value="${retrieve.boardno}" />
				<td width="900px">제목<input type="text" name="title" value="${retrieve.title}"></td>
				<td>${retrieve.userid}</td>
			</tr>
			
			<tr height="500px">
		        <td colspan="2" valign="top">
		        <textarea rows="10" cols="10" name="content"> ${retrieve.content}</textarea>
		        </td>
			</tr>
				<input type="submit" id="update" name="update" value="수정" />
				</form>
		</table>
		<br>
		<button id="list" name="list">목록 가기</button>
	<jsp:include page="reply.jsp" flush="true" />
	
		
</body>
</html>