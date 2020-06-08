<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
   
  <h1>View1</h1><br>
  
  <%--   <c:url var="u1" value="view2.jsp"></c:url>
     <c:forEach  var="i" begin="1" end="10" step="2" varStatus="n">
       <c:choose>
          <c:when test="${i eq 1 }">
          <h1>
          <c:out value="${i}"></c:out><br>
          </h1>
          </c:when>
          <c:when test="${(i eq 2) or (i eq 3) }">
          <h3>
          <c:out value="${i}"></c:out><br>
          </h3>
          </c:when>
          <c:otherwise>
          <h5>
          <a href="${u1}">
          <c:out value="${i}"></c:out><br>
          </a>
          </h5>
          </c:otherwise>       
       </c:choose>
             
     </c:forEach> 
 --%>
 <table border="1" width="80%" align="center" cellpadding="0" cellspacing="0" >
    <tr>
       <td colspan="9">
        <c:import url="guHead.jsp"></c:import>
       </td>
    </tr>
    <tr>
    <c:forEach var="i" begin="2" end="9" step="1">
       <th>${i}단</th>
    </c:forEach>
    <tr>
     <c:forEach var="k" begin="1" end="9">
    <tr>
        <c:forEach var="j" begin="2" end="9">
           <td>
                                 
           ${j}*${k}=${k*j}
           </td>
        </c:forEach>
    </tr>
    </c:forEach>
 </table>
 </body>
</html>










