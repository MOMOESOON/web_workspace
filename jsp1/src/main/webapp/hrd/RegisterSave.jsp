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
	
	String temp= request.getParameter("custno");
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	int custno=0;
	if(temp !=null)
		custno = Integer.parseInt(temp);
	
	//파라미터 가져오기
	MemberDao dao = MemberDao.getMemberDao();
	MemberDto dto = new MemberDto(custno,custname,phone,address,null,grade,city);
	dao.insert(dto);		//db 테이블에 반영된 것 확인하세요.
	

%>
</body>
</html>