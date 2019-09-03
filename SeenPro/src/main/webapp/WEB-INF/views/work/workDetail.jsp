<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>

function delWork(wCode,artistname){
	location.href="DeleteWorkServlet?wCode="+wCode + "&artistname="+artistname;
}

</script>

<style type="text/css" > 

.DD { padding-left: 100px; }
#tt { font-size: 18px;}
#ww { font-size: 100px;}
      
      
.donation {
	background: url("images/donation.png") no-repeat;
	border: none;
	width: 32px;
	height: 32px;
	cursor: pointer;
	
}

   
</style>


  <tr>
 	<td><c:forEach var="detail" items="${detail}">
 	
 		<table class="DD">
 			<tr id="ww">
 				<td rowspan="5"><img src="/images/${detail.wWork}" border="0" width="800"></td>
 			</tr>
 			<tr>
 				<td rowspan="5" width="30px">
 			</tr>
 			<tr id="tt" align="center">	
 				<td>"${detail.wName}"</td>
 			</tr>
 			<tr id="tt" align="center">	
 				<td><small>작품설명</small><br>${detail.wDescribe}</td>
 			</tr>
				<tr id="tt" align="center">
 				<td>작가 : ${detail.artistname}</td>
 			</tr>

 			<tr align="center">
 			<td>
 			<FORM name="donationForm" method="GET"action="DonationServlet?wCode=${detail.wCode}">

											<input type="hidden" name="wCode" value="${detail.wCode}">
											<input type="hidden" name="wName" value="${detail.wName}">
											<input type="hidden" name="wWork" value="${detail.wWork}">
											<input type="hidden" name="artistname"
												value="${detail.artistname}"> 
												<input type="submit"
												class="donation" >
										</FORM>
							
							</td>			
 			</tr>
 			
 			
 			
 		
 				<td id="day" align="center">
					<span>업로드 날짜 :</span>&nbsp;${detail.inputDay}
				</td>
 			<tr>
 				<td>
 					<input type="button" value="삭제" onclick="delWork(${detail.wCode}, ${detail.artistname})" >
 				</td>
 			</tr>

 		</table>
 	
 	</c:forEach></td>
  </tr>
</table>
