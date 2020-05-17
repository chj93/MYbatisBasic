<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
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
<h1>MvcView</h1>
<%-- <c:forEach var="i" items="${str}" varStatus="cnt">
   <c:choose>
      <c:when test="${(cnt.count mod 2) eq 0  or cnt.count ne 3}">
        <h1>
        <c:out value="${i}"></c:out>
        </h1> 
      </c:when>
      <c:otherwise>
        <h5>
        <c:out value="${i}"></c:out>
        </h5>
      </c:otherwise>
   </c:choose>
   
</c:forEach> --%>
   <c:forEach var="j" items="${str}" varStatus="ct">
      <h1>${ct.count}</h1>
      <c:forTokens var="k" items="${j}" delims=".">
      <h3> 
            <font color="blue"> ${k}</font>
      </h3>
      </c:forTokens>
      
   </c:forEach>
</body>
</html>






