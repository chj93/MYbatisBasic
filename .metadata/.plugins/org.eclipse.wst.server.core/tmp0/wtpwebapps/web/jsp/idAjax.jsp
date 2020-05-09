<%@page import="sist.com.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- ${param.id} --%>
<%=MemberDao.memberIdCheck(request.getParameter("id"))
%>