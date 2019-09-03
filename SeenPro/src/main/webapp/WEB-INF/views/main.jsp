<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${!empty success}">
  <script>
    alert("${success}");
  </script>
</c:if>



<jsp:include page="common/top.jsp" flush="true" />
<jsp:include page="common/menu.jsp" flush="true" />
<jsp:include page="common/homeList.jsp" flush="true" />
<jsp:include page="common/bottom.jsp" flush="true" />




</body>
</html>