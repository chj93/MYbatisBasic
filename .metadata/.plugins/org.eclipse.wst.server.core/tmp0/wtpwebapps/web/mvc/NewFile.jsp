<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	$("input#id").focus(function(){
    		//$("div").html('');
    		alert('test');
    	});
    	
    	$("input#submitBt").click(function(){
    		if($("input#id").val().length==0||$("textarea#contents").val().length==0){
    			$("div#dvMain").html("<h4>내용을 입력하세요.</h4>");
    			return false;
    		}else{
    			$.ajax({
    				url:'/web/ajaxResult.do?cmd=ajaxResult',
    				dataType:'json',
    				type:'POST',
    				data:$("form").serialize(),
    				//form에있는 모든 데이터 가져오는 방법
    				//data:{id:$("input#id").val(),contents:$("textarea#contents").val()}, 
    				success:function(v){
    					console.log(v);
    					$("form").trigger("reset");
    					//$("div#dvMain").append(v+"<br/>");
    					$(v).each(function(index,dom){
    						//alert(dom.no+" "+dom.id);
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

<div class="container">
  <form action="" name="ajaxCrud">
    <div class="form-group">
      <label for="id">ID</label>
      <input type="text" class="form-control" id="id" name="id">
    </div>
	<div class="form-group">
      <label for="contents">Comment</label>
      <textarea class="form-control" rows="5" id="contents" name="contents"></textarea>
    </div>
    <button type="button" class="btn btn-primary" value="제출" id="submitBt">제출</button>
  </form>
</div>
<div id="dvMain"></div>
	
	
	
	
</body>
</html>