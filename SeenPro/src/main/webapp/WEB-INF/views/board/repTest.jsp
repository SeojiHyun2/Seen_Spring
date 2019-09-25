<%@page import="com.dto.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>

<br>
<table border="1">
	<tr>
	<c:forEach var="workUp" items="${repInfo}" varStatus="status">
		<td>
			${workUp.reply_content}
		</td>
	</c:forEach>
	<tr>
	
</table>