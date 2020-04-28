<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	b{
	color:#fff;
	background:chocolate;
	margin-right:10px;
	}
</style>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	$("button").click(function(){
    		if(this.id=='d1'){
    		$.ajax({
    			url:'/web/JQuery/ajaxData/data1.jsp',
    			type:'GET',
    			dataType:'text',
    			data:{state:this.id,job:'mod'},
    			success:function(v){
    				$("div").eq(0).html("<b>"+v+"<b>").fadeOut(1000).fadeIn(1000);
    			}
    		});//ajax
    	   }//if
    	   else if(this.id=='d2'){
    		$.ajax({
    			url:'/web/JQuery/ajaxData/data1.jsp',
    			type:'GET',
    			dataType:'text',
    			data:{state:this.id,job:'del'},
    			success:function(v){
    				$("div").eq(1).html("<u>"+v+"<u>").fadeOut(1000).fadeIn(1000);
    			}
    		});//ajax
    	   }//if
    	   else if(this.id=='d3'){
       		$.ajax({
    			url:'/web/JQuery/ajaxData/clock.js',
    			type:'GET',
    			dataType:'script',
    			data:{state:this.id,job:'del'},
    			success:function(v){
    				console.log(v);
    				clockFun();
    			}
    		});
    	   }
    	   
    	});//click
     });//readyfun
</script>
</head>
<body>
  <button id="d1">Data1</button>
  <button id="d2">Data2</button>  
  <button id="d3">Data3</button>
  <button id="d3">Data4</button>
  <br>
  <div></div>
  <div></div>
  <span id="sp"></span>
</body>
</html>






