<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
Cookie []cookie=request.getCookies();
String img="";
if(cookie!=null && cookie.length>0){
	   for(int i=0;i<cookie.length;i++){
		   if(cookie[i].getName().trim().equalsIgnoreCase("img")){
			   img=cookie[i].getValue();
		   }
	   }
}
%>



<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
     $(function(){  
    	 if('<%=img%>'.length==0)
    		 window.open('cookie4_me_impPop.jsp','id','left=300,top=100,width=320,height=360');
     });
</script>

</head>
<body>

</body>
</html>






