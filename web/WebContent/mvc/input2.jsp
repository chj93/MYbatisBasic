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
  <form action="result4.jsp" method="post">
     <input type="checkbox" value="red" name="color">RED
     <input type="checkbox" value="blue" name="color">BLUE
     <input type="checkbox" value="yellow" name="color">YELLOW
     <input type="checkbox" value="cyan" name="color">CYAN
     <input type="checkbox" value="gray" name="color">GRAY
     <input type="submit"  value="Send">       
  </form>
</body>
</html>













