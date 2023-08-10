<%@page import="sample.dto.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10scopeTest.jsp</title>
</head>
<body>
<h3>scope 테스트</h3>
<hr>
<h4>application</h4>
<jsp:useBean id="appDto" class="sample.dto.MyUser" scope="application"/>
<%out.println(appDto); %>
<h4>session</h4>
<!--sessionScope에 저장된 sessionDto 자바빈을 가져오기  -->
<jsp:useBean id="sessionDto" class="sample.dto.MyUser" scope="session" />
<%out.println(sessionDto); %>
<ul>
	<li>${sessionDto.uname }</li>
	<li>${sessionDto.age }</li>
	<li>${sessionDto.address }</li>
</ul>

<h4>????</h4>
<jsp:useBean id="dto" class="sample.dto.MyUser"/>
</body>
</html>