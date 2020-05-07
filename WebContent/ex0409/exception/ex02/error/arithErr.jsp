<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
a{
	text-decoration: none;
	color: black;
}
a:hover{
	background-color: orange;
}
</style>
<script type="text/javascript"></script>
</head>
<body>
<h1>0은 입력하면 안돼요.</h1>

<a href="<%=application.getContextPath() %>/ex0409/exception/ex02/exception_web_Form.jsp">메인으로(찐)</a><p>

application.getContextPath(): <%=application.getContextPath() %><p>

<hr>

<a href="../exception_web_Form.jsp">메인으로(짭)</a><p>

<a href="/ex0409/exception/ex02/exception_web_Form.jsp">메인으로(짭)</a>
</body>
</html>