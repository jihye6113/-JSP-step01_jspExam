<%@page import="java.util.concurrent.atomic.AtomicInteger"%>
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
<%--

	// application에 저장된 count 수를 가져온다.
	Object obj = application.getAttribute("count");
	
	if(obj==null){ // 한 번도 저장한 적이 없다.
		application.setAttribute("count", 0);
		obj = application.getAttribute("count");
	}
	
	// 읽어온 값에 +1을 하고 다시 저장한다.
	int count = (Integer)obj; // 오토박싱 사용
	//int count = Integer.parseInt((String)obj);//연주님코드
	if(session.isNew()){
//	 	int count = (int)obj;
		count++;
		
		application.setAttribute("count", count);
	}
	// 최종값을 출력한다.
--%>

<%
	// 동시다발적으로 접속했을 때의 효율성을 위해 원자성을 갖고 있는 AtomicInteger 사용
	//application에 저장된 count 수를 가져온다.
	Object obj = application.getAttribute("count");
	
	if(obj==null){ // 한 번도 저장한 적이 없다.
		application.setAttribute("count", new AtomicInteger(1));
		obj = application.getAttribute("count");
	}
	
	AtomicInteger it = (AtomicInteger)obj;
	int count = it.get(); // 현재 값 가져오기
	if(session.isNew()){
		count = it.incrementAndGet();
	}
%>

<h3>방문자 수: <%=count %> 명</h3>
</body>
</html>