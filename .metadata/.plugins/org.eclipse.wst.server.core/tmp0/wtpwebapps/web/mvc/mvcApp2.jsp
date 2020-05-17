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
    	 $("input[type='button']").click(function(){
    	    $("form").submit();    		 
    	 });
     });
</script>
</head>
<body>
  <form action="/web/mvcInsert.do?cmd=mvcInsert" method="post">
     <input type="text" name="data">
     <input type="button" value="Send">
  </form>
</body>
</html>






