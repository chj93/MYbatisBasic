<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JQueryNode Access</title>
<style>
	body{
		margin: 0 auto;
		padding: 10px 20px;
		line-height:35px;
		background: beige;
	}
	
	ul,li{
    	margin: 0;
    	padding: 0;
    	list-style: none;
    	line-height:20px;
  	}
  	
    li{
    	/* margin-top: 20px; */
    	margin-left:15px;
    }
    .title{
/* 	    margin: 0;
	    padding: 0;
	    font-size: 1.5em;
	    font-weight: 300; */
    }
			
</style>

<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".container").children("p").css({"background-color":"white", "font-weight":"bold"});
		//클래스 container의 자식 p 태그의 css 속성 변환
		$(".container").find(".html").fadeOut(1000).fadeIn(1000);
		$(".css").next().css({"background-color":"#555"});
		$(".javascript").nextAll().css({"background-color":"brown"});
		//$(".html").parent.css({"background-color":"#111"});
		$(".html").parents.css({"background-color":"#111"});
		$(".jquery").prev().css({});
		$(".jquery").prevAll().css({});
		$(".jquery").siblings().css({});
    	//$(".container li:first").css({"background-color":"gray"});
   		//$(".container li:first").last().text('no data').css({"background-color":"blue"}); */
   	 	$(".container li").each(function(index,dom){
    		 console.log(index+" :"+$(dom).html());
    	 });
   		$(".container ul").has(".html").css({"background-color":"red"});
   	 	$(".container li").not(".html").css({"background-color":"blue"});
   	 	$(".container li:not('.html')").css({"background-color":"blue"});
   	 	if($(".container ul").is("#totalData"))
   	 	$(".container").css({"background-color":"blue"});
	});
</script>
</head>
<body>
	<h1 class="title">Basic : JQueryNode Access</h1>
	<div class="container">
		<ul id="total">
			<li class="html">html</li>
			<li class="css">css</li>
			<li class="css3">css3</li>
			<li class="javascript">javascript</li>
			<li class="jquery">jquery</li>
			<li class="blank">blank</li>		
		</ul>
		<p id="access">Accesss 1</p>
		<span>span teg1</span>
		<span>span teg2</span>
		<p id="access">Accesss 2</p>
	</div>
</body>
</html>