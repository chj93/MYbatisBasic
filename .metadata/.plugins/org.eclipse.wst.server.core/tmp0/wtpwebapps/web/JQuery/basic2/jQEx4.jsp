<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	$(".question").css('cursor','pointer'); 
    	$(".answer").hide();
    	$(".question").each(function(index){
    		$(this).click(function(){
    			$(".answer").eq(index).show(1000);
    		});
    		$(this).dblclick(function(){
    			$(".answer").eq(index).fadeOut(1000);
    		});
    	});
     });
</script>
</head>
<body>
<div class="container">
  <h2>Hover Rows</h2>
  <p>The .table-hover class enables a hover state on table rows:</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>NO</th>
        <th>QUESTION ANSWER</th>
        <th>STATE</th>
      </tr>
    </thead>
    <tbody>
      <tr class="question">
           <td>1</td>   
           <td>QUESTION1[명모가 좋아하는 음식은?]</td>   
           <td>GOOD</td>   
      </tr>
      <tr class="answer">
           <td>2</td>   
           <td>ANSWER1[칼국수]</td>   
           <td>GOOD</td>   
      </tr>
      <tr class="question">
           <td>3</td>   
           <td>QUESTION2[승원이 좋아하는 음식은?]</td>   
           <td>GOOD</td>   
      </tr>
      <tr class="answer">
           <td>4</td>   
           <td>ANSWER2[갈비]</td>   
           <td>GOOD</td>   
      </tr>
      <tr class="question">
           <td>4</td>   
           <td>QUESTION3[종원 첫사랑이름은?]</td>   
           <td>GOOD</td>   
      </tr>
      <tr class="answer">
           <td>5</td>   
           <td>ANSWER3[아이유]</td>   
           <td>GOOD</td>   
      </tr>
      
    </tbody>
  </table>
</div>
</body>
</html>






