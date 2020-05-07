<%@page import="java.net.URLEncoder"%>
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

String dbId = "bjhye", dbPwd="1234";

String userId = request.getParameter("userId");
String userPwd = request.getParameter("userPwd");
String userName = request.getParameter("userName");

if(dbId.equals(userId) && dbPwd.equals(userPwd)){ // Nullpoint exception을 피하기 위해 버그 확률 줄이기 위해 고정되어지는 값을 앞에 주체로 둔다.
	// 새로운 request, response가 생성되어 이동하므로 필요한 정보를 전송한다.
//  	response.sendRedirect("LoginOK.jsp?userName="+URLEncoder.encode(userName, "utf-8"));

	// forward 방식으로 이동하기 - 메소드 이동
	RequestDispatcher rd = request.getRequestDispatcher("LoginOK.jsp");
	rd.forward(request, response);
	// request.getRequestDispatcher("LoginOK.jsp").forward(request, response); // 로 더 많이 쓴다.
	
} else{
	// 자바 중심
	out.println("<script>");
	out.println("alert('"+userName+"님 정보를 확인해주세요.')");
	out.println("history.back()");
	out.println("</script>");
	
	// 메세지 출력
	%>
	<%-- <script>
		// 태그 중심
		alert("<%=userName%>님 정보를 다시 확인해주세요."); // 문자열 안에 넣어야된다.
		//location.href="LoginForm.html";
		history.back(); // 뒤로가기 (비밀번호는 보안 때문에 지워져있지만 나머지 정보들은 그대로 입력되어 있음.)
	</script> --%>
<!-- 	출력 순서 때문에 script에서의 alert와 response.sendRedirect()를 같이 사용할 수 없다. -->
	<%
//  	response.sendRedirect("LoginForm.html");
}
%>
</body>
</html>