<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:if test="${! empty passwd}">
<script>
alert("${passwd}");
</script>
<%session.removeAttribute("passwd"); %>
</c:if>

 <c:if test="${! empty passwdok}">
<script>
alert("${passwdok}");
</script>
<%session.removeAttribute("passwdok"); %>
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



<form action="loginCheck/passwdMyChange" method="get">
	기존 비밀번호:<input type="password" name="m_passwd" id="m_passwd"><br>
	
	새 비밀번호:<input type="password" name="m_newpasswd" id="passwd"><br>
	새 비밀번호확인:<input type="password" name="m_newpasswd2" id="passwd2"
		onkeyup="check()"> <span id="result2"></span>
		<input class="a"type="submit" value="수정">
<input class="a" type="reset" value="취소">
</form>