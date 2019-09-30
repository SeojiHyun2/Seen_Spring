<%@page import="com.dto.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
table.type11 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 20px 10px;
}

table.type11 th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

table.type11 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>



<div align="center">
	<form action="boardUpdate">
		<input type="hidden" id="boardno" name="boardno" value="${upInfo.boardno}" />
	
		<table border="1">

			<tr>
				<td width="900px">제목<input type="text" name="title"
					value="${upInfo.title}"></td>
				<td>${upInfo.userid}</td>
			</tr>

			<tr height="500px">
				<td colspan="2" valign="top"><textarea rows="10" cols="10"
						name="content"> ${upInfo.content}</textarea></td>
			</tr>
			<c:if test="${login_mem.userid==upInfo.userid}">
				<input type="submit" id="update" name="update" value="수정완료" />
			</c:if>
		</table>
	</form>
</div>

<br>


<div id="replyList"></div>