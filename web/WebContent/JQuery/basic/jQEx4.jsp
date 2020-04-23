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
    	/* $('h1.item').css('color','red');
    	$('h2.item').css('color','blue');
    	$(".item.select").css('border','2px solid blue'); */
    	
    	$("h1.item").each(function(index,dom){
    		alert($(this).html());
    	});
     });
</script>
</head>
<body>
   <h1 class="item">Header-0</h1>
   <h1 class="item select">Header-1</h1>
   <h1 class="item">Header-2</h1>
   <h2 class="item">Header-3</h2>
   <h1 class="item select">Header-4</h1>
   <h2 class="item">Header-5</h2>
   
</body>
</html>






