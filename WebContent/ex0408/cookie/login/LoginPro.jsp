<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.Date" %>
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
String dbId = "bjhye", dbPwd="1234";

String userId = request.getParameter("userId");
String userPwd = request.getParameter("userPwd");
String userName = request.getParameter("userName");


if(dbId.equals(userId) && dbPwd.equals(userPwd)){
	// 인증된 사용자의 정보를 session에 저장한다.
	session.setAttribute("sessionName", userName);
	session.setAttribute("sessionTime", new Date().toLocaleString());
	
	// 쿠키에 현재 인증된 사용자의 id를 저장한다.
		Cookie cookie = new Cookie("lastId", userId);
		cookie.setMaxAge(60*60*24*365); //365일
		cookie.setPath("/"); // 모든 문서에서 사용할 수 있게 한다.
		
		response.addCookie(cookie);
		
	// 이동하기
	response.sendRedirect("LoginOK.jsp");
	
} else{
	// 자바 중심
	out.println("<script>");
	out.println("alert('"+userName+"님 정보를 확인해주세요.')");
	out.println("history.back()");
	out.println("</script>");
	%>
	<%
	}
	%>
</body>
</html>