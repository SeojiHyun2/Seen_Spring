<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<form action="sweetChartSource" method="get">
			<input type="submit" value="HightChart 모르겠다, 이거 버튼이니까 그냥 눌러" style="height:50px; width:500px; font-size:20px; font-family:휴먼매직체; color:#999999"> <br>
			<br>
			Photo카테고리의 총 SWEET갯수 : ${photoCount} <br>
			Sound카테고리의 총 SWEET갯수 : ${soundCount} <br>
			Draw카테고리의 총 SWEET갯수 : ${drawCount} <br>
			Video카테고리의 총 SWEET갯수 : ${videoCount} <br>
			Letter카테고리의 총 SWEET갯수 : ${letterCount} <br>
</form>




