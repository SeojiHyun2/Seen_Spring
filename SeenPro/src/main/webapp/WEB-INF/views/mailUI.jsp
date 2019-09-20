<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:if test="${! empty notmatch}">
	<script>
		alert('${notmatch}')
	</script>
</c:if>
<%
	session.removeAttribute("notmatch");
%>
</head>
<body>

<jsp:include page="common/top.jsp" flush="true" />
<jsp:include page="mail/mail.jsp" flush="true" />
<jsp:include page="common/bottom.jsp" flush="true" />


</body>
</html>