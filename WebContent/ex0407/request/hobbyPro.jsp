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
// post 방식 한글 인코딩 처리 --> Filter의 개념 적용
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name"); 
String age = request.getParameter("age");
// // 하나의 name으로 값 여러 개 받기
// String hobbies [] = request.getParameterValues("hobby"); // 이렇게만 하면 주소값이 나온다.
// // 개선된 for문 사용
// for(String h: hobbies){
// 	out.print(h + ", ");
// }
String ip = request.getRemoteAddr(); 
%>
<h3>
이름: <%=name %><br> <!-- <%=request.getParameter("name") %>; 도 가능하다. -->
나이: <%=age %><br> 
취미: 
<% 
//하나의 name으로 값 여러 개 받기
String hobbies [] = request.getParameterValues("hobby"); // 이렇게만 하면 주소값이 나온다.
//개선된 for문 사용
for(String h: hobbies){
	out.print(h + ", ");
}
// out.print(hobbies);
%>
<br> 
접속자 IP: <%=ip %><br> 
</h3>
</body>
</html>