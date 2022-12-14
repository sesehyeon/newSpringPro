<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
			uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" 
		value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	* { margin: 0; }
	.wrap { width: 1000px; margin: auto; }
	.header { width: 1000px; }
	.navdiv { width: 100%; background-color: white; }
	nav { background-color: white; width: 1000px;}
	nav ul { list-style: none; display: flex;
			justify-content: end; }
	nav ul li { padding: 10px; }
	
	nav ul li a { text-decoration:none; color:orange; }
	nav ul li a:hover{
	color: orange; border-bottom: 2px solid black;
	transition : all 0.25s; padding-bottom: 3px;
	}
	.title{ text-shadow: 10px 10px 15px black; 
		font-size: 70pt;
		text-align: center;
		margin-top: 0; 
		padding-bottom: 20px;
		color: orange;
		font-family: Gabriola;
	}
	.content { margin-top: 50px; }
</style>

</head>
<body>
	<div class="wrap">
		<div class="header">
			<h1 class="title">CARE LAB</h1>
		</div>
	</div>
	<div class="navdiv">
		<div class="wrap">
			<nav>
			    <hr style="color: orange;">
				<ul>
					<li> <a href="${contextPath }/index">HOME</a> </li>
					<li>
					
					 <c:if test="${loginUser == null }">
					 <a href="${contextPath }/member/login">LOGIN</a> 
					 </c:if>
					 
					 <c:if test="${loginUser != null }">
					 <a href="${contextPath }/member/logout">LOGOUT</a> 
					 </c:if>
					 
					 </li>
					 <li> <a href="${contextPath }/member/memberInfo">회원 정보</a> </li>
					
				</ul>
				<hr style="color: orange;">
			</nav>
		</div>
	</div>
</body>
</html>