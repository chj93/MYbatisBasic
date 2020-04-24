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
    	 $(document).mousedown(function(e){
    		 console.log(e.which); 
    		 //1==왼쪽마우스, 2==휠, 3==오른쪽
    		 if(e.which==1){
    			 $("img").animate({width:"300px",height:"300px"},1000);
    		 }
    		 if(e.which==2){
    			 $("img").animate({width:"200px",height:"200px"},1000);
    		 }
    		 if(e.which==3){
    			 $("img").animate({
    				 $("img").css("transform",'rotate(360deg)');
    			 },4000);
    		 }
    		 
    	 });    	
     });
</script>
</head>
<body>
	<img alt="" src="../img/1.jpg" width="200" height="200"/>
</body>
</html>






