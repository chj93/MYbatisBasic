<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	body{
		margin: 0 auto;
	}
	
	div{
		width:200px; height: 200px;
		background:beige;
		margin-top:30px;
		background-size:contain;
		background-position:center;
		transition-duration: 0.5s;
		margin: 20px auto;
		
	}
	div#stop{
		background: #fff;
		border: 1px solid #000;
	}
	
	
	
</style>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	  $("button").eq(0).click(function(){
    		  //alert($(this).html());
    		  $("div").each(function(index,dom){
    			  $(dom).css("background",'brown');
    			  if($(this).is("#stop")){
    				  $("span").text("bye");
    				  return false;
    			  }
    		  });
    	  });
    	  //click
    	  
    	  $("button").eq(1).click(function(){
    		  $("div").each(function(index,dom){
    			  switch(index){
    				  case 0:
		    			  $(dom).css("background",'url(../img/1.jpg)');
		    			  $(dom).css("background-size",'cover');
		    			  break;
     				  case 1:
		    			  $(dom).css("background",'url(../img/2.jpg)');
		    			  $(dom).css("background-size",'cover');
		    			  break;
	    			  case 2:
		    			  	$(dom).css("background",'url(../img/3.jpg)');
		    			  	$(dom).css("background-size",'cover');
		    			  	break;
    				  case 3:
		    			  $(dom).css("background",'url(../img/4.jpg)');
		    			  $(dom).css("background-size",'cover');
		    			  break;
    				  case 4:
	    			  	$(dom).css("background",'url(../img/5.jpg)');
	    			  	$(dom).css("background-size",'cover');
	    			  	break;
    				  case 5:
	    			  	$(dom).css("background",'url(../img/6.jpg)');
	    			  	$(dom).css("background-size",'cover');
	    			  	break;
    				  case 6:
	    				$(dom).css("background",'url(../img/7.jpg)');
	    				$(dom).css("background-size",'cover');
	    				break;
    			  }
    		  });
    		  
    	  });
    	  
    	  
    	  $("div").mouseover(function(){
    		  $(this).css("transform",'scale(1.2)');
    		  $(this).css("transition-duration",'0.3s');
    		  
    	  });
    	  $("div").mouseleave(function(){
    		  $(this).css("transform",'scale(1)');
    	  });
    	  $("div").click(function(){
    		  alert("lang = "+this.lang);
    	  });
    	  
     });
</script>
</head>
<body>
	<button id="btn">ChangeColor</button>
	<button>MultiColor</button>
	<button>Clear</button>
	<div lang="0"></div>
	<div id="stop" lang="6">Stop Here</div>
	<div lang="1"></div>
	<div lang="1"></div>
	<div lang="2"></div>
	<div lang="3"></div>
	<div lang="4"></div>
	<span></span>
</body>
</html>






