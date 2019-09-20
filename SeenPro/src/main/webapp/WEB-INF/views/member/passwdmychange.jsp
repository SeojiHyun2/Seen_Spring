<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<c:if test="${! empty passwd}">
	<script>
		alert("${passwd}");
	</script>
	<%
		session.removeAttribute("passwd");
	%>
</c:if>

<c:if test="${! empty passwdok}">
	<script>
		alert("${passwdok}");
	</script>
	<%
		session.removeAttribute("passwdok");
	%>
</c:if>



<script language="javascript"
	src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>


<script type="text/javascript">
	function check() {
		console.log($("#passwd").val());
		console.log($("#passwd2").val());

		if ($("#passwd").val() != $("#passwd2").val()) {
			$("#result2").text("비밀번호가 일치하지 않습니다.");
			$("#result2").css("color", "red");
			$("#passwd2").focus();

			return false;
		} else if ($("#passwd").val() == $("#passwd2").val()) {

			$("#result2").text("비밀번호가 동일합니다.");
			$("#result2").css("color", "blue");
		}

	}
</script>

<style>
input[type=password] {
	width: 20%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 20%;
	background-color: #999999;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #999999;
}

input[type=reset] {
	width: 20%;
	background-color: #999999;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=reset]:hover {
	background-color: #999999;
}

div {
	border-radius: 5px;
	padding: 20px;
}
</style>

<div>
	<form action="loginCheck/passwdMyChange" method="get">
		<label for="fname">기존 비밀번호</label><br> <input type="password"
			name="m_passwd" id="m_passwd"><br> <label for="fname">새
			비밀번호</label><br> <input type="password" name="m_newpasswd" id="passwd"><br>
		<label for="fname">새 비밀번호 확인</label><br> <input type="password"
			name="m_newpasswd2" id="passwd2" onkeyup="check()"> <span
			id="result2"></span><br> <input class="a" type="submit"
			value="수정"><br> <input class="a" type="reset" value="취소"><br>
	</form>
</div>