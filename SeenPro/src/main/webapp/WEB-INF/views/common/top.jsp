<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:choose>
	<c:when test="${! empty cant}">
		<script>alert('${cant}')</script>
	</c:when>
</c:choose>
	<%session.removeAttribute("cant"); %>
	
	<c:choose>
	<c:when test="${! empty can}">
		<script>alert('${can}')</script>
	</c:when>
</c:choose>
	<%session.removeAttribute("can"); %>
	
	
	
	
<style type="text/css" > 

 #T:link { color: black; text-decoration: none; font-family: A Bebedera ; font-size: 27px; }
 #T:visited { color: black; text-decoration: none; }
 #T:hover { color: black; text-decoration: none; }
 
 
 .join { text-align: right; margin: 1cm; }
 #J:link { color: gray; text-decoration: none; font-family: Suntech ; font-size: 18px;}
 #J:visited { color: gray; text-decoration: none; }
 #J:hover { color: gray; text-decoration: underline; }
 #A {font-family:타이포_쌍문동 굵게; font-size: 18px;}
</style>


<a href="MainServlet" id="T"><h1>&nbsp;See-N</h1></a>

<p class="join">

<c:if test="${empty mem_login and empty art_login }">

<a href=" LoginUIServlet" id="J">LOGIN</a><br>
<a href="joinUI" id="J">JOIN</a>
</c:if>




<c:choose>
	<c:when test="${! empty mem_login}">
	반갑습니다 ${mem_login.m_username }님!<br>
	<br> 
	<a href="MypageServlet" id="J">mypage</a><br><br>
	<a href="LogOutServlet" id="J">로그아웃</a>
	</c:when>
	<c:when test="${! empty art_login}">
	반갑습니다 ${art_login.a_username }님!<br>
	<br>
	<a href="MypageServlet" id="J">mypage</a><br>
	<a href="InputWorkUIServlt" id="J">작품올리기</a><br>
	<a href="LogOutServlet" id="J">로그아웃</a>
	</c:when>
</c:choose>

</p>


