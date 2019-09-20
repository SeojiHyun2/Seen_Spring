<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
input[type=text] {
	width: 40%;
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

<hr>
<br>
<table align="center">
	<tr>
		<td width="550px;">
			<form class="Find" action="matching" method="get">
				<h1>아이디 찾기</h1>
				<hr>
				<label for="fname">이름</label><br> <input id="input" type="text"
					name="m_username" placeholder="이름"><br> <label
					for="fname">E-Mail</label><br> <input id="input" type="text"
					name="m_email1" placeholder="이메일"> @ <input id="input"
					type="text" name="m_email2" placeholder="이메일"> <br> <input
					id="Findbutton" type="submit" value="보내기"> &nbsp;<input
					id="resetbutton" type="reset" value="취소">
			</form>
		</td>
		<td width="40px;">
		</td>
		<td width="550px;">
			<form action="passwdSearch" method="get">
				<h1>비밀번호 찾기</h1>
				<hr>
				<label for="fname">이름</label><br> <input id="input" type="text"
					name="m_username" placeholder="이름"><br> <label
					for="fname">E-Mail</label><br> <input id="input" type="text"
					name="m_email1" placeholder="이메일"> @ <input id="input"
					type="text" name="m_email2" placeholder="이메일"> <br> <input
					id="Findbutton" type="submit" value="보내기"> &nbsp;<input
					id="resetbutton" type="reset" value="취소">
			</form>
		</td>
	</tr>
</table>
<br>
<br>
<hr>

