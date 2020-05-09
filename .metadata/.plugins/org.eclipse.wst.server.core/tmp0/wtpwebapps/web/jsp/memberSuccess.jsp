<%@page import="sist.com.model.MemberBean"%>
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
<body>
	<h1>${member.name}님 회원가입성공</h1>
	<%= ((MemberBean) session.getAttribute("member")).getName() %>님 성공
    <h2>LOGIN PAGE MOVE</h2>
   
    <%=((MemberBean) session.getAttribute("member")) %>
</body>
</html>