<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>주문 입력</h3>
<form action="orderConfirm.jsp" method="post">
	<input type="text"  name="email" placeholder="고객이 메일을 입력하세요.">
	<input type="text"  name="pcode" placeholder="상품코드 입력하세요.">
	<input type="number"  name="quantity" placeholder="수량을 입력하세요.">
	<button>주문</button>



</form>
</body>
<!--문제 1번 - "POST" = 많은 양의 정보를 보내기 위해서 사용  -->
<!--문제 2번 - "SUBMIT" = form 태그안에서 버튼은 type=submit 생략된 형태이다.  -->
<!--문제 3번 - "email,pcode,quantity" 을 입력값으로 받아 orderConfirm.jsp에 보내기 위해    -->
</html>


