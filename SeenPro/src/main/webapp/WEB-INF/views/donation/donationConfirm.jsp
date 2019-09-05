<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>

function donation(){
	
	location.href="donationDone.jsp";
}


</script>




<style type="text/css">
#name {
	width: 80px;
}

#sample4_postcode {
	width: 60px;
}

#sample4_roadAddress {
	width: 350px;
}

#sample4_jibunAddress {
	width: 80px;
}

#email1 {
	width: 100px;
}

#email2 {
	width: 80px;
}

#phone {
	width: 40px;
}

.aa {
	Background: #F2F2F2;
	font: 15px Arial;
	padding: 3px;
	border: none;
	height: 22px;
}

.Post {
	background: url("images/ADD.JPG") no-repeat;
	border: none;
	width: 60px;
	height: 32px;
	cursor: pointer;
	position: relative;
	top: 17px;
}

.a {
	color: #111111;
	Font: 10px arial;
	Background: #FFFFFF;
	padding: 5px 30px;
	border: 1px solid;
}

form {
	position: relative;
	left: 480px;
	top: 10px;
}

#w {
	text-align: 2;
}
</style>


<form action="" method="get">
	<p id="w">See-N과 함께 꿈을 응원합니다.</p>
	<span id="result"></span> <br> <span>후원자명</span>&nbsp;&nbsp;&nbsp;<input
		id="name" class="aa" type="text" name="m_username"
		value="${login_mem.m_username }"><br>
	<br> <span>전화번호</span>&nbsp;&nbsp;&nbsp; <input id="phone"
		class="aa" type="text" value="${login_mem.m_phone1 }" name="m_phone1">&nbsp;
	<input id="phone" class="aa" type="text" value="${login_mem.m_phone2 }"
		name="m_phone2">&nbsp; -&nbsp;<input id="phone" class="aa"
		type="text" value="${login_mem.m_phone3 }" name="m_phone3"> <br>
	<br> <span>이메일</span>&nbsp;&nbsp;&nbsp;<input class="aa"
		type="text" value="${login_mem.m_email1 }" name="m_email1" id="email1">@
	<input class="aa" type="text" value="${login_mem.m_email2 }"
		name="m_email2" id="email2" placeholder="직접입력"> <br>
	<br>


	<table style='padding: 15px'>
		<tr>
			<td><a href="WorkDetailServlet?wCode=${wDTO.wCode}"> <img
					src="/images/${wDTO.wWork}" border="0" align="center" width="200">
			</a></td>
		</tr>
		<tr>
			<td height="10">
		</tr>
		<tr>
			<td class="td_default" align="center"><a id="name"
				class="a_black" href="WorkDetailServlet?wCode=${wDTO.wCode}">
					${wDTO.wName}<br>
			</a> <font color="gray"> ------------------------- </font></td>
		</tr>
		<tr>
			<td height="10">
		</tr>
		<tr>

		</tr>
		<tr>
			<td height="5">
		</tr>
		<tr>
			<td class="td_black" align="center"><font color="black"
				face="나눔바른펜"> <strong>${wDTO.artistname} 작가님의 작품입니다.
				</strong></font></td>
		</tr>
	</table>
	</td>
	<!-- 한 줄에3개씩 -->
	<c:if test="${status.count %3 ==0}">
		<tr>
			<td height="10">
		</tr>
	</c:if>
	<!-- 반복끝-->

	</tr>
	</table>
	</td>
	</tr>
	<tr>
		<td height="10">
	</tr>

	
		
		<tr><td><span>후원 금액</span> <input type="text" class="aa"
				name="money">원</td>	</tr>
			<tr><td>
				<a href="donationDone">무통장입금</a>
				<a href="donationDone">신용카드</a>
				<a href="donationDone">휴대폰 결제</a>
				
			</td></tr>


	</table>





















</form>