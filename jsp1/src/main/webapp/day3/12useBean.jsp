<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--자바빈을 생성하는 액션태그 입니다. -->
<jsp:useBean id="dto" class="sample.dto.MyUser">
</jsp:useBean>
<!-- 위에서 생성된 자바빈에 프로퍼티(클래스의 변수) 값을 저장 
	getParameter 와 setXXXX 메소드를 실행합니다.
	-->
<!-- name="dto"는 useBean태그의 id 값으로 정합니다. -->
<jsp:setProperty property="uname" name="dto" param="uname"/>
myuser 이름 : <jsp:getProperty property="uname" name="dto"/>
			<!--getXXXX 메소드 역할 -->
나이 : <jsp:getProperty property="age" name="dto"/>
주소 : <jsp:getProperty property="address" name="dto"/>
<ul>
	<li>${dto.uname }</li>
	<li>${dto.age }</li>
	<li>${dto.address }</li>
</ul>
<hr>



<!--10scopeTest.jsp에서도 아래 2개의 자바빈을 가져오는지 확인해봅시다.  -->
<!--자바빈즈 하나 더 만들기 -->
<jsp:useBean id="appDto" class="sample.dto.MyUser" 
							scope="application"/>
<jsp:setProperty property="*" name="appDto"/>
<jsp:useBean id="sessionDto" class="sample.dto.MyUser" 
								scope="session"/>
<jsp:setProperty property="*" name="sessionDto"/>
<%
	out.print(appDto);
	out.print("<br>");
	out.print(sessionDto);
%>
<a href="10scopeTest.jsp">10scopeTest.jsp로 확인하러 가기</a>
</body>
</html> 