<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>

</style>
<script type="text/javascript"></script>
</head>
<body>
<h1>request Headers 정보 알아보기</h1>
<%
	Enumeration <String> e = request.getHeaderNames();
	
	while(e.hasMoreElements()){
		String name = e.nextElement(); // 요소 꺼내기
		String value = request.getHeader(name);
		out.println(name + ": " + value + "<br>");
	}
%>
</body>
</html>