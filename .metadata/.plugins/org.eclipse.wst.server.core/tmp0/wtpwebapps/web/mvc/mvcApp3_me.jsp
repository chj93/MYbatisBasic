<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>



<script type="text/javascript">    
     $(function(){
    	$("input#id").focus(function(){
    		//$("div").html('');
    	});
    	
    	$("input[type='button']").click(function(){
    		if($("input#id").val().length==0||$("textarea#contents").val().length==0){
    			$("div").html("<h4>내용을 입력하세요.</h4>");
    			return false;
    		}else{
    			$.ajax({
    				url:'/web/ajaxResult.do?cmd=ajaxResult',
    				dataType:'text',
    				type:'POST',
    				data:$("form").serialize(),
    				//form에있는 모든 데이터 가져오는 방법
    				//data:{id:$("input#id").val(),contents:$("textarea#contents").val()}, 
    				success:function(v){
    					console.log(v);
    					$("form").trigger("reset");
    					//$("div#dvMain").append(v+"<br/>");
    					$(v).each(function(index,dom){
    						alert(dom.no+" "+dom.id);
    					});
    					
    				},error:function(){
    					alert('error');
    				}
    			});
    		}
    	});
     });
</script>
</head>
<body>
	<form action="" name="ajaxCrud">
		<input type="text" id="id" name="id"><input type="button" value="덧글"/><br />
		<textarea row="5" cols="30" id="contents" name="contents"></textarea>
	</form>
	<div id="dvMain">
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