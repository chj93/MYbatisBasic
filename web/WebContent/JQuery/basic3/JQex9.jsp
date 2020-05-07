<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
*{
	margin: 0 auto;
}
h2{
	text-align: center;
}
#container{
	/* display: inline-block; */
	margin: 30px auto;
	text-align: center;
}
button{
	width:80px; height:40px;
	border-radius:15px;
	background:firebrick;
	border:none;
	font-weight:bold;
	color:#fff;
}

.ball{
	width:50px; height: 50px;
	border-radius: 25px;
	background-color:lightsalmon;
	position: absolute;
	top: 150px; left: 100px;
	transition-duration: 0.5s;
}

.ball:hover{
	background-color:firebrick;
	transition-duration: 0.3s;
}

</style>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("button").click(function(){
   		 switch(this.id){
   		 case 'l':
   			 //css("left","-=10px");
   			 $(".ball").css({left:"-=15px"});
   			 break;
   		 case 'r':
   			$(".ball").css({left:"+=15px"});
   			 break;
   		 case 't':
   			$(".ball").css({top:"-=15px"});
   			 //action('top',"-=10px");
   			 break;
   		 case 'b':
   			$(".ball").css({top:"+=15px"});
   			 //action('top',"+=10px");
   			 break;
   		 }  
		});
		
		$(".ball").mouseenter(function(){
			$(".state").text("mouseenter");
		});
		$(".ball").mouseleave(function(){
			$(".state").text("mouseleave");
		});
		
		$(".ball").click(function(){
			$(this).css({left:"50%",top:"50%", marginLeft:"-25px"});
		});
		
	});
</script>
</head>
<body>
	<h2>JQuery Event</h2>
	<div id="container">
		<button id="l">Left</button>
		<button id="r">Right</button>
		<button id="t">Top</button>
		<button id="b">Bottom</button>
		<div class="ball"></div>
		<div class="state"></div>
	</div>
</body>
</html>