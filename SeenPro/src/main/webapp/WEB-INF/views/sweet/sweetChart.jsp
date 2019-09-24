<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
.table8_2 table {
	width: 100%;
	margin: 15px 0
}

.table8_2 th {
	background-color: #505050;
	background: -o-linear-gradient(90deg, #505050, #9b9b9b);
	background: -moz-linear-gradient(center top, #505050 5%, #9b9b9b 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #505050
		), color-stop(1, #9b9b9b));
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#505050',
		endColorstr='#9b9b9b');
	color: #FFFFFF
}

.table8_2, .table8_2 th, .table8_2 td {
	font-size: 0.95em;
	text-align: center;
	padding: 4px;
	border: 1px solid #efefef;
	border-collapse: collapse
}

.table8_2 tr:nth-child(odd) {
	background-color: #c4c4c4;
	background: -o-linear-gradient(90deg, #c4c4c4, #f3f3f3);
	background: -moz-linear-gradient(center top, #c4c4c4 5%, #f3f3f3 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c4c4c4
		), color-stop(1, #f3f3f3));
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#c4c4c4',
		endColorstr='#f3f3f3');
}

.table8_2 tr:nth-child(even) {
	background-color: #fdfdfd; 
}
</style>

<form action="sweetChartSource" method="get">
	<table class=table8_2 align="center">
		<tr>
			<th>Photo</th>
			<th>Draw</th>
			<th>Video</th>
			<th>Sound</th>
			<th>Letter</th>
		</tr>
		<tr>
			<td>${photoCount} Point</td>
			<td>${drawCount} Point</td>
			<td>${videoCount} Point</td>
			<td>${soundCount} Point</td>
			<td>${letterCount} Point</td>
		</tr>
	
	</table>
</form>




