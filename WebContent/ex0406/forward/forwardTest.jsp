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
<h1>forward 액션 태그</h1>
<%
	int sum=0;
	for(int i=0; i<=10; i++){
// 		out.println(i+"<br>");
		sum += i; // 누적
	}
%>

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:forward page="forwardResult.jsp">
  <jsp:param value="<%=sum%>" name="total"/>
  <jsp:param value="지혜" name="name"/>
</jsp:forward>
</body>
</html>