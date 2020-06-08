<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
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
 <%--  <%
     String []s=request.getParameterValues("color");
     for(String c:s){
       out.print(c+"<br>");	 
     }
  %> --%>
     <c:forEach var="i" items="${paramValues.color}">
          ${i }<br>
     </c:forEach>
</body>
</html>













