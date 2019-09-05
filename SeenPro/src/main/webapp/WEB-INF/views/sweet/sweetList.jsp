<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
$(".deletbtn").on("click",function(){
	
	console.log()
	var num = $(this).attr("data-num");
	var xxx= $(this);
	
	$.ajax({
		url:'loginCheck/sweetDel',
	type: "get",
	dataType: 'text',
	data:{
		num:num
	},
	success:function(data,status,xhr){
		xxx.parents().filter("table").eq(0).remove();
	
	},
	error: function(xhr,status,error){
		console.log(error);
	}
	});
	
});



$("#delAllSweet").on("click",function(){
	
	type='get',
	$("form").attr("action","loginCheck/delAllSweet");
	$("form").submit();
	
});
	
});

</script>

<style type="text/css">
#name:link {
	color: black;
	text-decoration: none;
	font-family: 나눔바른펜;
	font-size: 18px;
}

#name:visited {
	color: black;
	text-decoration: none;
}

#name:hover {
	color: black;
	text-decoration: underline;
}

#sweet {
	background: url("images/sweet.png") no-repeat;
	border: none;
	width: 32px;
	height: 32px;
	cursor: pointer;
}
</style>





<table width="100%" cellspacing="0" cellpadding="0" class="allList">

	<tr>
		<td>
			<table align="center" width="710" cellspacing="0" cellpadding="0"
				border="0">

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
<form name="myForm">
					<!-- 반복시작 -->

					<c:forEach var="sweetList" items="${sweetList}" varStatus="status">
						<td>
							<table style='padding: 15px' >
							
							<input type="hidden" name="wCode" id="wCode">
			
							
								<tr>
									<td><a href="workDetail?wCode=${sweetList.wCode}" > <img
											src="images/work/${sweetList.wWork}.jpg" border="0"
											align="center" width="200">
									</a></td>
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_default" align="center"><a id="name"
										class="a_black" href="workDetail?wCode=${sweetList.wCode}">
											${sweetList.wName}<br>
									</a> <font color="gray"> ------------------------- </font></td>
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_gray" align="center"><input type="button"
										value="삭제" class="deletbtn" id="sweet"
										data-num="${sweetList.num}"></td>
										
										<input type >

								</tr>
								<tr>
									<td height="5">
								</tr>

							
						</td>
						<!-- 한 줄에1개씩 -->
						<c:if test="${status.count %1 ==0}">
							<tr>
								<td height="10">
							</tr>
						</c:if>
						<!-- 반복끝-->
					</c:forEach>
					
							</form>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="10">
	</tr>


	<tr>
		<a href="javascript:">후원하기</a>
	</tr>
</table>

<button id="delAllSweet">전체 삭제하기</button>
			</form>