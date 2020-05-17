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
<h1>VIEW2</h1>
   <c:set var="size" value="${functions:length(people) }"></c:set>    
   <%-- <c:out value="${size}"></c:out> --%>
   
   <c:forEach var="i" items="${people}" varStatus="c">
      ${c.count}:${i.name}  :  ${i.age }  : ${i.process.msg}<br>   
   </c:forEach>
   <%-- <c:forEach var="i" items="${people}" varStatus="c">
      ${c.count}:${i.name}  :  ${i.age } <br>   
   </c:forEach> --%>
   
  <%--  <c:forEach var="i" begin="1" end="${size}" varStatus="c">
       
      ${c.count }:${people[i-1].name} :${people[i-1].age} <br>     
   </c:forEach>
   
   <br><br>
   
   <c:forEach var="i" begin="1" end="${size}" varStatus="c">
      ${c.count }:${people[size-i].name} :${people[size-i].age} <br>     
   </c:forEach> --%>
   
   
   
</body>
</html>









