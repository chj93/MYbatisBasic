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
    	 /*  $(document).keydown(function(e){
    		 $("div").append("<font size=3 color=red>KeyDown["+e.keyCode+"]</font><br><font size=5 color='blue'>KeyDown["+String.fromCharCode(e.keyCode)+"]</font>");
    	 }); */    	
    	/*  $(document).keyup(function(e){
    		 $("div").append("<font size=3 color=red>KeyUp["+e.keyCode+"]</font><br><font size=5 color='blue'>KeyUp["+String.fromCharCode(e.keyCode)+"]</font>");
    	 }); */   
    	 $(document).keypress(function(e){
    		 //console.log(e.keyCode);
    		 if(e.keyCode==97){
    			 $("img").animate({"marginLeft":"-=50px"},0);
    		 }
    		 if(e.keyCode==98){
    			 $("img").animate({"marginLeft":"+=50px"},0);
    		 }
    		 if(e.keyCode==99){
    			 $("img").animate({"marginTop":"-=50px"},0);
    		 }
    		 if(e.keyCode==100){
    			 $("img").animate({"marginTop":"+=50px"},0);
    		 }
    	 });
     });
</script>
</head>
<body>
  <!-- <div></div> -->
  <img alt="" src="/web/imgDemo/1.jpg" width="50" height="50">
  
</body>
</html>






