<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<%
   Cookie cook=new Cookie("img","Java.jpg");
   cook.setMaxAge(30);
   response.addCookie(cook);
%>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){    	 
    	 self.close();
     });
</script>
</head>
<body>

</body>
</html>






