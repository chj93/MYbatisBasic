<%@page import="sist.com.dao.SqlSessionFactoryManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
   function inject(){
	   document.getElementById("t1").value='hi';
	   document.getElementById("t2").value='hello';	   
   }
</script>
</head>
<body onload="inject()">
<%=SqlSessionFactoryManager.getSqlSessionFactory() %>
<input type="text" id="t1">
<input type="text" id="t2">

</body>
</html>










