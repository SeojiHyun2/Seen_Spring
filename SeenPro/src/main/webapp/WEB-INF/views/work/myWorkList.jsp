<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<style type="text/css" > 

.home {  
 	
 		background: url("images/home.png") no-repeat;
        border: none;
        width: 48px;
        height: 48px;
        cursor: pointer;

 		  }
 		  
 #name:link { color: black; text-decoration: none; font-family: 나눔바른펜 ; font-size: 18px;}
 #name:visited { color: black; text-decoration: none; }
 #name:hover { color: black; text-decoration: underline; }
 
 
 .sweet {
        background: url("images/sweet.png") no-repeat;
        border: none;
        width: 32px;
        height: 32px;
        cursor: pointer;
      }
      
 #day { font-size: 12px; font-family: 나눔바른펜 ;}
     
   
</style>



<a href="main" id="H" ><input type="button" class="home"></a>
<table width="100%" cellspacing="0" cellpadding="0" class="allList">

	<tr>
		<td>
			<table align="center" width="710" cellspacing="0" cellpadding="0" border="0">

				<tr>
					<td height="5"></td>
				</tr>
				<tr>
					<td height="1" colspan="8" bgcolor="CECECE"></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>
				<h1 align="center">${login_art.artistname}님의 작품들</h1>
<!-- 반복시작 -->
<c:forEach var="myWork" items="${workUp}" varStatus="status">
						<td>
							<table style='padding: 15px'>
								<tr>
									<td><a id="name" class="a_black" href="workDetail?wCode=${myWork.wCode}">
										<img src="/images/${myWork.wWork}" border="0" align="center" width="200">
										</a>
									</td> 
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_default" align="center">
										<a id="name" class="a_black" href="workDetail?wCode=${myWork.wCode}"> ${myWork.wName}<br>
										</a> 
										<font color="gray"> ------------------------- </font>
									</td>
								</tr>
									<td id="day" align="center">
									<span>업로드 날짜 :</span>&nbsp;${myWork.inputDay}
									</td>
							</table>
						</td>
						<!-- 한 줄에3개씩 -->
						<c:if test="${status.count %3 ==0}">
							<tr>
								<td height="10">
							</tr>
						</c:if>
<!-- 반복끝-->
					</c:forEach>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="10">
	</tr>
</table>
