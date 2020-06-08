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
	<!-- EL -->
   MSG:${param.msg}
   CNT:${param.cnt}
   <br>
   <!-- lt < gt > le<= ge>=  ne != eq == -->
  <%--  <c:if test="${(param.msg eq 'hi' or param.msg eq
             'hello') and param.cnt lt 50}">
   <c:redirect var="i" url="result2.jsp" scope="session">
      <c:param name="data" value="pythonFile.txt"></c:param>
   </c:redirect>
   </c:if> --%>
   <c:choose>
   <!-- JSPL -->
	   <!-- INPUT1.JSP에 입력한 값이 5~10사이일 경우 -->
	   <!--  lt < | gt > | le <= | ge >=  -->
      <c:when test="${param.cnt gt 5 and param.cnt lt 10 }">
           <c:redirect url="result2.jsp">
               <c:param name="data" value="pythonFile.txt"></c:param>
           </c:redirect>
      </c:when>
      <c:otherwise>
      	<!-- INPUT1.JSP에 입력한 값이 5~10사이가 아닐경우 -->
        <jsp:forward page="result3.jsp">
            <jsp:param  name="data" value="javaFile.txt"/>
        </jsp:forward>
      </c:otherwise>
   </c:choose>
</body>
</html>













