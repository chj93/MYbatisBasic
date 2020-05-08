<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<%
	String id=request.getParameter("id");
	String checker=request.getParameter("checker");
	Cookie cookie=new Cookie("id",id);
/* 	if(checker.equals(null)){
		cookie.setMaxAge(0);
		response.sendRedirect("cookLogin.jsp");
	}else{
		//Cookie cookie2=new Cookie("checker",checker);
		cookie.setMaxAge(30);
		response.addCookie(cookie);
		//response.addCookie(cookie2);
	} */
    if(checker!=null&& checker.equals("on") ){
    	cookie.setMaxAge(60);
    }else{
    	cookie.setMaxAge(0);
    }
    response.addCookie(cookie);	
%>
<%-- 
<%=id %>
<%=checker %> 
--%>
</body>
</html>