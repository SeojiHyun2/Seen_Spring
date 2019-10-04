<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>

#top{
	font-family: 나눔바른펜;
	font-size: 20px;
}

th {
	width: 100px;
	background-color: #999999;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

td {
	width: 100px;
	padding: 12px 20px;
	margin: 8px 0;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

</style>

<form action="sweetChartSource" method="get">
	<input type="submit" value="See-n SWEET 현황" style="border: none; background-color: #ffffff;" >
	<br>
	<br>
	<br>
	<br>
	<table class=table8_2 align="center">
	<tr>
		<td id="top" colspan="5" style="border: none;">카테고리 별 Sweet Chart</td>
	</tr>
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

	<br>
		<br>
			<br>




