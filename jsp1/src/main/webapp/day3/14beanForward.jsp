<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14beanForward.jsp</title>
</head>
<body>
<h3>요청 전달 받기</h3>
<p>13forward.jsp로부터 요청을 전달을 받은 페이지 입니다.
*주의 : 실행은 13forward.jsp에서 합니다.</p>
<ul>
	<li>url 은 무엇인가요?</li>
	<li>화면에 표시되는 페이지는 무엇인가요?</li>
</ul>
<p>요청이 전달될 때, url 은 변경되지 않습니다. 그리고 요청을 전달한 13forward.jsp
그리고 요청을 전달한 13forward.jsp 의 출력은 버퍼에서 삭제되므로 웹페이지에 
표시되지 않습니다. jsp:useBean scope="request" 로 하면 자바빈 데이터가
요청과 함께 전달됩니다.
</p>
<!-- 자바빈을 사용(가져오기)하는 useBean 
scope="request" 를 작성하지 않으면 pagwScope 에서 reqDto 빈을 찾습니다.-->
<jsp:useBean id="reqDto" class="sample.dto.MyUser" scope="request"/>
<% out.println(reqDto); %>
</body>
</html>