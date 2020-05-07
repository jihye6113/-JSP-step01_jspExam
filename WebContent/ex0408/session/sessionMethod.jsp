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
<h1>HttpSession - session 변수</h1>
<%
	// 세션의 유효시간 설정
	session.setMaxInactiveInterval(30); // 30초 후에 세션 끊김
%>
<h3>
	session.getId(): <%=session.getId() %><p>
	session.getMaxInactiveInterval(): <%=session.getMaxInactiveInterval() %><p>
	session.getCreationTime(): <%=session.getCreationTime() %><p>
	session.getLastAccessedTime(): <%=session.getLastAccessedTime() %><p>
	session.isNew(): <%=session.isNew() %><p>
	
	<hr>
	
	session에 정보 저장하기<p>
	<%
		session.setAttribute("id", "bjhye");
		session.setAttribute("addr", "판교");
		session.setAttribute("hobbies", new String[]{"등산", "수영", "낚시"}); // value 값에 배열도 들어갈 수 있다.
	%>
	
	<hr>
	session에 저장된 정보 확인하기<p>
	아이디: <%=session.getAttribute("id") %><p>
	주소: <%=session.getAttribute("addr") %><p>
	취미: <%=session.getAttribute("hobbies") %><p>
	
	<a href="sessionGet.jsp">session 정보 확인하러 가기</a>
</h3>
</body>
</html>