<%@page import="java.io.Console"%>
<%@page import="sist.com.dao.AppleDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
	<%
	String id=request.getParameter("user_id");
	String pw=request.getParameter("user_passwd");
	
	 if(AppleDao.inCheckProcess(id, pw)){
		session.setAttribute("id", id);
		session.setMaxInactiveInterval(2000);
		//60초동안 머물수있게
		response.sendRedirect("edit.jsp");
		//입력 페이지로 이동
	}else{
		response.sendRedirect("adminLogin.jsp");
	} 
	
	
	
	%>


</head>
<body>

</body>
</html>