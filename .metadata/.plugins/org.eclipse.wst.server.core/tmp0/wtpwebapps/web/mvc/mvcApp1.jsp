<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
   <a href="locationAction.do?cmd=locationAction">App1</a>
   <a href="./locationAction.do?cmd=locationAction">App2</a>
   <a href="../locationAction.do?cmd=locationAction&job=s">App3</a>
   <a href="/locationAction.do?cmd=locationAction">App4</a>
   <a href="/web/locationAction.do?cmd=locationAction">App5</a>
   <a href="<%=request.getContextPath() %>/locationAction.do?cmd=locationAction">App6</a>
   

</body>
</html>






