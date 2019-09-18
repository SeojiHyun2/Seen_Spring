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

<input type="hidden" id="boardno" name="boardno" value="${boardView.boardno}" />
        <div align="center">
            </br>
            </br>
               <table border="1" width="1200px" >
                   <tr>
                       <td colspan="2" align="right">
                          
                           <button id="modify" name="modify">글 수정</button>
                           <button id="delete" name="delete">글 삭제</button>
                       </td>
                   </tr>
                   <tr>
                       <td width="900px">
                        제목: ${boardView.title}
                    </td>
                    <td>
                        작성자: ${boardView.userid}
                    </td>
                   </tr>
                   <tr height="500px">
                       <td colspan="2" valign="top">
                           ${boardView.content}
                       </td>
                   </tr>
               </table>
               <table border="1" width="1200px" id="reply_area">
                   <tr reply_type="all"  style="display:none"><!-- 뒤에 댓글 붙이기 쉽게 선언 -->
                       <td colspan="4"></td>
                   </tr>
                   <!-- 댓글이 들어갈 공간 -->
                   <c:forEach var="replyList" items="${replyList}" varStatus="status">
                    <tr reply_type="<c:if test="${replyList.depth == '0'}">main</c:if><c:if test="${replyList.depth == '1'}">sub</c:if>"><!-- 댓글의 depth 표시 -->
                        <td width="820px">
                            <c:if test="${replyList.depth == '1'}"> → </c:if>${replyList.reply_content}
                        </td>
                        <td width="100px">
                            ${replyList.reply_writer}
                        </td>
                        <td width="100px">
                            <input type="password" id="reply_password_${replyList.reply_id}" style="width:100px;" maxlength="10" placeholder="패스워드"/>
                        </td>
                        <td align="center">
                            <c:if test="${replyList.depth != '1'}">
                                <button name="reply_reply" parent_id = "${replyList.reply_id}" reply_id = "${replyList.reply_id}">댓글</button><!-- 첫 댓글에만 댓글이 추가 대댓글 불가 -->
                            </c:if>
                            <button name="reply_modify" parent_id = "${replyList.parent_id}" r_type = "<c:if test="${replyList.depth == '0'}">main</c:if><c:if test="${replyList.depth == '1'}">sub</c:if>" reply_id = "${replyList.reply_id}">수정</button>
                            <button name="reply_del" r_type = "<c:if test="${replyList.depth == '0'}">main</c:if><c:if test="${replyList.depth == '1'}">sub</c:if>" reply_id = "${replyList.reply_id}">삭제</button>
                        </td>
                    </tr>
                </c:forEach>
               </table>
               <table border="1" width="1200px" bordercolor="#46AA46">
                   <tr>
                       <td width="500px">
                        이름: <input type="text" id="reply_writer" name="reply_writer" style="width:170px;" maxlength="10" placeholder="작성자"/>
                        패스워드: <input type="password" id="reply_password" name="reply_password" style="width:170px;" maxlength="10" placeholder="패스워드"/>
                        <button id="reply_save" name="reply_save">댓글 등록</button>
                    </td>
                   </tr>
                   <tr>
                       <td>
                           <textarea id="reply_content" name="reply_content" rows="4" cols="50" placeholder="댓글을 입력하세요."></textarea>
                       </td>
                   </tr>
               </table>
               <table width="1200px">
                   <tr>
                       <td align="right">
                           <button id="list" name="list">목록 보기</button>
                       </td>
                   </tr>
               </table>
        </div>




</body>
</html>