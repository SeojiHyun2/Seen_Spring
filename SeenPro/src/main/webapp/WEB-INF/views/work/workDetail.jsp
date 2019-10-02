<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<script type="text/javascript">

function delWork(wCode,artistname){
	location.href="DeleteWorkServlet?wCode="+wCode + "&artistname="+artistname;
}

//$(document).ready(function(){
	//$(".donation").on("click",function(){

$(document).ready(function(){
	$(".donation").on("click",function(){

		//var wCode = $(this).attr("data-num");
		//location.href="loginCheck/donationConfirm?wCode"+wCode;
		//console.log(wCode);
	//});
//}

		var wCode = $(this).attr("data-num");
		location.href="loginCheck/donation?wCode"+wCode;
	});
});

</script>

<style type="text/css">

#p{
	font-weight: bold;
	font-size: 20px;
}

#n{
	font-weight: bold;
	font-size: 20px;
}

#d{
	font-size: 12px;
}

#dc{
	font-family: 맑은고딕;
}

table{
	color: #94949e;
}

</style>


<tr>
	<td>

		<table align="center" style="width: 1200px;">
			<tr>
				<td colspan="3" align="left" id="p">"${detail.wName}"</td>
			</tr>
			<tr>
				<td colspan="2" align="left" id="n">${detail.artistname}</td>
				<td colspan="1" align="right" id="d">${detail.inputDay}</td>
			</tr>	
			<tr>
				<td id="dc"><small>Artist Comment <br>-<br></small>${detail.wDescribe}</td>
				<td width="40px;"></td>
				<td rowspan="5"><img src="/images/${detail.wWork}" border="0"
					width="800"></td>
			</tr>
		</table>
		<br>
		<table align="center">
			<tr>
				<td colspan="2">
					<FORM name="donationForm" method="GET" action="loginCheck/donationConfirm">
						<c:if test="${! empty login_mem}">
							<input type="hidden" name="wCode" value="${detail.wCode}">
							<input type="hidden" name="wName" value="${detail.wName}">
							<input type="hidden" name="wWork" value="${detail.wWork}">
							<input type="hidden" name="artistname" value="${detail.artistname}"> 
							<input type="submit" value="후원하기" class="donation">
						</c:if>
					</FORM>
				</td>
			
				<td>
					<form action="workDel">
						<c:if test="${login_art.artistname==detail.artistname}">
               				 <input type="submit" value="삭제" >
               		   		 <input type="hidden" name="wCode" value="${detail.wCode}">
               		 	 	 <input type="hidden" name="artistname" value="${detail.artistname}"> 
               		 	</c:if> 
             		</form>
				</td>
				<tr>
		</table>

	</td>
</tr>

