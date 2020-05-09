<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
  body{
     margin: 20px;
     padding: 20px;
     line-height: 1;
     font-family: "휴먼매직체";
     font-size:  1em;
     background: #555;
     color: #000;     
  }
  ul,li{
     margin: 0;
     padding: 0;
     /* list-style: none; */
  }
  li{
    margin-top: 20px;
  }
  .title{
    margin: 0;
    padding: 0;
    font-size: 1.5em;
    font-weight: 300;
    
  }
</style>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	 $("button").eq(0).click(function(){
    	var string=$("p#access1").text(); 
    	$(".blank").text(string);    		 
    	 });
    	 $("button").eq(1).click(function(){
    		//$(".jquery").after("<li class='spring'>Spring</li>");
    		//$("<li class='spring'>Spring</li>").insertAfter(".jquery");
    		//$(".css3").before("<li class='spring'>Spring</li>");
    		//$("<li class='spring'>Spring</li>").insertBefore(".css3");
    	 });
    	 $("button").eq(2).click(function(){
    		 //$(".container li:first").empty();
    		 //$(".container li").empty();
    		 //$(".container li").remove();
    		/*  var j=$(".jquery").detach();    		 
    		 console.log(j); */
    		 
    		 var ptag=$("p").detach();
    		 console.log("ptag"+ptag);
    		 alert('Test');
    		 $("div.container").append(ptag);
    		 
    	 });
     });
</script>
</head>
<body>
<button id="btn1">Click1</button>
<button id="btn2">Click2</button>
<button id="btn3">Click3</button>
<button id="btn4">Click4</button>

<h1 class="title">Basic :JQueryNode Access</h1>
   <div class="container"> 
      <ul id="totalData">
         <li class="html">HTML</li>
         <li class="css">css</li>
         <li class=css3>css3</li>
         <li class="javascript">javascript</li>
         <li class="jquery">jquery</li>
         <li class="blank">blank</li>         
      </ul>
      <p id="access1">Access1</p>
      <p id="access2" class="blank">Access2</p>
      <p id="access3" class="blank">Access3</p>
   </div>
</body>
</html>






