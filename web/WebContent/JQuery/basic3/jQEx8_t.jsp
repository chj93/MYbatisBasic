<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
     var m1=['양명모','이혜진','최서현','최혜진','박인찬'];
     var m2=['승원','슬기','지혜','재훈','춘수'];
     
     function makeCheckBox(array){
    	 $.each(array,function(index,dom){
				$("div#show").append("<input type='checkbox' value='"+dom+"'>"+dom);
			});
     }
     $(function(){
    	 $("input[type='checkbox']").click(function(){
    		//$("div#state").text(this.checked?this.value+"선택":this.value+"해제");
    		/* if($(this).val()=='축구'){
    			//$("div#show").html("<input type='checkbox'>양명모");
    			$.each(m,function(index,dom){
    				alert(index+" "+dom);
    			});
    		} */
    		switch ($(this).val()) {
			case '축구':	
				makeCheckBox(m1);
				break;
			case '농구':			
				makeCheckBox(m2);
				break;
			default:
				break;
			}
    	 }); 
    	 $("button").click(function(){
    		 var id=this.id;
    		 if(id=='btn1'||id=='btn2'){
    			$("input[name='hobby']").each(function(index,dom){    				
    				$(this).attr("checked",id=='btn1');    				    				
    			});     		 
    		 }else{
    			 $("div#state").empty();
    			 var cnt=$("input[name='hobby']:checked").length;
    			 $("input[name='hobby']:checked").each(function(index){
    				$("div#state").append($(this).val()+ ((cnt-1)!=index?",":"")); 
    			 });
    		 }
    	 });
    	 
     });
</script>
</head>
<body>
  <button id="btn1">전체선택</button>
  <button id="btn2">전체해제</button>
  <button id="btn3">선택값확인</button>
  <br><br>  
  <div id="dv1">
     <input type="checkbox" name="hobby" value="축구">축구
     <input type="checkbox" name="hobby" value="농구">농구
     <input type="checkbox" name="hobby" value="배구">배구
     <input type="checkbox" name="hobby" value="야구">야구
     <input type="checkbox" name="hobby" value="족구">족구
  </div>
  <div id="show"></div>
  <div id="state">
  </div>

</body>
</html>






