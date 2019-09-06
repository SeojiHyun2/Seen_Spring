<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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


</head>
<body>

<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  font-family : Suntech;
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
#click {
  font-family: "Suntech", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Suntech", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
#click{
 font-family: "Suntech", sans-serif;
  outline: 0;
  background: #DDDDDD;
  width: 50%;

  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
  color: #333333;
  
  text-decoration: none;
}

</style>



<jsp:include page="common/top.jsp" flush="true" />


<table align="center">
  <tr>  
	<td>
		<div class="login-page"><div class="form">
	  	   <form class="login-form">
		   		<a href="myWorkList" id="click">내작품 보기</a>
		   		<a href="art_mypage" id="click">내정보 보기</a>
		   </form>
		</div></div>
	</td>
</tr>
</table>
<hr>
<jsp:include page="common/bottom.jsp" flush="true" />

</body>
</html>