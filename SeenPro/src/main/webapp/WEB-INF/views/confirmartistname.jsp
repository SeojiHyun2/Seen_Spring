<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${art_confirmId=='1'}">
	${artistname}는 이미 사용 중인 아이디 입니다.
<br><br><br><form action="Art_Confirm" method="get">
				<input type="text" name="artistname" id="artistname"> <span
					id="result"></span> <input type="submit" name="idCheck"
					value="중복확인" onclick="openConfirmid(event,this.form)"><br>
			</form>
		</c:when>
		<c:when test="${art_confirmId=='0'}">
	${artistname}는 사용 가능한 아이디 입니다.<br><br><br>
	<input type="button" value="닫기" onclick="Idinput()">
		</c:when>
	</c:choose>
<script type="text/javascript">
function Idinput(){
	
	opener.document.getElementById("artistname").value="${artistname}";
	self.close();
	
}

</script>
</body>
</html>