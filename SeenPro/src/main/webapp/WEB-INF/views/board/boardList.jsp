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

    border-collapse: separate;
    border-spacing: 1px;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
  	margin : 20px 10px;

}

table.type11 th {

    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}

table.type11 td {

    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    }


#title {
	width: 1200px;

}


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



</style>

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
      <tr scope="row">
         <th>글번호</th>
         <th id="title">제목</th>
         <th>작성자</th>
         <th>작성일</th>
         <th>조회수</th>
      </tr>
      
      <c:forEach var="dto" items="${list_a}">
         <tr>
            <td class="even">${dto.boardno}</td>
            <td class="even"><a href="boardRetrieve?boardno=${dto.boardno}">${dto.title}</a></th>
            <td class="even">${dto.userid}</td>
            <td class="even">${dto.writeday}</td>
            <td class="even">${dto.viewcnt }</td>
         </tr>
      </c:forEach>
      
      </table>
      <a href="write">글쓰기</a>



