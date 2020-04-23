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
		$("img").click(function(){
			$("div#d1").click(function(){
				$(".yourClass").hide(500).fadeIn(500);
				
				$(".myClass").each(function(x,y){
					//x== .myClass 의 인덱스값
					//y== .myClass의 each 한 값의 주소 값
					//alert(x+" "+$(y).html());
					
					//$(this).html("<img src=\"/web/upload/15870175364473.jpg\" width=\"100\" height=\"100\"><br>");
					$(y).html("<img src=\"/web/upload/15870175364473.jpg\" width=\"100\" height=\"100\"><br>");	
					//console.log($(y).html);
					//console.log($(y).id);  XX
					console.log("인자를 이용한 ID = "+$(y).attr("id"));
					console.log("this를 이용한 ID = "+$(this).attr("id"));
					//console.log("this를 index "+$(this).attr("index"));
				});
			});
		});	
		
		$("div").each(function(index,dom){
			//alert($(this).id);
			//alert(this.id); 속성에 바로접근
			alert($(this).attr("id","AA"+index));
			//$(this) == div를 노드 리스트로 가져오는 것
			//this. == $("div").each 한 값
			 this.id="show"+index;
		});
		
	});
</script>
</head>
<body>
   <img alt="" src="/web/upload/15868453797264.jpg" width="100" height="100"><br>
   <div class="myClass" id="d1">MY div 1</div>
   <span class="myClass">MY span 1</span>   
   <div class="myClass">MY div 2</div>
   <span class="yourClass" id="d2">YOU span 1</span>   
   <div class="myClass">MY div 3</div>
   <span class="yourClass">YOU span 2</span>
   <div class="myClass">MY div 4</div>
   <span class="myClass">MY span 2</span>
   <div class="myClass">YOU div 1</div>
</body>
</html>






