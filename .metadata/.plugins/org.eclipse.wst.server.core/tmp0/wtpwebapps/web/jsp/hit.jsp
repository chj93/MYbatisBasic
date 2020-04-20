<%@page import="sist.com.dao.AppleDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
     int no=Integer.parseInt(request.getParameter("no"));
     String pageData=request.getParameter("page");
     AppleDao.updateHit(no);
     response.sendRedirect("info.jsp?no="+no+"&page="+pageData);
     
  
%>
</head>
<body>

</body>
</html>