<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="../default/header.jsp" %>

<div class="wrap">
<h3>회원 정보</h3>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<table border="1">
	<tr>
	<td>아이디</td><td>비밀번호</td><td>주소</td>
	</tr>
	<c:forEach var="dto" items="${list }">
	<tr>
	<td><a href="info?id=${dto.id }">${dto.id }</a></td><td>${dto.pw }</td><td>${dto.addr }</td>
	</tr>
	
	</c:forEach>


</table>

</div>

<%@ include file="../default/footer.jsp" %>
</body>
</html>