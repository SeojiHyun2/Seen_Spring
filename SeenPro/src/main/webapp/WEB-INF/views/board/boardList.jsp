<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$("#list").on("click", function() {

			location.href = "board";
		}); //#list

	}); //ready finish
</script>

<style>





table.type11 {
<<<<<<< HEAD
	border-collapse: separate;
	border-spacing: 1px;
	text-align: center;
	line-height: 1.5;
	margin: 20px 10px;
=======
    border-collapse: separate;
    border-spacing: 1px;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
  	margin : 20px 10px;
>>>>>>> branch 'master' of https://github.com/SeojiHyun2/Seen_Spring.git
}

table.type11 th {
<<<<<<< HEAD
	width: 155px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #ce4869;
=======
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
>>>>>>> branch 'master' of https://github.com/SeojiHyun2/Seen_Spring.git
}

table.type11 td {
<<<<<<< HEAD
	width: 155px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #eee;
}
=======
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    }
>>>>>>> branch 'master' of https://github.com/SeojiHyun2/Seen_Spring.git

<<<<<<< HEAD
table.type11 .even {
	background: #fdf3f5;
=======

#title {
	width: 1200px;
>>>>>>> branch 'master' of https://github.com/SeojiHyun2/Seen_Spring.git
}
<<<<<<< HEAD
=======

.sc {
	height: 40px;
	width: 400px;
	border: 1px solid #777777;
	background: #ffffff;
}

#inp {
	font-size: 16px;
	width: 325px;
	padding: 10px;
	border: 0px;
	outline: none;
	float: left;
}

#sgo {
	width: 50px;
	height: 100%;
	border: 0px;
	background: #555555;
	outline: none;
	float: right;
	color: #ffffff;
}



>>>>>>> branch 'master' of https://github.com/SeojiHyun2/Seen_Spring.git
</style>

<<<<<<< HEAD


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 보기</title>
</head>
<body>
	<form action="boardList">
		검색 <select name="searchName">
			<option value="title">제목</option>
			<option value="userid">작성자</option>
		</select> <input type="text" name="searchValue"> <input type="submit"
			value="검색">
	</form>

	<table class="type11">
=======
	<form action="boardList">
		
		<div class="option">
			<select name="searchName">
				<option value="title">제목</option>
				<option value="userid">작성자</option>
			</select> 
		</div>
		<div class="sc">
			<input type="text" name="searchValue" id="inp"> 
			<input type="submit" value="검색" id="sgo">
		</div>
		
	</form>

	
	
		
<table class="type11" align="center">
>>>>>>> branch 'master' of https://github.com/SeojiHyun2/Seen_Spring.git
		<tr scope="row">
			<th>글번호</th>
			<th id="title">제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
<<<<<<< HEAD

		<c:forEach var="dto" items="${list}">
=======
		
		<c:forEach var="dto" items="${list_a}">
>>>>>>> branch 'master' of https://github.com/SeojiHyun2/Seen_Spring.git
			<tr>
<<<<<<< HEAD
				<td class="even">${dto.boardno}
				</th>
				<td class="even"><a href="boardRetrieve?boardno=${dto.boardno}">${dto.title}</a>
				</th>
				<td class="even">${dto.userid}
				</th>
				<td class="even">${dto.writeday}
				</th>
				<td class="even">${dto.viewcnt }
				</th>
=======
				<td class="even">${dto.boardno}</td>
				<td class="even"><a href="boardRetrieve?boardno=${dto.boardno}">${dto.title}</a></th>
				<td class="even">${dto.userid}</td>
				<td class="even">${dto.writeday}</td>
				<td class="even">${dto.viewcnt }</td>
>>>>>>> branch 'master' of https://github.com/SeojiHyun2/Seen_Spring.git
			</tr>
		</c:forEach>
<<<<<<< HEAD

	</table>
	<a href="write" /> 글쓰기
	</a>
</body>
</html>
=======
		
		</table>
		<a href="write">글쓰기</a>
>>>>>>> branch 'master' of https://github.com/SeojiHyun2/Seen_Spring.git
