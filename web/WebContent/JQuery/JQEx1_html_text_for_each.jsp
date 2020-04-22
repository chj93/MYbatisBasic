<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function(){
		//alert('hi');
	});
	
	//jQuery == $
	$(document).ready(function(){
		//alert('JQuery');
	});
	
	//(document).ready 생략가능
	$(function(){
		//alert('^^');
	});



	$(function(){
		$("h4").mouseenter(function(){
			$(this).addClass("show");
		});
		$("h4").mouseleave(function(){
			$(this).removeClass("show");
		});
		
		$("div#d1").click(function(){
			$(this).hide(1000);
		}); 
	});
	
	$(function(){
    	$("button").click(function(){
    		//alert(document.getElementsByTagName("div").length);
    		//alert($("div").length);
    		for(var i=0;i<$("div").length;i++){
    			//방법1
    			//alert($($("div")[i]).html());
    			//방법2
    			alert($("div").eq(i).html());
    		}
   			$("div").eq(0).html("<b>hello</b>");
   			$("div").eq(1).text("<b>hi</b>");
   			$("div").eq(2).html("<b>안녕</b>");
   			$("div").eq(3).text("<b>ㅡㅅㅡ</b>");
    		//.html()로 넣은 값 = html화 시킨 text .text()로 넣은 값 = html 태그를 쓰더라도 text 그대로
    	});
    	
    	for(var i=0;i<$("div.ex").length;i++){
    		//$(".ex").eq(i).fadeOut(2000);
    		
    	}
    	
   		$(".ex").each(function(index,dom){
   		//".ex"의 노드 리스트를 .each == 각각 실행하게 해주는 예약어 
  			//alert(index+" "+$(dom).html()+" "+$(this).html());
      		switch(index){
      		case 0:
      			alert(this.id+" "+$(this).attr("id"));
      			break;
      		case 1:
      			$(this).html("ExEx2");
      			break;
      		case 2:
      			$(this).html("ExEx3");
      			break;
      			
      		}
  		}); 
    	
	});
	
	
	
</script>
<style type="text/css">
	.show{
		background:chocolate;
		color:#fff;
		transition-duration: 0.3s;
	}
	h4{
	
	}
	
</style>
</head>
<body>
	<article>
		<h4 id="d1">h4-1</h4>
		<h4 id="d2">h4-2</h4>
		<h4 id="d3">h4-3</h4>
		<h4 id="d4">h4-4</h4>
	</article>
	
	<button>Click</button>
	<div id="d1">div1</div>
	<div id="d2">div2</div>
	<div id="d3">div3</div>
	<div id="d4">div4</div>

	<div class="ex" id="ex1">ex1</div>
	<div class="ex">ex2</div>
	<div class="ex">ex3</div>
	<div class="ex">ex4</div>

</body>
</html>