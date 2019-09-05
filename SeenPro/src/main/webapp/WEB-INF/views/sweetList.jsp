<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<style>
#a{ font-family:타이포_쌍문동; font-size: 18px ; text-align: center; }
</style>


<body>
<p id="a">Your Sweetee</p>

<jsp:include page="common/top.jsp" flush="true" />
<hr>
<jsp:include page="sweet/sweetList.jsp" flush="true" />
<hr>
<jsp:include page="common/bottom.jsp" flush="true" />



</body>
</html>