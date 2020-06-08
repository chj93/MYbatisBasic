<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	 $("div#textDiv").hide();
    	$("p").click(function(){
    		$(this).hide(1000).show(1000);
    	});
    	$("li").click(function(){
    		if($(this).text()=='REPLY'){
    			$("div#textDiv").show(1000).slideUp(1000).slideDown(1000);
    			$("textarea").keyup(function(e){
    				var len=$(this).val().length;
    				if(len>10){
    					$("span#sp").html("<font size=5 color=red>-"+(len-10)+"</font>");
    				}else{
    				$("span#sp").html(len);
    				}
    			});
    			
    		}//REPLY IF
    		else if($(this).text()=='CSS'){
    			$("div#textDiv").html("<button>REPLY</button><button>CSS</button><button>JAVASCRIPT</button>");
    		}
    	});
    	
     });
</script>
</head>
<body>
<div class="container">
  <h2>Dropdowns</h2>
  <p>The .dropdown class is used to indicate a dropdown menu.</p>
  <p>Use the .dropdown-menu class to actually build the dropdown menu.</p>
  <p>To open the dropdown menu, use a button or a link with a class of .dropdown-toggle and data-toggle="dropdown".</p>                                          
  <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">REPLY</a></li>
      <li><a href="#">CSS</a></li>
      <li><a href="#">JavaScript</a></li>
    </ul>
    <span id="sp">0</span>
  </div>
  
<div id="textDiv">   
   <textarea rows="10" cols="100"></textarea>
</div>
</div>
</body>
</html>






