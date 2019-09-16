<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form class="Find" action="matching" method="get">
		<h1>아이디 찾기</h1>
		<hr>
		이름<br><input id="input" type="text" name="m_username"
			placeholder="이름"><br> <br> E-Mail<br> <input
			id="input" type="text" name="m_email1" placeholder="이메일"> <input
			id="input" type="text" name="m_email2" placeholder="이메일"> <br>
		<input id="Findbutton" type="submit" value="보내기"> <input
			id="resetbutton" type="reset" value="취소">
	</form>
	<br>
	<br>
	<br>


	<form action="passwdSearch" method="get">
		<h1>비밀번호 찾기</h1>
		<hr>
		이름<br> <input id="input" type="text" name="m_username"
			placeholder="이름"><br> <br> E-Mail<br> <input
			id="input" type="text" name="m_email1" placeholder="이메일"> <input
			id="input" type="text" name="m_email2" placeholder="이메일"> <br>
		<input id="Findbutton" type="submit" value="보내기"> <input
			id="resetbutton" type="reset" value="취소">
	</form>

</body>
</html>