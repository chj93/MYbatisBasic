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
    	 $("input#ck").click(function(){
    		  document.location.href='cookmake.jsp';  
    		  //self.close();
    	 });    	
     });
</script>
</head>
<body>
<img src="/web/reImage/CS1.jpg" alt="이미지1" width="100%" height="100%"/>
<span>오늘하루 이창을..<input type="checkbox" name="ck" id="ck">
</span>

</body>
</html>






