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
  h1{
  font-weight:bold;
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
  
  .select{
  	background: brown;
  	font-weight:bold;
  	color:#fff;
  	/* font-size:20px; */
  }
</style>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	$("ul#totalData li").bind("click",function(){
    		//경우1
    		//alert($(this).html());
    		//$(this).unbind("click");
    		//ul#totalData li을 클릭했을 경우 묶어주고 새창으로 this의 html 내용 나오게 -> 언바인드로 묶어준거 해제 하므로 알림창은 한번만.
    		
    		//경우 2
    		//$(this).toggleClass("select");
    		
    		/*경우 3
    		$(".css").on("click",function(){
    			//$(this).addClass("select");
    			aleft($(this).html());
    			$(this).off("click");
    		});
    		 */
    		 
/*     		 //4
    		 $("li").one("click",function(){
    			 alert($(this).html());
    		 });
    		  */
    		  
    		 $(".html").on("click",function(){
    			 $(this).toggleClass("select");
    		 });
    		 $(".css").on("click",function(){
    			 $(".html").trigger("click");
    		 });
    		
    	});
     });
</script>
</head>
<body>
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
      <p id="access2">Access2</p>
      <p id="access3">Access3</p>
   </div>
</body>
</html>






