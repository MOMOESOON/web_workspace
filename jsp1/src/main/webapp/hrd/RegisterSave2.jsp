<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>


<jsp:useBean id="dto" class="sample.dto.MemberDto" />
	<jsp:setProperty property="*" name="dto"/>
<hr>
<jsp:getProperty property="custname" name="dto"/><br>
<jsp:getProperty property="phone" name="dto"/><br>
<jsp:getProperty property="address" name="dto"/><br>

<%
	out.print(dto);

	//파라미터 값으로 dto 객체 생성
	MemberDao dao = MemberDao.getMemberDao();
	dao.insert(dto);
%>	
<script type="text/javascript">
	alert('회원 등록이 완료되었습니다.')
	location.gref='MemberList.jsp'

</script>