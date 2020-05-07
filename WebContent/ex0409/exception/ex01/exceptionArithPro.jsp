<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="error.jsp"%>
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
<%
	// 넘어오는 숫자 받아서 그 숫자로 나눈다
	int num = Integer.parseInt(request.getParameter("num1"));
	int result = 100/num;
%>
<h1>
	100 / <%=num %> = <%=result %>
</h1>
</body>
</html>