<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" href="Layout.css">
<link rel="stylesheet" href="MemberList.css?v=3">
</head>
<body>
	<header>	<!-- header -->
	<h2>홈쇼핑 회원관리 ver1.0</h2>
	</header>
	<nav>	<!--nav-->
		<ul>
			<li><a href="MemberRegister.jsp">회원등록</a></li>
			<li><a href="MemberUpdate.jsp">회원목록조회/수정</a></li>
			<li><a href="memberSales.html">회원매출조회</a></li>
			<li><a href="Layout.html">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<h3>홈쇼핑 회원 등록</h3>
		<form action ="RegisterSave.jsp" method="post">
		 <table>
         <tr>
            <td><label for="Number">회원번호(자동발생)</label></td>
            <td><input type="text" id="Number" value="" name="custno">
            </td>
         </tr>
         <tr>
            <td><label for="Name">회원성명</label></td>
            <td><input type="text" id="Name" value="" name="custname">
            </td>
         </tr>
         <tr>
            <td><label for="Phone">회원전화</label></td>
            <td><input type="text" id="Phone" value="" name="phone">
            </td>
         </tr>
         <tr>
            <td><label for="Adress">회원주소</label></td>
            <td><input type="text" id="Adress" value="" name="address">
            </td>
         <tr>
            <td><label for="Date">가입일자</label></td>
            <td><input type="datetime-local" id="Date" value="" name="joindate" disabled>
            </td>
         <tr>
            <td><label for="Grade">고객등급[A:VIP,B:일반,C:직원]</label></td>
            <td><input type="text" id="Grade" value="" name="grade">
            </td>
         <tr>
            <td><label for="Citycode">도시코드</label></td>
            <td><input type="text" id="Citycode" value="" name="city">
            </td>
         </tr>
         <tr>
         	<td colspan="2">
         	<button >등록</button>
         	<button type="button" onclick="dd">조회</button>
         	</td>
         	</tr>
         	</table>
         	</form>
         	</section>
	<footer>
	<h4>HRDKOREA Copyright@2016 All rights reserved. Human Resources Development Service of Korea.</h4>
	</footer>
</body>
</html>