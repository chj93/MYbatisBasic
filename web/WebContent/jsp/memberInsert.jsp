<%@page import="sist.com.dao.MemberDao"%>
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
<%
request.setCharacterEncoding("EUC-KR");
%>
	<jsp:useBean id="member" class="sist.com.model.MemberBean" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="member"/>
</head>
<body>
	<%=member %>
	<!-- dao 부르기 -->
	<%
	MemberDao.insertJoin(member);
   response.sendRedirect("memberSuccess.jsp");
	
	%>


</body>
</html>