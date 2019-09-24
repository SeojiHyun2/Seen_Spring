<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<script>
	$(document).ready(function() {

		$(".reply").on("click", function() {

			var comment = $("#comment").val();
			var bno = $
			{
				retrieve.boardno
			}
			;

			console.log(comment);
			console.log(bno);

			$ajax({

				type : "post",
				url : "loginCheck/reply",
				data : {

					boardno : bno,
					comment : comment

				},
				success : function() {
					alert("댓글이 성공적으로 입력되었습니다.");
					replyList();
				}

			}); //ajax

		}); //onclick

		function replyList() {

			$ajax({

				type : "get",
				url : "loginCheck/replyList?bno=${retrieve.boardno}",
				success : function(result) {
					console.log(result);

					$("#replyList").html(result);

				} //success

			}); //ajax

		}
		; // replyList

	}); // ready
</script>



<html>
<head>

</head>
<body>

	<div class="container">
		<form id="commentForm" action="loginCheck/reply" method="post">
		<input type="hidden" id="boardno" name="boardno" value="${retrieve.boardno}" />
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