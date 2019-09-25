<%@page import="com.dto.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<div align="center">
		</br> </br>
		<table border="1" width="1200px">
			<tr>
				<td colspan="2" align="right">
					<form action="loginCehck/delete">
						
						<c:if test="${login_mem.userid==retrieve.userid}">
							<input type="hidden" id="boardno" name="boardno" value="${retrieve.boardno}" />
							<input type="submit" id="delete" name="delete" value="삭제" />
						</c:if>

					</form>

				</td>
			</tr>
			<tr>
				<form action="loginCheck/update">
					<input type="hidden" id="boardno" name="boardno"
						value="${retrieve.boardno}" />
					<td width="900px">제목<input type="text" name="title"
						value="${retrieve.title}"></td>
					<td>${retrieve.userid}</td>
			</tr>

			<tr height="500px">
				<td colspan="2" valign="top"><textarea rows="10" cols="10"
						name="content"> ${retrieve.content}</textarea></td>
			</tr>
			<c:if test="${login_mem.userid==retrieve.userid}">

				<input type="submit" id="update" name="update" value="수정" />

			</c:if>
			</form>
		</table>
		
		<br>
		
			<div class="container">
		<form id="commentForm" action="loginCheck/reply" method="post">
		<input type="hidden" id="boardno" name="boardno" value="${retrieve.boardno}" />
		
		<div>
			<table border="1">
				<tr>
					
				</tr>
			</table>
		</div>
		
		
			<br> <br>
			<div>
				<div>
					<span><strong>Comments</strong></span> <span id="cCnt"></span>
				</div>
				<div>
					<table class="table">
						<tr>
							<td><textarea style="width: 1100px" rows="3" cols="30"
									id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>

								<br> <input type="submit" class="reply" value="등록" />
								</td>
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


		<input type="submit" id="list" name="list" value="목록가기" />
