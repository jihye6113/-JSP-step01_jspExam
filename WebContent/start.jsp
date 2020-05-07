<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>쉬는시간</h1>
<%
	// 자바코드 작성
	String name = "배지혜지혜지혜"; // 무조건 초기화가 필요 // 지역변수

	out.println(name+"님 반가워요"); // 브라우저 출력
	
	System.out.println("출력 위치는 콘솔창에"); // 콘솔(서버창)에 출력
%>
<h3>오늘 점심은 뭐 먹지?</h3>
<%
	String menu = "짜장장장장";
%>
<h3>메뉴:<%=menu %></h3>

메소드 호출: <%= test(20)%>

<%! 
	String name; // 전역변수
	int age;
	
	// 메소드 선언 
	public String test(int age){
		System.out.println("test 메소드 호출되었습니다.");
		return age+"살입니다.";
	}
%>

<%
	Date today = new Date();
%>
<%=today.toLocaleString() %>

<hr>
<%
	out.println("졸려요<br>");
	out.println("자고싶다<br>");
	out.println("쉬고싶다<br>");
%>

<hr>
<%
	out.print("졸려요<br>");
	out.print("<h1 style='color: red'>자고싶다</h1>");
	out.print("쉬고싶다<br>");
%>
</body>
</html>