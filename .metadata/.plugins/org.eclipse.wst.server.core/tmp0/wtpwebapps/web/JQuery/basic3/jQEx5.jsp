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
     /* font-family: "휴먼매직체"; */
     font-size:  1em;
     background: beige;
     color: #000;     
  }
  ul,li{
     margin: 0;
     padding: 0;
     list-style: none;
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
 	 var data=1;
     $(function(){
    	 $("#btn1").click(function(){
    		//$("#access1").html("xml");
    		//#access1의 html태그 안 내용을 바꿈
    		//$("#access1").text("xml");
    		
    		//$("#access1").append(" xml");
    		//#access1의 내용 다음에 추가로 +=xml
     		$("<li>json"+data+"</li>").appendTo("#access1");
    		$("#access2").prepend("<b>DATA-"+data+"</b>");
    		data=data+1; 

    	 });
    	 
    	 $("#btn2").click(function(){
    		 //$("div#dv p").eq(0).css({"background-color":"pink"});
    		 //$("div#dv p").has("span").css({"background-color":"pink"});
    		 //console.log($("#p1"));
    		 //console.log($("#p1").clone());
    		 //$("#p1").clone().appendTo("body");
    		 /* $("div#dv").wrap("<div class='hi'></div>");
    		 alert($("body").html()); */
    		//$("p").wrapAll("<div class='new'></div>");
    		$("p").wrap("<div class='new'></div>");
    		 console.log($("body").html());
    		 /* $("div.new").click(function(){
    			 alert($(this).html());
    		 }); */
    	 });
    	 
    	 $("button#btn3").click(function(){
    		 //$("#p1").wrap("<span class='spNew'></span>");
    		 //$("#p1").wrapAll("<span class='spNew'></span>");
    		 $("#p1").wrapInner("<span class='spNew'></span>");
    		 console.log($("body").html());
    	 });
    	 

     });
</script>
</head>
<body>
<button id="btn1">Click1</button>
<button id="btn2">Click2</button>
<button id="btn3">Click3</button>

<h1 class="title">Basic :JQueryNode Access5</h1>
   <div class="container"> 
      <ul id="total">
         <li class="html">HTML</li>
         <li class="css">css</li>
         <li class="css3">css3</li>
         <li class="javascript">javascript</li>
         <li class="jquery">jquery</li>
         <li class="blank">blank</li>         
      </ul>
      <p id="access1">append test</p>
      <p id="access2">Access2</p>
      <p id="access3">Access3</p>
   </div>
	
	<div id="dv">
		<p id="p1">딸기</p>
		<p id="p2">수박</p>
		<p>오이
			<span>ㅎㅇ</span>
		</p>
		<p>멜론</p>
		<p>낑깡
			<span>ㅎㅇ</span>
		</p>
	</div>
</body>
</html>






