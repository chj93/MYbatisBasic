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
		//������= ����Ÿ��("input�� name")
				
		String dbPass=AppleDao.getPassword(no);
		
		if(dbPass!=null && cp.equals(dbPass.trim())){
		//��й�ȣ�� �������
		%>
		<script>
		alert("���� �����Ͻðڽ��ϱ�?");
		</script>
		<%
			AppleDao.deleteBBS(no);
			response.sendRedirect("list.jsp");
		}else{
		//��й�ȣ�� Ʋ�����
			response.sendRedirect("password.jsp?no="+no+"&job="+job+"&page="+pageData);
		}
	%>
</body>
</html>