<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
response.setHeader("Cache-Control","no-store");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style >
input[type=button]{
	cursor: pointer;
	background-color: orange;
	color:green;
	border-radius: 3px;
}
</style>
<script src="../../../js/jquery-3.4.1.min.js"></script>
<script>
	$(function(){
		// 로그아웃 버튼 클릭
		$("input[type=button]").click(function(){
			if(confirm("정말 로그아웃 하시겠습니까?")){
				location.href="Logout.jsp";
			}
		});
	})
</script>
</head>
<body>
<%

	Object sessionName = session.getAttribute("sessionName");
	
	long time = session.getCreationTime();
	
	if(sessionName == null){
		%>
		<script type="text/javascript">
			alert("로그인하고 이용해주세요");
			location.href="LoginForm.jsp";
		</script>
		<%
		} else{
			%>
			<h3>
			[접속시간: <%=session.getAttribute("sessionTime") %>]<p>
			<p style="color:orange"><%=sessionName %>님 로그인 되었습니다.</p>
			<img src="images/common.jpg"/><br>
			<input type="button" value="로그아웃"/>
			</h3>
			<%
		}
		%>

</body>
</html>