<%@page import="java.util.HashMap"%>
<%@page import="sist.com.dao.AppleDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
     <%
        AppleDao.deleteBBS(Integer.parseInt(request.getParameter("no")));
        HashMap<String,Object>map=new HashMap<String,Object>();
        map.put("num",request.getParameter("pnum"));
        map.put("job","del");
        
        out.println(map);
        AppleDao.updateReply(map);
        response.sendRedirect("list.jsp?page="+request.getParameter("page"));
     %>
</head>
<body>

</body>
</html>