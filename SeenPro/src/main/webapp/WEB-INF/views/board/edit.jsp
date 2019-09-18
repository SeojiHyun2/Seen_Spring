<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>

<script type="text/javascript">
        
        $(document).ready(function(){
       
      
        	 $("#save").on("click",function(){
           	  
           	  if($("#subject").val().trim() == ""){
                     alert("제목을 입력하세요.");
                     $("#subject").focus();
                     return false;
                 }
    	  
    	  $("#list").on("click", function(){
      		
      		location.href="board";
      	}); //#list
        
        });
        
        
     
        	
        	
   
        
</script>


<style>
.A {
	align: center;
}
</style>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	

	<h1>궁금증 풀어라</h1>

	<form action="loginCheck/write">
		<table align="center">
			<tr>
				<td>제목: <input type="text" id="title" name="title" />

				</td>
			</tr>
			<tr>
				<td><textarea name="content" id="content" rows="10" cols="80"></textarea>
				</td>
			</tr>
			<tr>
				<td align="center"><br>
				<input type="submit" id="save" value="저장">
				
					</form>
					<button id="list" name="list">목록으로 가기</button></td>
			</tr>
		</table>
		</div>
</body>
</html>