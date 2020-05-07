<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(function(){
	
	});
</script>
</head>
<%
	String color=request.getParameter("color");
	Cookie cookie=new Cookie("color",color);
	cookie.setMaxAge(15);
	//15초동안 쿠키 살아있도록
	
	response.addCookie(cookie);
	response.sendRedirect("cookie3.jsp");
%>


<body>
	<%-- ${param.color} --%>
</body>
</html>