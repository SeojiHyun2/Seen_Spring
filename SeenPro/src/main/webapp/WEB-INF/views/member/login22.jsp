<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<c:if test="${! empty mesg}">
<script>
alert('${mesg}')</script>

</c:if>  
    
   
<table align="center">
  <tr>  
  	<td>
		<div class="login-page"><div class="form">
		   <form class="login-form" action="login_art" method="get">
		   <hr>
	작가 로그인<br><br><input id="input" type="text" name="artistname" placeholder="아이디"><br>
	   비밀번호<br><br><input id="input" type="password" name="a_passwd" placeholder="비밀번호"><br>
	   	   <br>
		   <input id ="loginbutton" type="submit" value="로그인">
		   <input id ="resetbutton" type="reset" value="취소">
		   </form>
		</div></div>
	</td>
	<td width="20"></td>
	<td>
		<div class="login-page"><div class="form">
	  	   <form class="login-form" action="login_mem" method="get">
		   <hr>
	독자 로그인<br><br><input id="input" type="text" name="userid" placeholder="아이디"><br>
	   비밀번호<br><br><input id="input" type="password" name="m_passwd" placeholder="비밀번호"><br>
	   	   <br>
	       <input id ="loginbutton" type="submit" value="로그인">
		   <input id ="resetbutton" type="reset" value="취소">
		   </form>
		</div></div>
	</td>
	<td>
	 <form class="loginfind" action="mailUI.jsp" method="get">
	       <input id ="loginWonder" type="submit" value="ID/PW 찾기">
	       </form>
	</td>
  </tr>
</table>