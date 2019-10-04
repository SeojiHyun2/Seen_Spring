<%@page import="com.dto.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>

<script>

$(document).ready(function(){

	$("#boardList").on("click",function(){
		
	location.href="board";
		
		
	}); // click
	
}); //ready


</script>





<style>


table.repT {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 20px 10px;

}

table.repT td {
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}



</style>



<br>
<div align="center" style="font-size: 14px;">
<table class="repT">
	<c:forEach var="rep" items="${repInfo}" varStatus="status">
	<tr>
		<td width="70px">
			${rep.userid}&nbsp;님&nbsp;:
		</td>
		<td width="400px">
			${rep.reply_content}  
		</td>
		<td width="15px"></td>
		<td>
			${rep.reply_writeday}
		</td>
	<tr>
	</c:forEach>
	
</table>

<br>
<input type="submit" id="boardList" style="align-items: center; border: none; background-color: #ffffff; height: 20px;" value="목록으로 돌아가기"/>
<br>
</div>