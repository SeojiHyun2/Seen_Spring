<%@page import="com.dto.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>


<br>
<table border="1">
	<c:forEach var="rep" items="${repInfo}" varStatus="status">
	<tr>
		<td>
			${rep.userid}
		</td>
		<td>
			${rep.reply_content}  
		</td>
		<td>
			${rep.reply_writeday}
		</td>
	<tr>
	</c:forEach>
	
</table>


<input type="submit" id="list" name="list" value="목록가기" />