<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//메소드 방식이 POST 일 때는 인코딩이 꼭 필요합니다.
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("Name");
	String phone = request.getParameter("Phone");
	String adress = request.getParameter("adress");
	String date = request.getParameter("Date");
	String grade = request.getParameter("Grade");
	String citycode = request.getParameter("Citycode");
	out.print(name);