<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<style type="text/css" > 


 
 .user {
        background: url("images/memberGroup/user1.jpg") no-repeat;
        border: none;
        width: 450px;
        height: 450px;
        cursor: pointer;
        position: relative; left: 240px; top: 5px;


      }
.artist {
        background: url("images/memberGroup/artist1.jpg") no-repeat;
        border: none;
       width:450px;
        height: 450px; 
        cursor: pointer;
         position: relative; left: 220px; top: 25px;
      }
</style>



<jsp:include page="common/top.jsp" flush="true" />
<B>See-N 과 함께 시작하세요.</B><br><br>
<hr>

<input class="user" type="button" onClick="location.href='join_mem'">
<input class="artist" type="button" onClick="location.href='join_art'" >

<hr>
<jsp:include page="common/bottom.jsp" flush="true" />

</body>
</html>