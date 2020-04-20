<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="sist.com.model.StudentBean"%>
<%@page import="java.util.List"%>
<%@page import="sist.com.dao.AppleDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%-- <%=AppleDao.selectEmp() %> --%>
<%-- <%=AppleDao.selectStudent()  %> --%>
<%
   List<HashMap<String,Object>>list=AppleDao.selectStudent();
   HashMap<String,Object>map=list.get(0);
%>
<div class="container">
  <h2>Table</h2>
                                                              
  <table class="table">
    <thead>
      <tr>
          <%
             Iterator<String>it=map.keySet().iterator();
             while(it.hasNext()){
          %>
            <th><%=it.next()%></th>
          <%
             }
          %>
      </tr>
    </thead>
    <!-- <tbody>
      <tr class="info">
        <td>1</td>
        <td>Anna</td>
      </tr>
     <tr>
        <td>2</td>
        <td>Debbie</td>
      </tr>
      <tr>
        <td>3</td>
        <td>John</td>
      </tr>
    </tbody> -->
   </table>
</div>
</body>
</html>