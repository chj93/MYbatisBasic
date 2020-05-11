<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	 
    	$(".container").hide();
    	$("button#btn1").click(function(){
    		$.ajax({
    			url:'/web/emp.do?cmd=empList',
    			dataType:'json',
    			type:'POST',
    			data:{no:5,job:'java'},
    			success:function(v){
    				console.log(v);
    			},error:function(){
    				alert('error');
    			}
    		});
    		
    	});
    	//#btn1
    	$("button").eq(1).click(function(){
    		$.ajax({
    			url:'/web/chart.do?cmd=chart',
    			dataType:'xml',
    			type:'GET',
    			success:function(v){
    				console.log(v);	
    			}
    		});
    	});
    	$("button").eq(2).click(function(){
    		$.ajax({
    			url:'/web/member.do?cmd=member',
    			dataType:'json',
    			type:'GET',
    			success:function(v){
    				//console.log(v);
    				//방법1
    				$(v).each(function(index,dom){
    					console.log(index+" "+dom['id']+" "+dom.id+' '+dom['name']+" "+dom.name);
    					$("div#con").append("ID : "+dom['id']+" NAME : "+dom['name']);
    				});
    				//방법2
/*     				$.each(v,function(index,dom){
    					alert(index+" "+dom['id']+" "+dom.id+' '+dom['name']+" "+dom.name);
    				});
*/
    			}
    		});
    		$(".container").show();
    	});
    	
     });
</script>
</head>
<body>
   <button id="btn1">Click1</button>
   <button id="btn2">Click2</button>
   <button id="btn3">Click3</button>
   <button id="btn4">Click4</button>
   <div id="con">
   </div>
   
   <div class="container">
  <h2>Hover Rows</h2>
  <p>The .table-hover class enables a hover state on table rows:</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>






