<%@page import="sample.dao.ProductDao"%>
<%@page import="sample.dto.ProductDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="org.apache.tomcat.dbcp.pool2.impl.DefaultEvictionPolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 처리기능 -->
<% 
   String path = "d:\\iclass0419\\upload";
   int size = 10*1024*1024;      // 파일 전송 용량 최대 크기
   
   // 파일 업로드에서는 일반적인 request 가 아닌 MultipartRequest 를 사용합니다.
   //                        --> 외부 라이브러리 필요합니다.
   MultipartRequest multiRequest = new MultipartRequest(
		   	request,			//원래의 요청 객체
		   	path,				//업로드 경로
		   	size,				//파일 최대 크기
		   	"UTF-8",			//파일명 인코딩
		   	new DefaultFileRenamePolicy()	//중복된 파일이름 변경 정책
		   	
		   
		   );
   
   String pname = multiRequest.getParameter("pname");
   String price = multiRequest.getParameter("price");
   String picture  = multiRequest.getFilesystemName("picture");
   
   //여기까지 실행결과 확인
   out.print(pname);out.print("<br>");
   out.print(price);out.print("<br>");
   out.print(picture);out.print("<br>");
   
   ProductDto dto = new ProductDto(pname,Integer.parseInt(price),null,picture);
   ProductDao dao = ProductDao.getProductDao();
   int result = dao.insert(dto);
%>
<scpript type="text/javascript">
	alert('상품등록이완료되었습니다.);
	location.href='
</body>
</html>