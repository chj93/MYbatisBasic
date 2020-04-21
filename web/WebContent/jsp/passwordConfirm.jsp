<%@page import="sist.com.dao.AppleDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int no=Integer.parseInt(request.getParameter("no"));
		String job=request.getParameter("job");
		String pageData=request.getParameter("page");
		String cp=request.getParameter("cp");
		//변수명= 변수타입("input의 name")
				
		String dbPass=AppleDao.getPassword(no);
		
		if(dbPass!=null && cp.equals(dbPass.trim())){
		//비밀번호가 맞을경우
			if(job.equals("del")){
			%>
			<script>
			alert("정말 삭제하시겠습니까?");
			</script>
			<%
			AppleDao.deleteBBS(no);
			response.sendRedirect("list.jsp");
			
			}else if(job.equals("modify")){
				response.sendRedirect("edit.jsp?mode=modify&no="+no+"&page="+pageData);
			}
		}else{
		//비밀번호가 틀릴경우
			response.sendRedirect("password.jsp?no="+no+"&job="+job+"&page="+pageData);
		}
	%>
</body>
</html>