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
<%
// parameter 한글인코딩 설정
request.setCharacterEncoding("utf-8");

String addr="대구";
%>
<h1>액션 태그 - include 개념</h1>


<jsp:include page="top.jsp" /> <!-- 서버에서 실행되는 코드로, html 코드와는 다르다. 문법이 굉장히 엄격-->
<hr>
여기는 index 영역입니다.
<hr color="orange">

<jsp:include page="footer.jsp">
	<jsp:param name="address" value="<%=addr %>"/>
	<jsp:param name="id" value="bjh"/>
</jsp:include>

<!-- 실행을 하면 서블릿이 각각 하나씩 생겨, 3개가 만들어진다.-> 변수 공유를 하지 않음 -->
</body>
</html>