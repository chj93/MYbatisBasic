<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Tabs - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  var divId="";
  function ajaxProcess(url){
	  $.ajax({
		 url:url,
		 dataType:'text',
		 success:function(data){
			//$(divId).html(data).slideUp(1000).slideDown(1000);
			 $(divId).html(data).fadeOut(1000).fadeIn(1000);
		 }
	  });
  }
  $( function() {
    $( "#tabs" ).tabs();
    $("a").click(function(){
    	//alert($(this).attr("href"));
    	divId=$(this).attr("href");
    	switch($(this).text()){
    	case "Java":
    		ajaxProcess('/web/jQuery/ajaxData/data1.jsp');
    		break;
    	case "Oracle":
    		ajaxProcess('/web/jQuery/ajaxData/data2.jsp');
    		break;
    	case "Jsp":
    		ajaxProcess('/web/jQuery/ajaxData/data3.jsp');
    		break;
    	}
    });
    
  } );
  </script>
</head>
<body>
 
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Java</a></li>
    <li><a href="#tabs-2">Oracle</a></li>
    <li><a href="#tabs-3">Jsp</a></li>
    <li><a href="#tabs-4">Ajax</a></li>
    <li><a href="#tabs-5">Spring</a></li>
  </ul>
  <div id="tabs-1">   
  </div>
  <div id="tabs-2">   
  </div>
  <div id="tabs-3">   
  </div>
</div>
 
 
</body>
</html>





