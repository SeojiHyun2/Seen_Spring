<%@page import="com.dto.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>



<style>
table.bd {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 20px 10px;
}

table.bd th {
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	border-right: 1px solid #ccc;
}

table.bd td {
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>

<div align="center">
	<table class="bd">
		<tr height="40px">
			<th width="600px" id="T">${retrieve.title}</th>
			<th width="50px">${retrieve.userid}${retrieve.artistname}</th>
			<td width="40px" style="font-size: 14px;">${retrieve.writeday}</td>
		</tr>
		<tr height="350px;">
			<td colspan="3">${retrieve.content}</td>
		</tr>
	</table>
</div>


<div align="center" style="width: 1050px;">
	<table align="right">
		<tr>
			<td>
				<form action="boardUpdateUI">
					<c:if test="${login_mem.userid==retrieve.userid}">
						<input type="hidden" id="boardno" name="boardno" value="${retrieve.boardno}" />
						<input type="hidden" id="title" name="title" value="${retrieve.title}" />
						<input type="hidden" id="content" name="content" value="${retrieve.content}" />
						<input type="submit" id="update" name="update" value="수정하러 GO" />
					</c:if>
				</form>
			</td>
			<td>
				<form action="loginCehck/delete">
					<c:if test="${login_mem.userid==retrieve.userid}">
						<input type="hidden" id="boardno" name="boardno" value="${retrieve.boardno}" />
						<input type="submit" id="delete" name="delete" value="삭제" />
					</c:if>
				</form>
			</td>
		</tr>
	</table>
</div>

<br>
<br>
<br>
<div align="center">
	<div>
		<span><strong>Comments</strong></span> <span id="cCnt"></span>
	</div>
	<div>
		<table class="table">
			<tr>
				<td><textarea style="width: 750px;" rows="3" cols="30"
						id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea> <br>
					<input type="submit" class="reply" value="등록" /></td>
			</tr>
		</table>
	</div>
</div>

</form>
</div>
<div class="container">
	<form id="commentListForm" name="commentListForm" method="post">
		<div id="commentList"></div>
	</form>
</div>

<div id="replyList"></div>

