<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원정보 수정</title>
<link rel="stylesheet" href="../../css/MemberList.css?v=3">
<link rel="stylesheet" href="../../css/Layout.css?v=3">
</head>
<body>
	<header><!-- header -->
	<h2>홈쇼핑 회원관리 ver1.0</h2>
	</header>
	<nav>
		<ul>
		
			<li><a href="MemberRegister.jsp">회원등록</a></li>
			<li><a href="MemberUpdate.jsp">회원목록조회/수정</a></li>
			<li><a href="memberSales.html">회원매출조회</a></li>
			<li><a href="Layout.html">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<h3>홈쇼핑 회원 정보 수정</h3>
		<%-- %{] 는 getAttribute() 역할을 합니다. --%>
		
		<%-- <jsp:useBean id="member" class="sample.dto.MemberDto" scope="request"/>--%>
		<form action ="UpdateSave.jsp" method="post">
		
		<!-- 이후 자바코드 작성 할 때 가독성, 편리성을 위해
		input name 이름은 DTO 클래스 변수명과 동일하게 하세요.
		UpdateSave.jsp 의 파라미터 저장 변수도 DTO와 동일하게 하세요. -->
		<table>
         <tr>
            <td><label for="Number">회원번호(자동발생)</label></td>
            <!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value에서 출력하기. -->
            <td><input type="text" id="Number" value="${param.custno }" >
            <input type="hidden" name="custno" value="< ${param.custno }">
            </td>
         </tr>
         <tr>
            <td><label for="Name">회원성명</label></td>
            <td><input type="text" id="Name"  name="custname" value="${member.custname}">
            </td>
         </tr>
         <tr>
            <td><label for="Phone">회원전화</label></td>
            <td><input type="text" id="Phone" value="${member.phone}" name="phone">
            </td>
         </tr>
         <tr>
            <td><label for="Adress">회원주소</label></td>
            <td><input type="text" id="Adress" value="${member.address}" name="address">
            </td>
         <tr>
            <td><label for="Date">가입일자</label></td>
            <td><input type="date" id="Date" value="${member.joindate }" name="joindate">
            </td>
         <tr>
            <td><label for="Grade">고객등급[A:VIP,B:일반,C:직원]</label></td>
            <td><input type="text" id="Grade" value="${member.grade}" name="grade">
            </td>
         <tr>
            <td><label for="Citycode">도시코드</label></td>
            <td><input type="text" id="Citycode" value="${member.city}" name="city">
            </td>
         </tr>
         <tr>
         	<td colspan="2">
         	<button>수정</button>
         	<button type="button" onclick="location.href='MemberList.html">조회</button>
         	
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