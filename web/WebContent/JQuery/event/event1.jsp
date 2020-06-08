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
    	 $("#main").hide();
    	 $("img#img1").hover(function(){
    		 $("#main").fadeIn(1000);
    	 },function(){
    		 $("#main").fadeOut(1000);
    	 });
    	/*  $(document).mousedown(function(e){
    		 if(e.which==1){
    			 $("img").animate({width:"+5000px",height:"+5000px"},1000);
    		 }else if(e.which==2){
    			 $("img").animate({width:"+100px",height:"+100px"},1000);
    		 }else if(e.which==3){ 
    			 $("img").attr("src",'/web/imgDemo/2.jpg');
    		 }
    	 });    	 */
     });
</script>
</head>
<body>
  <img alt="" id="img1" src="/web/imgDemo/1.jpg" width="50" height="50">
  <img alt="" id="img2" src="/web/imgDemo/2.jpg" width="50" height="50">
  <div>
  <img  src="/web/imgDemo/3.jpg" width="500" height="500" id="main">
  </div>

</body>
</html>






