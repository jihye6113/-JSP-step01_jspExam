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
<h1>쿠키 정보 저장하기</h1>
<%

	// 쿠키 생성
	Cookie co1 = new Cookie("id", "bjhye");
	Cookie co2 = new Cookie("age", "23"); // 숫자도 문자로 넣는다.
	
	// 옵션 설정
	co1.setMaxAge(60*60*24); // 1일
	co2.setMaxAge(60*60*24*365); // 1년 (0은 삭제, -1은 저장 안됨)
	co1.setPath("/"); // 모든 문서에서 쿠키 사용 가능함
	
	response.addCookie(co1);
	response.addCookie(co2);
%>
<h2>저장 완료</h2>
<a href="cookieGet.jsp">쿠키 확인하러 가기</a>
</body>
</html>