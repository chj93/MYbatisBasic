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
		/* 
		$("input[type='button']").click(function(){
			$.ajax({
				url:'http://flickr.com/services/feeds/photos_public.gne?tags=boy&tagmode=any&format=json&jsoncallback=?',
				type:'GET',
				dataType:'json',
				success:function(v){
					$.each(v.items,function(index,dom){
						//console.log(v);
						console.log(dom.title);
						$("div").innerHTML="<h3>"+dom.title+"</h3>";
					}); 
				}
				,error:function(){
					alert('ERROR 발생');
				}
			});
		});
		 */
		//click

    	 $("input[type='button']").eq(0).click(function(){    		 
    		 $.getJSON('http://flickr.com/services/feeds/photos_public.gne?tags='+$("input[type='text']").val()+'&tagmode=any&format=json&jsoncallback=?',function(v){
    			 $.each(v.items,function(index,dom){
    				 //console.log(dom.title+' '+dom.media.m);
    				 $("div").append("<img src='"+dom.media.m+"' width=100 height=100>");
    			 });    			
    		 });
    	 }); 
		 
		 
		 
		//click
	});
	//function
	
</script>
</head>
<body>
	<!-- <input type="button" value="검색1" /> -->
	<input type="text" name="data" id="data"/>
	<input type="button" value="검색" />
	<div></div>
</body>
</html>