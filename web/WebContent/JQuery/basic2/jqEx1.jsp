<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
<!-- [][][]-->
     $(function(){ 
    	 
    	 /*  $("div").html(function(index,dom){
    		 return 'Test'+dom;
    	 });  */
    	 //$("div").eq(0).html("<b>Test</b>");
    	 //alert($("div").eq(0).attr("id","HA"));
    	 //alert($("body").html());
    	 $("div").attr("id",function(i){
    		 return "div-id-"+i;
    	 }).each(function(index,dom){
    		 //alert(dom.id);
    		 //alert($(dom).attr("id"));
    		 //alert($(this).attr("id"));
    		 //alert(this.id);
    		 //$("span",this).html("ID=<B>"+this.id+"</B>")
    		 $("span",this).html(function(){
    			return "ID=<B>"+dom.id+"</B>";
    		 });
    	 }); 
    	/*  $($("div")[0]).attr("id","AFKN");
    	 
    	 alert($("div").eq(0).attr("id")); */
    	 //alert($("body").html());
    	 $("#div-id-0").click(function(){
    		$(this).html("<img src='/web/reImage/1.jpg' width=100 height=100>");
    	 });
    	 $("#div-id-1").click(function(){
    		$(this).html("<img src='/web/reImage/2.jpg' width=100 height=100>"); 
    	 });
    	 $("#div-id-2").click(function(){
    		$(this).html("<img src='/web/reImage/3.jpg' width=100 height=100>"); 
    	 });
     });
</script>
</head>
<body>
<div id="d1">ZERO-TH<span></span></div>
<div id="d2">FIRST<span></span></div>
<div id="d3">SECOND<span></span></div>
</body>
</html>






