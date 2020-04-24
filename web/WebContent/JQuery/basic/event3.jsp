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
    		$(this).hide(500).show(500);
    	});
    	
    	$("li").click(function(){
    		//alert($(this).text());
    		$("div#textDiv").show(500);
    		
    		$("textarea").keyup(function(e){
    			var textLengCk =$(this).val().length;
    			
    			$("span#sp").html("글자 수 : "+textLengCk+"<br>30자로 제한되어 있습니다.");
    			if(textLengCk >= 30){
    				alert("범위를 초과 하였습니다.");
    				$("span#sp").css("color","red");
    			}
    		
    		});
    	});

     });
</script>
</head>
<body>
<div class="container">
  <h2>Dropdown</h2>
  <p>The .dropdown class is used to indicate a dropdown menu.</p>
  <p>Use the .dropdown-menu class to actually build the dropdown menu.</p>
  <p>To open the dropdown menu, use a button or a link with a class of .dropdown-toggle and data-toggle="dropdown".</p>                                          
  <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">HTML</a></li>
      <li><a href="#">CSS</a></li>
      <li><a href="#">JavaScript</a></li>
    </ul>
  </div>
  
	<br>
	<div id="textDiv">   
		<span id="sp">글자 수 : 0<br>30자로 제한되어 있습니다.</span>
	   <textarea rows="10" cols="100"></textarea>
	</div>
</div>
</body>
</html>






