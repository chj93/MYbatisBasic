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
	
	});
</script>
<%
	String color="WHITE";
	Cookie [] cookie=request.getCookies();
	if(cookie!=null&&cookie.length>0){
		for(int i=0; i<cookie.length;i++){
			if(cookie[i].getName().trim().equalsIgnoreCase("color")){
				color=cookie[i].getValue();
			}
		}
	}
%>
</head>
<body bgcolor="<%=color%>">

</body>
</html>