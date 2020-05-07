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
<h1>include 지시어</h1>

<!-- include 지시어의 특징은 include된 파일의 소스가
	메인 페이지에 포함되어 서블릿 문서는 한 개만 작성된다.
	그래서, 변수를 공유할 수 있고 반면 동일한 이름의 변수를 include된
	문서에 또 선언할 수 없다. -->
	
<%-- 
	String addr = "제주도";
 --%>

<%@include file="top.jsp" %>
<hr>
<h1>여기는 index.jsp의 부분입니다.</h1>
<hr>
<%@include file="footer.jsp" %>
<!-- 컴파일은 하나만 이루어진다.-->
</body>
</html>