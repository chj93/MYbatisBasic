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
    	//alert('Test');
    	/* $(document).ready(function(){
    		alert('Ready1');
    		alert('Ready1');
    		alert('Ready1');
    		alert('Ready1');
    	});
    	$(document).ready(function(){
    		alert('Ready2');
    		alert('Ready2');
    		alert('Ready2');
    		alert('Ready2');
    	});
    	$(document).ready(function(){
    		alert('Ready3');
    		alert('Ready3');
    		alert('Ready3');
    		alert('Ready3');
    	}); */
    	
    	//$("h1,h2,h3").css('color','red');
    	 //$("*").css('color','red');
    	 $("h1").each(function(index,dom){
    		 switch(index){
    		 case 0:
    			 $(this).css('color','orange').fadeOut(10000);
    			 break;
    		 case 1:
    			 $(this).css('color','blue').fadeOut(10000);
    			 break;	     			 
    		 }
    	 });
    	 $("p").slideUp(1000).slideDown(1000).css('color','orange');
    	 $("h3#hid").hide(10000);
     });
</script>
</head>
<body>
   <h1>JavaApp</h1>
   <h2>SpringApp</h2>
   <p>XmlApp</p>
   
   <h1>JQueryTest</h1>
   <h2>JQueryTest</h2>
   <h3 id="hid">JQueryTest</h3>
   <p>JSonApp</p>
</body>
</html>








