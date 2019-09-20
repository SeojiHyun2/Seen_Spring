<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<form action="sweetChartSource" method="get">
			<input type="submit" value="HightChart 모르겠어요 그냥 누르세요"> <br>
			Photo카테고리의 총 SWEET갯수 : ${photoCount} <br>
			Sound카테고리의 총 SWEET갯수 : ${soundCount} <br>
			Draw카테고리의 총 SWEET갯수 : ${drawCount} <br>
			Video카테고리의 총 SWEET갯수 : ${videoCount} <br>
			Letter카테고리의 총 SWEET갯수 : ${letterCount} <br>
</form>




