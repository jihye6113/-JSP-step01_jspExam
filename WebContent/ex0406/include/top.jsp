<%@page import="java.util.Date"%>
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
<h1>top.jsp 문서입니다.</h1>
<h2><%=new Date().toLocaleString() %></h2>
<!-- 
toLocaleString(): 사용자의 문화권에 맞는 시간표기법으로 년,월,일 시간을 리턴해주는 메서드
return 값은 String 타입의 년, 월, 일, 시간.
 -->
</body>
</html>