<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	 
    	 $("#tHead").hide();
    	 $("input#id").focus(function(){
    		//$("div").text(''); 
    	 });
    	 $("#button").click(function(){
    		 
    		if($("input#id").val().length==0||$("textarea#contents").val().length==0){
    			$("#msg").html("<font color=red>내용을입력하세요.</font>");
    			return false;
    		}else{
    			$.ajax({
    				url:'/web/ajaxResult.do?cmd=ajaxResult',
    				dataType:'json',		
    				type:'POST',
    				//data:{id:$("input#id").val(),contents:$("textarea#contents").val()},
    				data:$("form").serialize(),
    				success:function(v){
    					//alert('test');
    					$("form").trigger("reset");
    				 	$("#tHead").show(500);
    				 	$("#tb tr").remove();
    					$(v).each(function(index,dom){
    					//alert(dom.no+' '+dom.i);
    						$("#tb").append("<tr><td>"+dom.no+"</td><td>"+dom.i+"</td><td>"+dom.contents+"</td><td>"+dom.regdate+"</td><td><button type=\"button\" class=\"btn btn-primary\">Mod</button></td><td><button type=\"button\" class=\"btn btn-primary\">DEL</button></td> </tr>");
    				});	
    					$("#tb").fadeIn(1000);
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
   <!-- <form action="" name="ajaxCrud">
       <input type="text" id="id" name="id"><input type="button" value="덧글"><br>
       <textarea rows="5" cols="30" id="contents" name="contents"></textarea>
   </form>   
   <div id="dvMain">List</div> -->
   
   <!--  -->
   
   <div class="container">
  <h2>Reply Form</h2>
  <form class="form-inline" name="ajaxCrud">
    <div class="form-group">
      <label for="id">ID:</label>
      <input type="text" class="form-control" id="id" placeholder="Enter id" name="id">
    </div>   
    <button type="button" id="button" class="btn btn-default">등록</button><br>
    <div class="form-group">      
      <textarea rows="5" cols="100" id="contents" name="contents"></textarea>
    </div> 
  </form>
  <div id="msg"></div>
<table class="table" style="width: 60%;">
    <thead id="tHead">
      <tr>
        <th>NO</th>
        <th>ID</th>
        <th>CONTENTS</th>
        <th>REGDATE</th>        
        <th>STATE</th>        
      </tr>
    </thead>
    <tbody id="tb">      
    </tbody>
</table>   
</div>
   
</body>
</html>













