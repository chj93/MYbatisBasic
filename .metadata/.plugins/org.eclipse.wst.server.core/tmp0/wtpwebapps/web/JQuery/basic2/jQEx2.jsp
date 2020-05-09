<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">    
     $(function(){
    	$("img").click(function(){
    		//alert(this.src);
    		//$(this).attr('src','/web/reImage/1.jpg');
    		$(this).attr({src:'/web/reImage/1.jpg',title:'1.jpg',width:500,height:500});
    	});
     });
</script>
</head>
<body>
    <img alt="" src="/web/reImage/1.jpg" width="100" height="100">
    <img alt="" src="/web/reImage/2.jpg" width="100" height="100">
    <img alt="" src="/web/reImage/3.jpg" width="100" height="100">
    <img alt="" src="/web/reImage/4.jpg" width="100" height="100">
</body>
</html>






