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

.wrap {
	position: inherit;
	top: 50%;
	left: 50%;
	margin-top: -86px;
	margin-left: -89px;
	text-align: center;
}

#aa {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	margin: 20px auto;
	max-width: 180px;
	text-decoration: none;
	border-radius: 4px;
	padding: 20px 30px;
	font-family: 나눔바른펜;
}

.button {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
}


</style>



<jsp:include page="common/top.jsp" flush="true" />
<br>
<br>
<br>
<div class="wrap">
  	<a href="main" class="button" id="aa"> SWEET Chart </a>
  	<a href="mem_mypage" class="button" id="aa"> 내정보 보기 </a>
</div>

<br>
<br>
<hr>
<jsp:include page="common/bottom.jsp" flush="true" />


</body>
</html>