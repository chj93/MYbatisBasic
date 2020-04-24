<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.bg_beige{
		background: beige;
	}
	.not_bg{
		background : none;
	}
	
  .height_light_0{background: #999;}
  .height_light_1{background: #888;}
  .height_light_2{background: #777;}
  .height_light_3{background: #666;}
  .height_light_4{background: #444;}
  .height_light_5{background: #222;}
  
</style>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	 var array1=[10,20,30,40];
    	 /* for(var i=0;i<array1.length;i++){
    		 alert(array1[i]);
    	 } */
    	 /* for(var i in array1){
    		 alert(i+":"+array1[i]);
    	 } */

    	 $.each(array1,function(index,dom){
    		 console.log("Test 1 |"+index+" : "+dom);
    	 });
    	 
    	 var array2=[
    		 {name:'naver',link:'https://www.navar.com',hit:100},
    		 {name:'daum',link:'https://www.daum.com',hit:50},
    		 {name:'google',link:'https://www.google.com/',hit:70},
    		 {name:'youtube',link:'http://www.youtube.com',hit:10}
    	 ];
    	 
    	 console.log(array2);
    	 
    	 var output='';
    	 $.each(array2,function(index,dom){
    		 //array2배열 속 데이터에 각각 function=기능을 수행하도록
    		 //dom==json의 주소
    		 console.log("NAME="+dom['name']+", LINK="+dom['link']);
    		 //alert(dom[index-1]);
    		 output+="<a href='"+dom['link']+"'><h3>"+dom['name']+"</h3></a>";
    	 });
    	 //$("body").html(output);

/*     	 $array2(function(){
    		 console.log(array2);
    	 }); */
    	 
    	 $("h4").click(function(){
    		//$(this).addClass('bg_beige');
    		//$(this)== click한 h1
	   		 $("h4").dblclick(function(){
			//	 $(this).addClass('not_bg');
			 });
    	 });
    	 
    	 $("h4").each(function(index,dom){
    		 //$(dom).addClass('height_light_'+index).fadeOut(1000).fadeIn(1000);
    	 });
    	 
    	 $("input").click(function(){
    		 //alert(this.value+' '+$(this).val());
    		 //this.value==$(this).val() 같은 값
    		//$(this).val($(this).val()+" Click");
    	 	if($(this).val()=='Click1'){
    	 		//$("h1").eq(0).addClass('height_light_0');
    	 		//eq(0) == 0번쨰에만 넣어주기
    	 		$("h4").addClass(function(index){
    	 			//alert(index);
    	 			return index%2==0?'bg_beige':'bg_none';
    	 		});
    	 	}
    	 	if($(this).val()=='Click2'){
    	 		$("h4").html(function(ind){
    	 			return "<img src='/web/JQuery/img/"+(ind+1)+".jpg' width='100' height='100' />";
    	 	});
    	 		
    	 	$("img").click(function(){
    	 		alert(this.src);
    	 		this.innerHTML="<p>hi</p>";
    	 	});

    	 	}
    	 
    	 });
    	 
     });
     
     
</script>
</head>
<body>
	<input type="button" value="Click1">
	<input type="button" value="Click2">
	<h4>Item-1</h4>
	<h4>Item-2</h4>
	<h4>Item-3</h4>
	<h4>Item-4</h4>
	<h4>Item-5</h4>
</body>
</html>






