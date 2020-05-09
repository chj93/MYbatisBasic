<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
<%
	String ck="";
	Cookie[] coo=request.getCookies();
	if(coo !=null && coo.length>0){
		for (int i = 0; i < coo.length; i++) {
			if (coo[i].getName().equals("ck")) {
				ck = coo[i].getValue();
			}
		}
	}
	if(ck.equals("")){
%>
	$(function(){
		window.open('cookie4_me_impPop.jsp','id','left=300,top=100,width=320,height=360');
	});
	
<%}%>

</script>
</head>
<body>
<%=ck %>
</body>
</html>