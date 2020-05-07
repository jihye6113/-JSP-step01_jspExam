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
<h1>Cookie 정보 가져오기</h1>
<%
	// 쿠키 정보 가져오기
	Cookie [] cookies = request.getCookies();

	if(cookies == null){
		out.println("쿠키 정보가 없습니다.");
	} else{
		out.println("쿠키 개수: " + cookies.length+"<br>");
		for(Cookie co : cookies){
			out.println(co.getName() + " = " + co.getValue() + "<br>");
		}
	}
%>
</body>
</html>