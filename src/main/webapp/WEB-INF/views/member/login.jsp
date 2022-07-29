<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="../default/header.jsp" %>
	<div class="wrap" >
		<div align="right">
			<form action="<%=request.getContextPath() %>/member/user_check" method="post">
	<table style="padding-top: 50px;">
		<tr>
		<td> <input type="text" name="id" placeholder="아이디"></td>
		<td rowspan="2"> <input type="submit" value="로그인" style="height: 60px;width: 60px;"></td>
		</tr>
		<tr>
		<td> <input type="password" name="pw" placeholder="비밀번호"> </td>
		</tr>
		
		
		
		</table>
		<br>
				<a href="register" style="color: black;">회원가입</a>
			</form>
		</div>
	</div>
	

</body>
</html>