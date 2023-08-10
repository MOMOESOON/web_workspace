<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6main.jsp</title>
</head>
<body>
	<!-- 7top.jsp 에 전달되는 파라미터 입니다.
		파라미터이름 username 값은"park" 예시입니다.  -->
<jsp:include page="../day2/7top.jsp">
	<jsp:param value="park" name="username"/>
</jsp:include>
<main>
<h3>:::::::::::: Main :::::::::</h3>
<a href="12useBean.jsp?uname=김떙땡&age=24">useBean 테스트</a>
<form action="12useBean.jsp">
	<input placeholder="이름" name="uname">
	<input placeholder="나이" name="age">
	<input placeholder="주소" name="address">
	<button>제출</button>
</form>
<hr>
<h3>useBean의 scope='request' 테스트</h3>
<form action="13forward.jsp">
	<input placeholder="이름" name="uname">
	<input placeholder="나이" name="age">
	<input placeholder="주소" name="address">

</form>
</main>
<jsp:include page="../day2/8bottom.jsp"/>
</body>
</html>
