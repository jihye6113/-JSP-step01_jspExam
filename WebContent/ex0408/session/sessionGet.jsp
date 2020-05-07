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
session에 저장된 정보 확인하기<p>
아이디: <%=session.getAttribute("id") %><p>
주소: <%=session.getAttribute("addr") %><p>
취미: <%=session.getAttribute("hobbies") %><p>

<hr>
<h3>application 정보 확인하기</h3>
메세지: <%=application.getAttribute("message") %><p>
주소: <%=application.getAttribute("addr") %><p>
</body>
</html>