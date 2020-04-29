<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Accordion - Default functionality</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  function getXmlRacers(){
	  $.ajax({
		  url:'/web/JQuery/ajaxData/run.xml',
		  dataType:'xml',
		  type:'GET',
		  success:function(v){
			  //console.log(v.id);
			  
			  var info="<thead><tr><th>이름</th><th>성별</th><th>기록</th></tr></thead><tbody><tr>";
			  var runner=$(v).find("runner").each;
			  
			  $(v).find("runner").each(function(){
				 info+="<td>"+$(this).find("lname").text()+$(this).find("fname").text()+"</td>";
				 info+="<td>"+$(this).find("gender").text()+"</td>";
				 info+="<td>"+$(this).find("time").text()+"</td>";
				 info+="</tr></tbody>";
			  });
			  
			  if($(this).find("gender").text()=='m'){
				 $("table#Man").append(info);
				 
			  }else if($(this).find("gender").text()=='f'){
				 $("table#Female").append(info);
			  }
			  
			  $("table#All").append(info);
			  
			  
		  }, error:function(){
			  alert('오류!');
		  }
	  });
  }
  
  
  $( function() {
    $( "#accordion" ).accordion();

  });
  
  $(function() {
	$("h3").click(function(){
		//alert($(this).attr(id));
		getXmlRacers();
	});
  });
  
  
  
  </script>
</head>
<body>
 
<div id="accordion" style="width: 80%; height:auto;">
  <h3 id="All">Alldata</h3>
  <div style="height:auto;">
  	<ul id="All"></ul>
  	<table class="table" id="All">
    </table>
  	
  </div>
  
  <h3 id="Man">Man</h3>
  <div>
   	<table class="table" id="Man">
    </table>
  </div>
  
  <h3>Female</h3>
  <div id="Female">
    <table class="table" id="Female">
    </table>
  </div>
  
  <h3>Section 4</h3>
  <div>
    <p>
    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
    mauris vel est.
    </p>
    <p>
    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
    inceptos himenaeos.
    </p>
  </div>
</div>
 
 
</body>
</html>





