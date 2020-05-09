<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	body{
	margin: auto;
	width:2850px; height: 2850px;
	}
	img{
	margin: 100px;
	}
</style>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript" charset="UTF-8">    


     $(function(){
/*     	 
    	//대소문자 구분 X, 방향키 구분 X
    	//키를 누를 떄 
    	 $(document).keydown(function(e){
    		 $("div").append("<font size=3 color=red>KeyDown["+e.keyCode+"]</font><br><font size=5 color='blue'>"
    				 +String.fromCharCode(e.keyCode)+"</font><br>"); 
    	 });
    	//키를 눌렀다 뗄 때
    	 $(document).keyup(function(e){
    		//$("div").append("<font size=3 color=orenge>KeyDown["+e.keyCode+"]</font><br>"); 
    	 });
*/
    	
    	 //대소문자 구분 O, 방향키 구분 X
    	 $(document).keypress(function(e){
    		console.log("코드값 = "+e.keyCode+" 코드값을 문자로 출력 = "+String.fromCharCode(e.keyCode));
    		
    		if(String.fromCharCode(e.keyCode).trim()=="a"){
	    		$("img").animate({"marginLeft":"-=50px"},100);
    			
    		}
    		if(String.fromCharCode(e.keyCode).trim()=="w"){
	    		$("img").animate({"marginTop":"-=50px"},100);
    		}
    		if(String.fromCharCode(e.keyCode).trim()=="d"){
	    		$("img").animate({"marginLeft":"+=50px"},100);
    		}
    		if(String.fromCharCode(e.keyCode).trim()=="s"){
	    		$("img").animate({"marginTop":"+=50px"},100);
    		}
    		
    		
    	 });
    	 
     });
</script>
</head>
<body>
	<img alt="" src="../img/1.jpg" width="100" height="100" />

</body>
</html>






